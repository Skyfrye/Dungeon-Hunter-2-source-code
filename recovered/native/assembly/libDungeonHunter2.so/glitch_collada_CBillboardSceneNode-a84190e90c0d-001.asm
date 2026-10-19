; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0060cb24, declared_size=140, range_size=140, mode=arm
; class-group: glitch::collada::CBillboardSceneNode
; alias: _ZNK6glitch7collada19CBillboardSceneNode25getTransformedBoundingBoxEv
; demangled: glitch::collada::CBillboardSceneNode::getTransformedBoundingBox() const
; decoder-mode: arm
0060cb24  70 40 2d e9                                      push {r4, r5, r6, lr}
0060cb28  1c 31 90 e5                                      ldr r3, [r0, #0x11c]
0060cb2c  00 40 a0 e1                                      mov r4, r0
0060cb30  01 0c 13 e3                                      tst r3, #0x100
0060cb34  d4 50 80 02                                      addeq r5, r0, #0xd4
0060cb38  1a 00 00 0a                                      beq #0x60cba8
0060cb3c  00 30 90 e5                                      ldr r3, [r0]
0060cb40  0f e0 a0 e1                                      mov lr, pc
0060cb44  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0060cb48  00 20 90 e5                                      ldr r2, [r0]
0060cb4c  00 30 a0 e1                                      mov r3, r0
0060cb50  04 00 a0 e1                                      mov r0, r4
0060cb54  d4 20 84 e5                                      str r2, [r4, #0xd4]
0060cb58  04 20 93 e5                                      ldr r2, [r3, #4]
0060cb5c  d4 50 84 e2                                      add r5, r4, #0xd4
0060cb60  d8 20 84 e5                                      str r2, [r4, #0xd8]
0060cb64  08 20 93 e5                                      ldr r2, [r3, #8]
0060cb68  dc 20 84 e5                                      str r2, [r4, #0xdc]
0060cb6c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0060cb70  e0 20 84 e5                                      str r2, [r4, #0xe0]
0060cb74  10 20 93 e5                                      ldr r2, [r3, #0x10]
0060cb78  e4 20 84 e5                                      str r2, [r4, #0xe4]
0060cb7c  14 30 93 e5                                      ldr r3, [r3, #0x14]
0060cb80  e8 30 84 e5                                      str r3, [r4, #0xe8]
0060cb84  c1 29 fe eb                                      bl #0x597290
0060cb88  00 30 90 e5                                      ldr r3, [r0]
0060cb8c  0f e0 a0 e1                                      mov lr, pc
0060cb90  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0060cb94  05 10 a0 e1                                      mov r1, r5
0060cb98  6a 2a fe eb                                      bl #0x597548
0060cb9c  1c 31 94 e5                                      ldr r3, [r4, #0x11c]
0060cba0  01 3c c3 e3                                      bic r3, r3, #0x100
0060cba4  1c 31 84 e5                                      str r3, [r4, #0x11c]
0060cba8  05 00 a0 e1                                      mov r0, r5
0060cbac  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0060cbb0, declared_size=524, range_size=524, mode=arm
; class-group: glitch::collada::CBillboardSceneNode
; alias: _ZN6glitch7collada19CBillboardSceneNode18computeBoundingBoxEv
; demangled: glitch::collada::CBillboardSceneNode::computeBoundingBox()
; decoder-mode: arm
0060cbb0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0060cbb4  00 40 a0 e1                                      mov r4, r0
0060cbb8  7a 40 01 eb                                      bl #0x65cda8
0060cbbc  30 01 94 e5                                      ldr r0, [r4, #0x130]
0060cbc0  34 71 94 e5                                      ldr r7, [r4, #0x134]
0060cbc4  38 61 94 e5                                      ldr r6, [r4, #0x138]
0060cbc8  00 10 a0 e1                                      mov r1, r0
0060cbcc  66 08 f4 eb                                      bl #0x30ed6c
0060cbd0  07 10 a0 e1                                      mov r1, r7
0060cbd4  00 50 a0 e1                                      mov r5, r0
0060cbd8  07 00 a0 e1                                      mov r0, r7
0060cbdc  62 08 f4 eb                                      bl #0x30ed6c
0060cbe0  00 10 a0 e1                                      mov r1, r0
0060cbe4  05 00 a0 e1                                      mov r0, r5
0060cbe8  ed 07 f4 eb                                      bl #0x30eba4
0060cbec  06 10 a0 e1                                      mov r1, r6
0060cbf0  00 50 a0 e1                                      mov r5, r0
0060cbf4  06 00 a0 e1                                      mov r0, r6
0060cbf8  5b 08 f4 eb                                      bl #0x30ed6c
0060cbfc  00 10 a0 e1                                      mov r1, r0
0060cc00  05 00 a0 e1                                      mov r0, r5
0060cc04  e6 07 f4 eb                                      bl #0x30eba4
0060cc08  25 07 f4 eb                                      bl #0x30e8a4
0060cc0c  6b 05 f4 eb                                      bl #0x30e1c0
0060cc10  a2 06 f4 eb                                      bl #0x30e6a0
0060cc14  00 50 a0 e1                                      mov r5, r0
0060cc18  3c 01 94 e5                                      ldr r0, [r4, #0x13c]
0060cc1c  40 81 94 e5                                      ldr r8, [r4, #0x140]
0060cc20  44 71 94 e5                                      ldr r7, [r4, #0x144]
0060cc24  00 10 a0 e1                                      mov r1, r0
0060cc28  4f 08 f4 eb                                      bl #0x30ed6c
0060cc2c  08 10 a0 e1                                      mov r1, r8
0060cc30  00 60 a0 e1                                      mov r6, r0
0060cc34  08 00 a0 e1                                      mov r0, r8
0060cc38  4b 08 f4 eb                                      bl #0x30ed6c
0060cc3c  00 10 a0 e1                                      mov r1, r0
0060cc40  06 00 a0 e1                                      mov r0, r6
0060cc44  d6 07 f4 eb                                      bl #0x30eba4
0060cc48  07 10 a0 e1                                      mov r1, r7
0060cc4c  00 60 a0 e1                                      mov r6, r0
0060cc50  07 00 a0 e1                                      mov r0, r7
0060cc54  44 08 f4 eb                                      bl #0x30ed6c
0060cc58  00 10 a0 e1                                      mov r1, r0
0060cc5c  06 00 a0 e1                                      mov r0, r6
0060cc60  cf 07 f4 eb                                      bl #0x30eba4
0060cc64  0e 07 f4 eb                                      bl #0x30e8a4
0060cc68  54 05 f4 eb                                      bl #0x30e1c0
0060cc6c  8b 06 f4 eb                                      bl #0x30e6a0
0060cc70  00 60 a0 e1                                      mov r6, r0
0060cc74  06 10 a0 e1                                      mov r1, r6
0060cc78  05 00 a0 e1                                      mov r0, r5
0060cc7c  9d 05 f4 eb                                      bl #0x30e2f8
0060cc80  54 31 94 e5                                      ldr r3, [r4, #0x154]
0060cc84  00 00 50 e3                                      cmp r0, #0
0060cc88  06 50 a0 01                                      moveq r5, r6
0060cc8c  4c 30 93 e5                                      ldr r3, [r3, #0x4c]
0060cc90  00 20 93 e5                                      ldr r2, [r3]
0060cc94  02 00 52 e3                                      cmp r2, #2
0060cc98  07 00 00 0a                                      beq #0x60ccbc
0060cc9c  02 31 85 e2                                      add r3, r5, #0x80000000
0060cca0  44 51 84 e5                                      str r5, [r4, #0x144]
0060cca4  38 31 84 e5                                      str r3, [r4, #0x138]
0060cca8  30 31 84 e5                                      str r3, [r4, #0x130]
0060ccac  34 31 84 e5                                      str r3, [r4, #0x134]
0060ccb0  3c 51 84 e5                                      str r5, [r4, #0x13c]
0060ccb4  40 51 84 e5                                      str r5, [r4, #0x140]
0060ccb8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0060ccbc  14 60 93 e5                                      ldr r6, [r3, #0x14]
0060ccc0  fe 15 a0 e3                                      mov r1, #0x3f800000
0060ccc4  1c 80 93 e5                                      ldr r8, [r3, #0x1c]
0060ccc8  06 00 a0 e1                                      mov r0, r6
0060cccc  18 70 93 e5                                      ldr r7, [r3, #0x18]
0060ccd0  ad 04 f4 eb                                      bl #0x30df8c
0060ccd4  00 00 50 e3                                      cmp r0, #0
0060ccd8  0f 00 00 0a                                      beq #0x60cd1c
0060ccdc  07 00 a0 e1                                      mov r0, r7
0060cce0  00 10 a0 e3                                      mov r1, #0
0060cce4  a8 04 f4 eb                                      bl #0x30df8c
0060cce8  00 00 50 e3                                      cmp r0, #0
0060ccec  0a 00 00 0a                                      beq #0x60cd1c
0060ccf0  08 00 a0 e1                                      mov r0, r8
0060ccf4  00 10 a0 e3                                      mov r1, #0
0060ccf8  a3 04 f4 eb                                      bl #0x30df8c
0060ccfc  00 00 50 e3                                      cmp r0, #0
0060cd00  e5 ff ff 0a                                      beq #0x60cc9c
0060cd04  02 31 85 e2                                      add r3, r5, #0x80000000
0060cd08  44 51 84 e5                                      str r5, [r4, #0x144]
0060cd0c  38 31 84 e5                                      str r3, [r4, #0x138]
0060cd10  34 31 84 e5                                      str r3, [r4, #0x134]
0060cd14  40 51 84 e5                                      str r5, [r4, #0x140]
0060cd18  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0060cd1c  06 00 a0 e1                                      mov r0, r6
0060cd20  00 10 a0 e3                                      mov r1, #0
0060cd24  98 04 f4 eb                                      bl #0x30df8c
0060cd28  00 00 50 e3                                      cmp r0, #0
0060cd2c  1f 00 00 0a                                      beq #0x60cdb0
0060cd30  07 00 a0 e1                                      mov r0, r7
0060cd34  fe 15 a0 e3                                      mov r1, #0x3f800000
0060cd38  93 04 f4 eb                                      bl #0x30df8c
0060cd3c  00 00 50 e3                                      cmp r0, #0
0060cd40  0f 00 00 1a                                      bne #0x60cd84
0060cd44  07 00 a0 e1                                      mov r0, r7
0060cd48  00 10 a0 e3                                      mov r1, #0
0060cd4c  8e 04 f4 eb                                      bl #0x30df8c
0060cd50  00 00 50 e3                                      cmp r0, #0
0060cd54  d0 ff ff 0a                                      beq #0x60cc9c
0060cd58  08 00 a0 e1                                      mov r0, r8
0060cd5c  fe 15 a0 e3                                      mov r1, #0x3f800000
0060cd60  89 04 f4 eb                                      bl #0x30df8c
0060cd64  00 00 50 e3                                      cmp r0, #0
0060cd68  cb ff ff 0a                                      beq #0x60cc9c
0060cd6c  02 31 85 e2                                      add r3, r5, #0x80000000
0060cd70  34 31 84 e5                                      str r3, [r4, #0x134]
0060cd74  40 51 84 e5                                      str r5, [r4, #0x140]
0060cd78  30 31 84 e5                                      str r3, [r4, #0x130]
0060cd7c  3c 51 84 e5                                      str r5, [r4, #0x13c]
0060cd80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0060cd84  08 00 a0 e1                                      mov r0, r8
0060cd88  00 10 a0 e3                                      mov r1, #0
0060cd8c  7e 04 f4 eb                                      bl #0x30df8c
0060cd90  00 00 50 e3                                      cmp r0, #0
0060cd94  c0 ff ff 0a                                      beq #0x60cc9c
0060cd98  02 31 85 e2                                      add r3, r5, #0x80000000
0060cd9c  44 51 84 e5                                      str r5, [r4, #0x144]
0060cda0  38 31 84 e5                                      str r3, [r4, #0x138]
0060cda4  30 31 84 e5                                      str r3, [r4, #0x130]
0060cda8  3c 51 84 e5                                      str r5, [r4, #0x13c]
0060cdac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0060cdb0  00 00 50 e3                                      cmp r0, #0
0060cdb4  b8 ff ff 0a                                      beq #0x60cc9c
0060cdb8  e1 ff ff ea                                      b #0x60cd44

; FUNCTION 0x0060cec8, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::CBillboardSceneNode
; alias: _ZN6glitch7collada19CBillboardSceneNodeD1Ev
; demangled: glitch::collada::CBillboardSceneNode::~CBillboardSceneNode()
; decoder-mode: arm
0060cec8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0060cecc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0060ced0  10 40 2d e9                                      push {r4, lr}
0060ced4  02 20 8f e0                                      add r2, pc, r2
0060ced8  03 30 92 e7                                      ldr r3, [r2, r3]
0060cedc  00 40 a0 e1                                      mov r4, r0
0060cee0  49 2f 83 e2                                      add r2, r3, #0x124
0060cee4  1c 30 83 e2                                      add r3, r3, #0x1c
0060cee8  00 30 80 e5                                      str r3, [r0]
0060ceec  58 21 80 e5                                      str r2, [r0, #0x158]
0060cef0  d3 ff ff eb                                      bl #0x60ce44
0060cef4  04 00 a0 e1                                      mov r0, r4
0060cef8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060cefc  bc 7b 38 00 8c 23 00 00                          .byte 0xbc, 0x7b, 0x38, 0x00, 0x8c, 0x23, 0x00, 0x00

; FUNCTION 0x0060cf04, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CBillboardSceneNode
; alias: _ZTv0_n24_N6glitch7collada19CBillboardSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CBillboardSceneNode::~CBillboardSceneNode()
; decoder-mode: arm
0060cf04  00 30 90 e5                                      ldr r3, [r0]
0060cf08  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0060cf0c  03 00 80 e0                                      add r0, r0, r3
0060cf10  ec ff ff ea                                      b #0x60cec8

; FUNCTION 0x0060cf14, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CBillboardSceneNode
; alias: _ZTv0_n12_N6glitch7collada19CBillboardSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CBillboardSceneNode::~CBillboardSceneNode()
; decoder-mode: arm
0060cf14  00 30 90 e5                                      ldr r3, [r0]
0060cf18  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0060cf1c  03 00 80 e0                                      add r0, r0, r3
0060cf20  e8 ff ff ea                                      b #0x60cec8

; FUNCTION 0x0060cf24, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::CBillboardSceneNode
; alias: _ZN6glitch7collada19CBillboardSceneNodeD0Ev
; demangled: glitch::collada::CBillboardSceneNode::~CBillboardSceneNode()
; decoder-mode: arm
0060cf24  34 20 9f e5                                      ldr r2, [pc, #0x34]
0060cf28  34 30 9f e5                                      ldr r3, [pc, #0x34]
0060cf2c  10 40 2d e9                                      push {r4, lr}
0060cf30  02 20 8f e0                                      add r2, pc, r2
0060cf34  03 30 92 e7                                      ldr r3, [r2, r3]
0060cf38  00 40 a0 e1                                      mov r4, r0
0060cf3c  49 2f 83 e2                                      add r2, r3, #0x124
0060cf40  1c 30 83 e2                                      add r3, r3, #0x1c
0060cf44  00 30 80 e5                                      str r3, [r0]
0060cf48  58 21 80 e5                                      str r2, [r0, #0x158]
0060cf4c  bc ff ff eb                                      bl #0x60ce44
0060cf50  04 00 a0 e1                                      mov r0, r4
0060cf54  d5 04 f4 eb                                      bl #0x30e2b0
0060cf58  04 00 a0 e1                                      mov r0, r4
0060cf5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0060cf60  60 7b 38 00 8c 23 00 00                          .byte 0x60, 0x7b, 0x38, 0x00, 0x8c, 0x23, 0x00, 0x00

; FUNCTION 0x0060cf68, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CBillboardSceneNode
; alias: _ZTv0_n24_N6glitch7collada19CBillboardSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CBillboardSceneNode::~CBillboardSceneNode()
; decoder-mode: arm
0060cf68  00 30 90 e5                                      ldr r3, [r0]
0060cf6c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0060cf70  03 00 80 e0                                      add r0, r0, r3
0060cf74  ea ff ff ea                                      b #0x60cf24

; FUNCTION 0x0060cf78, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CBillboardSceneNode
; alias: _ZTv0_n12_N6glitch7collada19CBillboardSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CBillboardSceneNode::~CBillboardSceneNode()
; decoder-mode: arm
0060cf78  00 30 90 e5                                      ldr r3, [r0]
0060cf7c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0060cf80  03 00 80 e0                                      add r0, r0, r3
0060cf84  e6 ff ff ea                                      b #0x60cf24

; FUNCTION 0x0060cf88, declared_size=3500, range_size=3500, mode=arm
; class-group: glitch::collada::CBillboardSceneNode
; alias: _ZN6glitch7collada19CBillboardSceneNode22updateAbsolutePositionEb
; demangled: glitch::collada::CBillboardSceneNode::updateAbsolutePosition(bool)
; decoder-mode: arm
0060cf88  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0060cf8c  10 31 90 e5                                      ldr r3, [r0, #0x110]
0060cf90  d1 df 4d e2                                      sub sp, sp, #0x344
0060cf94  00 40 a0 e1                                      mov r4, r0
0060cf98  00 00 53 e3                                      cmp r3, #0
0060cf9c  10 10 8d e5                                      str r1, [sp, #0x10]
0060cfa0  30 02 00 0a                                      beq #0x60d868
0060cfa4  e4 30 93 e5                                      ldr r3, [r3, #0xe4]
0060cfa8  00 00 53 e3                                      cmp r3, #0
0060cfac  2d 02 00 0a                                      beq #0x60d868
0060cfb0  ec 30 90 e5                                      ldr r3, [r0, #0xec]
0060cfb4  9b 1f 8d e2                                      add r1, sp, #0x26c
0060cfb8  18 10 8d e5                                      str r1, [sp, #0x18]
0060cfbc  03 00 a0 e1                                      mov r0, r3
0060cfc0  00 30 93 e5                                      ldr r3, [r3]
0060cfc4  0f e0 a0 e1                                      mov lr, pc
0060cfc8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0060cfcc  00 10 a0 e1                                      mov r1, r0
0060cfd0  18 00 9d e5                                      ldr r0, [sp, #0x18]
0060cfd4  92 ff ff eb                                      bl #0x60ce24
0060cfd8  00 60 a0 e3                                      mov r6, #0
0060cfdc  ec 10 94 e5                                      ldr r1, [r4, #0xec]
0060cfe0  00 30 a0 e3                                      mov r3, #0
0060cfe4  cd 0f 8d e2                                      add r0, sp, #0x334
0060cfe8  a4 32 8d e5                                      str r3, [sp, #0x2a4]
0060cfec  9c 32 8d e5                                      str r3, [sp, #0x29c]
0060cff0  a0 32 8d e5                                      str r3, [sp, #0x2a0]
0060cff4  ac 62 cd e5                                      strb r6, [sp, #0x2ac]
0060cff8  60 28 fe eb                                      bl #0x597180
0060cffc  10 31 94 e5                                      ldr r3, [r4, #0x110]
0060d000  31 2e 8d e2                                      add r2, sp, #0x310
0060d004  20 20 8d e5                                      str r2, [sp, #0x20]
0060d008  e4 70 93 e5                                      ldr r7, [r3, #0xe4]
0060d00c  ca 0f 8d e2                                      add r0, sp, #0x328
0060d010  79 5f 8d e2                                      add r5, sp, #0x1e4
0060d014  07 10 a0 e1                                      mov r1, r7
0060d018  58 28 fe eb                                      bl #0x597180
0060d01c  00 30 97 e5                                      ldr r3, [r7]
0060d020  07 00 a0 e1                                      mov r0, r7
0060d024  0f e0 a0 e1                                      mov lr, pc
0060d028  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
0060d02c  00 10 a0 e1                                      mov r1, r0
0060d030  8a 0f 8d e2                                      add r0, sp, #0x228
0060d034  7a ff ff eb                                      bl #0x60ce24
0060d038  54 31 94 e5                                      ldr r3, [r4, #0x154]
0060d03c  2c c2 9d e5                                      ldr ip, [sp, #0x22c]
0060d040  68 62 cd e5                                      strb r6, [sp, #0x268]
0060d044  3c 22 9d e5                                      ldr r2, [sp, #0x23c]
0060d048  4c 30 93 e5                                      ldr r3, [r3, #0x4c]
0060d04c  0c c0 8d e5                                      str ip, [sp, #0xc]
0060d050  14 20 8d e5                                      str r2, [sp, #0x14]
0060d054  08 80 93 e5                                      ldr r8, [r3, #8]
0060d058  30 22 9d e5                                      ldr r2, [sp, #0x230]
0060d05c  4c c2 9d e5                                      ldr ip, [sp, #0x24c]
0060d060  1c 83 8d e5                                      str r8, [sp, #0x31c]
0060d064  44 20 8d e5                                      str r2, [sp, #0x44]
0060d068  1c c0 8d e5                                      str ip, [sp, #0x1c]
0060d06c  0c 70 93 e5                                      ldr r7, [r3, #0xc]
0060d070  40 c2 9d e5                                      ldr ip, [sp, #0x240]
0060d074  70 12 9d e5                                      ldr r1, [sp, #0x270]
0060d078  20 73 8d e5                                      str r7, [sp, #0x320]
0060d07c  40 c0 8d e5                                      str ip, [sp, #0x40]
0060d080  08 00 a0 e1                                      mov r0, r8
0060d084  10 b0 93 e5                                      ldr fp, [r3, #0x10]
0060d088  37 07 f4 eb                                      bl #0x30ed6c
0060d08c  80 12 9d e5                                      ldr r1, [sp, #0x280]
0060d090  00 a0 a0 e1                                      mov sl, r0
0060d094  07 00 a0 e1                                      mov r0, r7
0060d098  33 07 f4 eb                                      bl #0x30ed6c
0060d09c  00 10 a0 e1                                      mov r1, r0
0060d0a0  0a 00 a0 e1                                      mov r0, sl
0060d0a4  be 06 f4 eb                                      bl #0x30eba4
0060d0a8  90 12 9d e5                                      ldr r1, [sp, #0x290]
0060d0ac  00 a0 a0 e1                                      mov sl, r0
0060d0b0  0b 00 a0 e1                                      mov r0, fp
0060d0b4  2c 07 f4 eb                                      bl #0x30ed6c
0060d0b8  00 10 a0 e1                                      mov r1, r0
0060d0bc  0a 00 a0 e1                                      mov r0, sl
0060d0c0  b7 06 f4 eb                                      bl #0x30eba4
0060d0c4  a0 12 9d e5                                      ldr r1, [sp, #0x2a0]
0060d0c8  b5 06 f4 eb                                      bl #0x30eba4
0060d0cc  74 12 9d e5                                      ldr r1, [sp, #0x274]
0060d0d0  00 90 a0 e1                                      mov sb, r0
0060d0d4  08 00 a0 e1                                      mov r0, r8
0060d0d8  23 07 f4 eb                                      bl #0x30ed6c
0060d0dc  84 12 9d e5                                      ldr r1, [sp, #0x284]
0060d0e0  00 a0 a0 e1                                      mov sl, r0
0060d0e4  07 00 a0 e1                                      mov r0, r7
0060d0e8  1f 07 f4 eb                                      bl #0x30ed6c
0060d0ec  00 10 a0 e1                                      mov r1, r0
0060d0f0  0a 00 a0 e1                                      mov r0, sl
0060d0f4  aa 06 f4 eb                                      bl #0x30eba4
0060d0f8  94 12 9d e5                                      ldr r1, [sp, #0x294]
0060d0fc  00 a0 a0 e1                                      mov sl, r0
0060d100  0b 00 a0 e1                                      mov r0, fp
0060d104  18 07 f4 eb                                      bl #0x30ed6c
0060d108  00 10 a0 e1                                      mov r1, r0
0060d10c  0a 00 a0 e1                                      mov r0, sl
0060d110  a3 06 f4 eb                                      bl #0x30eba4
0060d114  a4 12 9d e5                                      ldr r1, [sp, #0x2a4]
0060d118  a1 06 f4 eb                                      bl #0x30eba4
0060d11c  6c 12 9d e5                                      ldr r1, [sp, #0x26c]
0060d120  00 a0 a0 e1                                      mov sl, r0
0060d124  08 00 a0 e1                                      mov r0, r8
0060d128  0f 07 f4 eb                                      bl #0x30ed6c
0060d12c  7c 12 9d e5                                      ldr r1, [sp, #0x27c]
0060d130  00 80 a0 e1                                      mov r8, r0
0060d134  07 00 a0 e1                                      mov r0, r7
0060d138  0b 07 f4 eb                                      bl #0x30ed6c
0060d13c  00 10 a0 e1                                      mov r1, r0
0060d140  08 00 a0 e1                                      mov r0, r8
0060d144  96 06 f4 eb                                      bl #0x30eba4
0060d148  8c 12 9d e5                                      ldr r1, [sp, #0x28c]
0060d14c  00 70 a0 e1                                      mov r7, r0
0060d150  0b 00 a0 e1                                      mov r0, fp
0060d154  04 07 f4 eb                                      bl #0x30ed6c
0060d158  00 10 a0 e1                                      mov r1, r0
0060d15c  07 00 a0 e1                                      mov r0, r7
0060d160  8f 06 f4 eb                                      bl #0x30eba4
0060d164  9c 12 9d e5                                      ldr r1, [sp, #0x29c]
0060d168  8d 06 f4 eb                                      bl #0x30eba4
0060d16c  50 12 9d e5                                      ldr r1, [sp, #0x250]
0060d170  3c 10 8d e5                                      str r1, [sp, #0x3c]
0060d174  28 22 9d e5                                      ldr r2, [sp, #0x228]
0060d178  48 c2 9d e5                                      ldr ip, [sp, #0x248]
0060d17c  38 32 9d e5                                      ldr r3, [sp, #0x238]
0060d180  1c 03 8d e5                                      str r0, [sp, #0x31c]
0060d184  c7 0f 8d e2                                      add r0, sp, #0x31c
0060d188  24 20 8d e5                                      str r2, [sp, #0x24]
0060d18c  2c c0 8d e5                                      str ip, [sp, #0x2c]
0060d190  28 30 8d e5                                      str r3, [sp, #0x28]
0060d194  20 93 8d e5                                      str sb, [sp, #0x320]
0060d198  24 a3 8d e5                                      str sl, [sp, #0x324]
0060d19c  cf 45 f5 eb                                      bl #0x35e8e0
0060d1a0  54 31 94 e5                                      ldr r3, [r4, #0x154]
0060d1a4  70 12 9d e5                                      ldr r1, [sp, #0x270]
0060d1a8  4c 30 93 e5                                      ldr r3, [r3, #0x4c]
0060d1ac  14 80 93 e5                                      ldr r8, [r3, #0x14]
0060d1b0  10 83 8d e5                                      str r8, [sp, #0x310]
0060d1b4  18 70 93 e5                                      ldr r7, [r3, #0x18]
0060d1b8  08 00 a0 e1                                      mov r0, r8
0060d1bc  14 73 8d e5                                      str r7, [sp, #0x314]
0060d1c0  1c a0 93 e5                                      ldr sl, [r3, #0x1c]
0060d1c4  e8 06 f4 eb                                      bl #0x30ed6c
0060d1c8  80 12 9d e5                                      ldr r1, [sp, #0x280]
0060d1cc  00 90 a0 e1                                      mov sb, r0
0060d1d0  07 00 a0 e1                                      mov r0, r7
0060d1d4  e4 06 f4 eb                                      bl #0x30ed6c
0060d1d8  00 10 a0 e1                                      mov r1, r0
0060d1dc  09 00 a0 e1                                      mov r0, sb
0060d1e0  6f 06 f4 eb                                      bl #0x30eba4
0060d1e4  90 12 9d e5                                      ldr r1, [sp, #0x290]
0060d1e8  00 90 a0 e1                                      mov sb, r0
0060d1ec  0a 00 a0 e1                                      mov r0, sl
0060d1f0  dd 06 f4 eb                                      bl #0x30ed6c
0060d1f4  00 10 a0 e1                                      mov r1, r0
0060d1f8  09 00 a0 e1                                      mov r0, sb
0060d1fc  68 06 f4 eb                                      bl #0x30eba4
0060d200  a0 12 9d e5                                      ldr r1, [sp, #0x2a0]
0060d204  66 06 f4 eb                                      bl #0x30eba4
0060d208  74 12 9d e5                                      ldr r1, [sp, #0x274]
0060d20c  00 b0 a0 e1                                      mov fp, r0
0060d210  08 00 a0 e1                                      mov r0, r8
0060d214  d4 06 f4 eb                                      bl #0x30ed6c
0060d218  84 12 9d e5                                      ldr r1, [sp, #0x284]
0060d21c  00 90 a0 e1                                      mov sb, r0
0060d220  07 00 a0 e1                                      mov r0, r7
0060d224  d0 06 f4 eb                                      bl #0x30ed6c
0060d228  00 10 a0 e1                                      mov r1, r0
0060d22c  09 00 a0 e1                                      mov r0, sb
0060d230  5b 06 f4 eb                                      bl #0x30eba4
0060d234  94 12 9d e5                                      ldr r1, [sp, #0x294]
0060d238  00 90 a0 e1                                      mov sb, r0
0060d23c  0a 00 a0 e1                                      mov r0, sl
0060d240  c9 06 f4 eb                                      bl #0x30ed6c
0060d244  00 10 a0 e1                                      mov r1, r0
0060d248  09 00 a0 e1                                      mov r0, sb
0060d24c  54 06 f4 eb                                      bl #0x30eba4
0060d250  a4 12 9d e5                                      ldr r1, [sp, #0x2a4]
0060d254  52 06 f4 eb                                      bl #0x30eba4
0060d258  6c 12 9d e5                                      ldr r1, [sp, #0x26c]
0060d25c  00 90 a0 e1                                      mov sb, r0
0060d260  08 00 a0 e1                                      mov r0, r8
0060d264  c0 06 f4 eb                                      bl #0x30ed6c
0060d268  7c 12 9d e5                                      ldr r1, [sp, #0x27c]
0060d26c  00 80 a0 e1                                      mov r8, r0
0060d270  07 00 a0 e1                                      mov r0, r7
0060d274  bc 06 f4 eb                                      bl #0x30ed6c
0060d278  00 10 a0 e1                                      mov r1, r0
0060d27c  08 00 a0 e1                                      mov r0, r8
0060d280  47 06 f4 eb                                      bl #0x30eba4
0060d284  8c 12 9d e5                                      ldr r1, [sp, #0x28c]
0060d288  00 70 a0 e1                                      mov r7, r0
0060d28c  0a 00 a0 e1                                      mov r0, sl
0060d290  b5 06 f4 eb                                      bl #0x30ed6c
0060d294  00 10 a0 e1                                      mov r1, r0
0060d298  07 00 a0 e1                                      mov r0, r7
0060d29c  40 06 f4 eb                                      bl #0x30eba4
0060d2a0  9c 12 9d e5                                      ldr r1, [sp, #0x29c]
0060d2a4  3e 06 f4 eb                                      bl #0x30eba4
0060d2a8  10 03 8d e5                                      str r0, [sp, #0x310]
0060d2ac  20 00 9d e5                                      ldr r0, [sp, #0x20]
0060d2b0  14 b3 8d e5                                      str fp, [sp, #0x314]
0060d2b4  18 93 8d e5                                      str sb, [sp, #0x318]
0060d2b8  88 45 f5 eb                                      bl #0x35e8e0
0060d2bc  20 73 9d e5                                      ldr r7, [sp, #0x320]
0060d2c0  18 93 9d e5                                      ldr sb, [sp, #0x318]
0060d2c4  14 83 9d e5                                      ldr r8, [sp, #0x314]
0060d2c8  02 01 87 e2                                      add r0, r7, #0x80000000
0060d2cc  09 10 a0 e1                                      mov r1, sb
0060d2d0  a5 06 f4 eb                                      bl #0x30ed6c
0060d2d4  24 a3 9d e5                                      ldr sl, [sp, #0x324]
0060d2d8  00 b0 a0 e1                                      mov fp, r0
0060d2dc  08 10 a0 e1                                      mov r1, r8
0060d2e0  0a 00 a0 e1                                      mov r0, sl
0060d2e4  a0 06 f4 eb                                      bl #0x30ed6c
0060d2e8  00 10 a0 e1                                      mov r1, r0
0060d2ec  0b 00 a0 e1                                      mov r0, fp
0060d2f0  2b 06 f4 eb                                      bl #0x30eba4
0060d2f4  10 33 9d e5                                      ldr r3, [sp, #0x310]
0060d2f8  02 a1 8a e2                                      add sl, sl, #0x80000000
0060d2fc  04 03 8d e5                                      str r0, [sp, #0x304]
0060d300  03 10 a0 e1                                      mov r1, r3
0060d304  0a 00 a0 e1                                      mov r0, sl
0060d308  00 30 8d e5                                      str r3, [sp]
0060d30c  96 06 f4 eb                                      bl #0x30ed6c
0060d310  1c a3 9d e5                                      ldr sl, [sp, #0x31c]
0060d314  00 b0 a0 e1                                      mov fp, r0
0060d318  09 00 a0 e1                                      mov r0, sb
0060d31c  0a 10 a0 e1                                      mov r1, sl
0060d320  91 06 f4 eb                                      bl #0x30ed6c
0060d324  00 10 a0 e1                                      mov r1, r0
0060d328  0b 00 a0 e1                                      mov r0, fp
0060d32c  1c 06 f4 eb                                      bl #0x30eba4
0060d330  02 11 8a e2                                      add r1, sl, #0x80000000
0060d334  08 03 8d e5                                      str r0, [sp, #0x308]
0060d338  08 00 a0 e1                                      mov r0, r8
0060d33c  8a 06 f4 eb                                      bl #0x30ed6c
0060d340  00 30 9d e5                                      ldr r3, [sp]
0060d344  00 80 a0 e1                                      mov r8, r0
0060d348  07 00 a0 e1                                      mov r0, r7
0060d34c  03 10 a0 e1                                      mov r1, r3
0060d350  85 06 f4 eb                                      bl #0x30ed6c
0060d354  00 10 a0 e1                                      mov r1, r0
0060d358  08 00 a0 e1                                      mov r0, r8
0060d35c  10 06 f4 eb                                      bl #0x30eba4
0060d360  0c 03 8d e5                                      str r0, [sp, #0x30c]
0060d364  c1 0f 8d e2                                      add r0, sp, #0x304
0060d368  5c 45 f5 eb                                      bl #0x35e8e0
0060d36c  24 93 9d e5                                      ldr sb, [sp, #0x324]
0060d370  04 80 90 e5                                      ldr r8, [r0, #4]
0060d374  08 70 90 e5                                      ldr r7, [r0, #8]
0060d378  00 30 a0 e1                                      mov r3, r0
0060d37c  09 10 a0 e1                                      mov r1, sb
0060d380  02 01 88 e2                                      add r0, r8, #0x80000000
0060d384  00 a0 93 e5                                      ldr sl, [r3]
0060d388  77 06 f4 eb                                      bl #0x30ed6c
0060d38c  20 13 9d e5                                      ldr r1, [sp, #0x320]
0060d390  00 b0 a0 e1                                      mov fp, r0
0060d394  07 00 a0 e1                                      mov r0, r7
0060d398  73 06 f4 eb                                      bl #0x30ed6c
0060d39c  00 10 a0 e1                                      mov r1, r0
0060d3a0  0b 00 a0 e1                                      mov r0, fp
0060d3a4  fe 05 f4 eb                                      bl #0x30eba4
0060d3a8  1c 33 9d e5                                      ldr r3, [sp, #0x31c]
0060d3ac  02 21 87 e2                                      add r2, r7, #0x80000000
0060d3b0  f8 02 8d e5                                      str r0, [sp, #0x2f8]
0060d3b4  03 10 a0 e1                                      mov r1, r3
0060d3b8  02 00 a0 e1                                      mov r0, r2
0060d3bc  00 30 8d e5                                      str r3, [sp]
0060d3c0  69 06 f4 eb                                      bl #0x30ed6c
0060d3c4  09 10 a0 e1                                      mov r1, sb
0060d3c8  00 b0 a0 e1                                      mov fp, r0
0060d3cc  0a 00 a0 e1                                      mov r0, sl
0060d3d0  65 06 f4 eb                                      bl #0x30ed6c
0060d3d4  00 10 a0 e1                                      mov r1, r0
0060d3d8  0b 00 a0 e1                                      mov r0, fp
0060d3dc  f0 05 f4 eb                                      bl #0x30eba4
0060d3e0  02 11 8a e2                                      add r1, sl, #0x80000000
0060d3e4  fc 02 8d e5                                      str r0, [sp, #0x2fc]
0060d3e8  20 03 9d e5                                      ldr r0, [sp, #0x320]
0060d3ec  5e 06 f4 eb                                      bl #0x30ed6c
0060d3f0  00 30 9d e5                                      ldr r3, [sp]
0060d3f4  00 90 a0 e1                                      mov sb, r0
0060d3f8  08 00 a0 e1                                      mov r0, r8
0060d3fc  03 10 a0 e1                                      mov r1, r3
0060d400  59 06 f4 eb                                      bl #0x30ed6c
0060d404  00 10 a0 e1                                      mov r1, r0
0060d408  09 00 a0 e1                                      mov r0, sb
0060d40c  e4 05 f4 eb                                      bl #0x30eba4
0060d410  00 03 8d e5                                      str r0, [sp, #0x300]
0060d414  be 0f 8d e2                                      add r0, sp, #0x2f8
0060d418  30 45 f5 eb                                      bl #0x35e8e0
0060d41c  00 30 a0 e1                                      mov r3, r0
0060d420  08 c0 93 e5                                      ldr ip, [r3, #8]
0060d424  06 10 a0 e1                                      mov r1, r6
0060d428  40 20 a0 e3                                      mov r2, #0x40
0060d42c  38 c0 8d e5                                      str ip, [sp, #0x38]
0060d430  00 c0 93 e5                                      ldr ip, [r3]
0060d434  05 00 a0 e1                                      mov r0, r5
0060d438  30 c0 8d e5                                      str ip, [sp, #0x30]
0060d43c  04 30 93 e5                                      ldr r3, [r3, #4]
0060d440  34 30 8d e5                                      str r3, [sp, #0x34]
0060d444  05 04 f4 eb                                      bl #0x30e460
0060d448  54 21 94 e5                                      ldr r2, [r4, #0x154]
0060d44c  fe 35 a0 e3                                      mov r3, #0x3f800000
0060d450  01 10 a0 e3                                      mov r1, #1
0060d454  20 32 8d e5                                      str r3, [sp, #0x220]
0060d458  24 12 cd e5                                      strb r1, [sp, #0x224]
0060d45c  e4 31 8d e5                                      str r3, [sp, #0x1e4]
0060d460  f8 31 8d e5                                      str r3, [sp, #0x1f8]
0060d464  0c 32 8d e5                                      str r3, [sp, #0x20c]
0060d468  4c 30 92 e5                                      ldr r3, [r2, #0x4c]
0060d46c  00 20 93 e5                                      ldr r2, [r3]
0060d470  02 00 52 e3                                      cmp r2, #2
0060d474  1f 01 00 0a                                      beq #0x60d8f8
0060d478  04 30 93 e5                                      ldr r3, [r3, #4]
0060d47c  02 00 53 e3                                      cmp r3, #2
0060d480  13 01 00 0a                                      beq #0x60d8d4
0060d484  38 13 9d e5                                      ldr r1, [sp, #0x338]
0060d488  2c 03 9d e5                                      ldr r0, [sp, #0x32c]
0060d48c  c6 03 f4 eb                                      bl #0x30e3ac
0060d490  3c 13 9d e5                                      ldr r1, [sp, #0x33c]
0060d494  00 60 a0 e1                                      mov r6, r0
0060d498  30 03 9d e5                                      ldr r0, [sp, #0x330]
0060d49c  c2 03 f4 eb                                      bl #0x30e3ac
0060d4a0  34 13 9d e5                                      ldr r1, [sp, #0x334]
0060d4a4  00 90 a0 e1                                      mov sb, r0
0060d4a8  28 03 9d e5                                      ldr r0, [sp, #0x328]
0060d4ac  be 03 f4 eb                                      bl #0x30e3ac
0060d4b0  c8 02 8d e5                                      str r0, [sp, #0x2c8]
0060d4b4  b2 0f 8d e2                                      add r0, sp, #0x2c8
0060d4b8  cc 62 8d e5                                      str r6, [sp, #0x2cc]
0060d4bc  d0 92 8d e5                                      str sb, [sp, #0x2d0]
0060d4c0  06 45 f5 eb                                      bl #0x35e8e0
0060d4c4  08 20 90 e5                                      ldr r2, [r0, #8]
0060d4c8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0060d4cc  00 30 a0 e1                                      mov r3, r0
0060d4d0  08 20 8d e5                                      str r2, [sp, #8]
0060d4d4  02 11 8c e2                                      add r1, ip, #0x80000000
0060d4d8  04 b0 90 e5                                      ldr fp, [r0, #4]
0060d4dc  02 00 a0 e1                                      mov r0, r2
0060d4e0  00 90 93 e5                                      ldr sb, [r3]
0060d4e4  20 06 f4 eb                                      bl #0x30ed6c
0060d4e8  0b 10 a0 e1                                      mov r1, fp
0060d4ec  00 60 a0 e1                                      mov r6, r0
0060d4f0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0060d4f4  1c 06 f4 eb                                      bl #0x30ed6c
0060d4f8  00 10 a0 e1                                      mov r1, r0
0060d4fc  06 00 a0 e1                                      mov r0, r6
0060d500  a7 05 f4 eb                                      bl #0x30eba4
0060d504  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0060d508  bc 02 8d e5                                      str r0, [sp, #0x2bc]
0060d50c  09 00 a0 e1                                      mov r0, sb
0060d510  02 11 82 e2                                      add r1, r2, #0x80000000
0060d514  14 06 f4 eb                                      bl #0x30ed6c
0060d518  08 10 9d e5                                      ldr r1, [sp, #8]
0060d51c  00 60 a0 e1                                      mov r6, r0
0060d520  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060d524  10 06 f4 eb                                      bl #0x30ed6c
0060d528  00 10 a0 e1                                      mov r1, r0
0060d52c  06 00 a0 e1                                      mov r0, r6
0060d530  9b 05 f4 eb                                      bl #0x30eba4
0060d534  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0060d538  c0 02 8d e5                                      str r0, [sp, #0x2c0]
0060d53c  0b 00 a0 e1                                      mov r0, fp
0060d540  02 11 83 e2                                      add r1, r3, #0x80000000
0060d544  08 06 f4 eb                                      bl #0x30ed6c
0060d548  09 10 a0 e1                                      mov r1, sb
0060d54c  00 60 a0 e1                                      mov r6, r0
0060d550  14 00 9d e5                                      ldr r0, [sp, #0x14]
0060d554  04 06 f4 eb                                      bl #0x30ed6c
0060d558  00 10 a0 e1                                      mov r1, r0
0060d55c  06 00 a0 e1                                      mov r0, r6
0060d560  8f 05 f4 eb                                      bl #0x30eba4
0060d564  c4 02 8d e5                                      str r0, [sp, #0x2c4]
0060d568  af 0f 8d e2                                      add r0, sp, #0x2bc
0060d56c  db 44 f5 eb                                      bl #0x35e8e0
0060d570  08 60 90 e5                                      ldr r6, [r0, #8]
0060d574  04 20 90 e5                                      ldr r2, [r0, #4]
0060d578  00 30 a0 e1                                      mov r3, r0
0060d57c  02 c1 86 e2                                      add ip, r6, #0x80000000
0060d580  2c c0 8d e5                                      str ip, [sp, #0x2c]
0060d584  00 30 93 e5                                      ldr r3, [r3]
0060d588  02 10 a0 e1                                      mov r1, r2
0060d58c  08 00 9d e5                                      ldr r0, [sp, #8]
0060d590  02 21 82 e2                                      add r2, r2, #0x80000000
0060d594  28 20 8d e5                                      str r2, [sp, #0x28]
0060d598  0c 30 8d e5                                      str r3, [sp, #0xc]
0060d59c  f2 05 f4 eb                                      bl #0x30ed6c
0060d5a0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0060d5a4  00 30 a0 e1                                      mov r3, r0
0060d5a8  0b 00 a0 e1                                      mov r0, fp
0060d5ac  00 30 8d e5                                      str r3, [sp]
0060d5b0  ed 05 f4 eb                                      bl #0x30ed6c
0060d5b4  00 30 9d e5                                      ldr r3, [sp]
0060d5b8  00 10 a0 e1                                      mov r1, r0
0060d5bc  03 00 a0 e1                                      mov r0, r3
0060d5c0  77 05 f4 eb                                      bl #0x30eba4
0060d5c4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0060d5c8  06 10 a0 e1                                      mov r1, r6
0060d5cc  b0 02 8d e5                                      str r0, [sp, #0x2b0]
0060d5d0  02 21 82 e2                                      add r2, r2, #0x80000000
0060d5d4  09 00 a0 e1                                      mov r0, sb
0060d5d8  24 20 8d e5                                      str r2, [sp, #0x24]
0060d5dc  e2 05 f4 eb                                      bl #0x30ed6c
0060d5e0  24 10 9d e5                                      ldr r1, [sp, #0x24]
0060d5e4  00 60 a0 e1                                      mov r6, r0
0060d5e8  08 00 9d e5                                      ldr r0, [sp, #8]
0060d5ec  de 05 f4 eb                                      bl #0x30ed6c
0060d5f0  00 10 a0 e1                                      mov r1, r0
0060d5f4  06 00 a0 e1                                      mov r0, r6
0060d5f8  69 05 f4 eb                                      bl #0x30eba4
0060d5fc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0060d600  b4 02 8d e5                                      str r0, [sp, #0x2b4]
0060d604  0b 00 a0 e1                                      mov r0, fp
0060d608  d7 05 f4 eb                                      bl #0x30ed6c
0060d60c  28 10 9d e5                                      ldr r1, [sp, #0x28]
0060d610  00 60 a0 e1                                      mov r6, r0
0060d614  09 00 a0 e1                                      mov r0, sb
0060d618  d3 05 f4 eb                                      bl #0x30ed6c
0060d61c  00 10 a0 e1                                      mov r1, r0
0060d620  06 00 a0 e1                                      mov r0, r6
0060d624  5e 05 f4 eb                                      bl #0x30eba4
0060d628  b8 02 8d e5                                      str r0, [sp, #0x2b8]
0060d62c  2b 0e 8d e2                                      add r0, sp, #0x2b0
0060d630  aa 44 f5 eb                                      bl #0x35e8e0
0060d634  08 30 90 e5                                      ldr r3, [r0, #8]
0060d638  1c 30 8d e5                                      str r3, [sp, #0x1c]
0060d63c  00 c0 90 e5                                      ldr ip, [r0]
0060d640  0c c0 8d e5                                      str ip, [sp, #0xc]
0060d644  04 00 90 e5                                      ldr r0, [r0, #4]
0060d648  14 00 8d e5                                      str r0, [sp, #0x14]
0060d64c  57 cf 8d e2                                      add ip, sp, #0x15c
0060d650  00 60 a0 e3                                      mov r6, #0
0060d654  0c 00 a0 e1                                      mov r0, ip
0060d658  06 10 a0 e1                                      mov r1, r6
0060d65c  40 20 a0 e3                                      mov r2, #0x40
0060d660  04 c0 8d e5                                      str ip, [sp, #4]
0060d664  7d 03 f4 eb                                      bl #0x30e460
0060d668  fe 25 a0 e3                                      mov r2, #0x3f800000
0060d66c  98 21 8d e5                                      str r2, [sp, #0x198]
0060d670  28 20 9d e5                                      ldr r2, [sp, #0x28]
0060d674  24 10 9d e5                                      ldr r1, [sp, #0x24]
0060d678  00 30 a0 e3                                      mov r3, #0
0060d67c  60 21 8d e5                                      str r2, [sp, #0x160]
0060d680  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0060d684  5c 11 8d e5                                      str r1, [sp, #0x15c]
0060d688  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0060d68c  6c 21 8d e5                                      str r2, [sp, #0x16c]
0060d690  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0060d694  64 11 8d e5                                      str r1, [sp, #0x164]
0060d698  14 10 9d e5                                      ldr r1, [sp, #0x14]
0060d69c  74 21 8d e5                                      str r2, [sp, #0x174]
0060d6a0  30 20 9d e5                                      ldr r2, [sp, #0x30]
0060d6a4  70 11 8d e5                                      str r1, [sp, #0x170]
0060d6a8  08 10 9d e5                                      ldr r1, [sp, #8]
0060d6ac  f4 21 8d e5                                      str r2, [sp, #0x1f4]
0060d6b0  38 20 9d e5                                      ldr r2, [sp, #0x38]
0060d6b4  84 11 8d e5                                      str r1, [sp, #0x184]
0060d6b8  34 10 9d e5                                      ldr r1, [sp, #0x34]
0060d6bc  fc 21 8d e5                                      str r2, [sp, #0x1fc]
0060d6c0  1c 23 9d e5                                      ldr r2, [sp, #0x31c]
0060d6c4  05 00 a0 e1                                      mov r0, r5
0060d6c8  f8 11 8d e5                                      str r1, [sp, #0x1f8]
0060d6cc  04 22 8d e5                                      str r2, [sp, #0x204]
0060d6d0  20 23 9d e5                                      ldr r2, [sp, #0x320]
0060d6d4  7c 91 8d e5                                      str sb, [sp, #0x17c]
0060d6d8  80 b1 8d e5                                      str fp, [sp, #0x180]
0060d6dc  08 22 8d e5                                      str r2, [sp, #0x208]
0060d6e0  24 23 9d e5                                      ldr r2, [sp, #0x324]
0060d6e4  e4 a1 8d e5                                      str sl, [sp, #0x1e4]
0060d6e8  e8 81 8d e5                                      str r8, [sp, #0x1e8]
0060d6ec  0c 22 8d e5                                      str r2, [sp, #0x20c]
0060d6f0  ec 71 8d e5                                      str r7, [sp, #0x1ec]
0060d6f4  9c 61 cd e5                                      strb r6, [sp, #0x19c]
0060d6f8  24 62 cd e5                                      strb r6, [sp, #0x224]
0060d6fc  f0 31 8d e5                                      str r3, [sp, #0x1f0]
0060d700  00 32 8d e5                                      str r3, [sp, #0x200]
0060d704  10 32 8d e5                                      str r3, [sp, #0x210]
0060d708  00 30 8d e5                                      str r3, [sp]
0060d70c  f9 d2 fd eb                                      bl #0x5822f8
0060d710  00 20 50 e2                                      subs r2, r0, #0
0060d714  08 10 9d e8                                      ldm sp, {r3, ip}
0060d718  66 00 00 0a                                      beq #0x60d8b8
0060d71c  46 7f 8d e2                                      add r7, sp, #0x118
0060d720  0c 00 a0 e1                                      mov r0, ip
0060d724  05 10 a0 e1                                      mov r1, r5
0060d728  07 20 a0 e1                                      mov r2, r7
0060d72c  58 61 cd e5                                      strb r6, [sp, #0x158]
0060d730  53 28 fe eb                                      bl #0x597884
0060d734  07 e0 a0 e1                                      mov lr, r7
0060d738  05 c0 a0 e1                                      mov ip, r5
0060d73c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0060d740  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0060d744  24 62 cd e5                                      strb r6, [sp, #0x224]
0060d748  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0060d74c  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0060d750  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0060d754  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0060d758  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
0060d75c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0060d760  58 31 dd e5                                      ldrb r3, [sp, #0x158]
0060d764  24 32 cd e5                                      strb r3, [sp, #0x224]
0060d768  00 70 a0 e3                                      mov r7, #0
0060d76c  d4 a0 8d e2                                      add sl, sp, #0xd4
0060d770  07 10 a0 e1                                      mov r1, r7
0060d774  40 20 a0 e3                                      mov r2, #0x40
0060d778  0a 00 a0 e1                                      mov r0, sl
0060d77c  37 03 f4 eb                                      bl #0x30e460
0060d780  34 33 9d e5                                      ldr r3, [sp, #0x334]
0060d784  90 80 8d e2                                      add r8, sp, #0x90
0060d788  fe 65 a0 e3                                      mov r6, #0x3f800000
0060d78c  04 31 8d e5                                      str r3, [sp, #0x104]
0060d790  38 33 9d e5                                      ldr r3, [sp, #0x338]
0060d794  07 10 a0 e1                                      mov r1, r7
0060d798  40 20 a0 e3                                      mov r2, #0x40
0060d79c  08 31 8d e5                                      str r3, [sp, #0x108]
0060d7a0  3c 33 9d e5                                      ldr r3, [sp, #0x33c]
0060d7a4  08 00 a0 e1                                      mov r0, r8
0060d7a8  d4 60 8d e5                                      str r6, [sp, #0xd4]
0060d7ac  0c 31 8d e5                                      str r3, [sp, #0x10c]
0060d7b0  e8 60 8d e5                                      str r6, [sp, #0xe8]
0060d7b4  fc 60 8d e5                                      str r6, [sp, #0xfc]
0060d7b8  10 61 8d e5                                      str r6, [sp, #0x110]
0060d7bc  14 71 cd e5                                      strb r7, [sp, #0x114]
0060d7c0  26 03 f4 eb                                      bl #0x30e460
0060d7c4  05 10 a0 e1                                      mov r1, r5
0060d7c8  0a 00 a0 e1                                      mov r0, sl
0060d7cc  4c 50 8d e2                                      add r5, sp, #0x4c
0060d7d0  01 a0 a0 e3                                      mov sl, #1
0060d7d4  08 20 a0 e1                                      mov r2, r8
0060d7d8  90 60 8d e5                                      str r6, [sp, #0x90]
0060d7dc  a4 60 8d e5                                      str r6, [sp, #0xa4]
0060d7e0  b8 60 8d e5                                      str r6, [sp, #0xb8]
0060d7e4  cc 60 8d e5                                      str r6, [sp, #0xcc]
0060d7e8  d0 a0 cd e5                                      strb sl, [sp, #0xd0]
0060d7ec  24 28 fe eb                                      bl #0x597884
0060d7f0  07 10 a0 e1                                      mov r1, r7
0060d7f4  40 20 a0 e3                                      mov r2, #0x40
0060d7f8  05 00 a0 e1                                      mov r0, r5
0060d7fc  17 03 f4 eb                                      bl #0x30e460
0060d800  18 10 9d e5                                      ldr r1, [sp, #0x18]
0060d804  05 20 a0 e1                                      mov r2, r5
0060d808  08 00 a0 e1                                      mov r0, r8
0060d80c  88 60 8d e5                                      str r6, [sp, #0x88]
0060d810  8c a0 cd e5                                      strb sl, [sp, #0x8c]
0060d814  4c 60 8d e5                                      str r6, [sp, #0x4c]
0060d818  60 60 8d e5                                      str r6, [sp, #0x60]
0060d81c  74 60 8d e5                                      str r6, [sp, #0x74]
0060d820  17 28 fe eb                                      bl #0x597884
0060d824  1c 21 94 e5                                      ldr r2, [r4, #0x11c]
0060d828  00 30 94 e5                                      ldr r3, [r4]
0060d82c  04 00 a0 e1                                      mov r0, r4
0060d830  20 20 82 e3                                      orr r2, r2, #0x20
0060d834  1c 21 84 e5                                      str r2, [r4, #0x11c]
0060d838  0f e0 a0 e1                                      mov lr, pc
0060d83c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0060d840  24 20 84 e2                                      add r2, r4, #0x24
0060d844  00 10 a0 e1                                      mov r1, r0
0060d848  05 00 a0 e1                                      mov r0, r5
0060d84c  0c 28 fe eb                                      bl #0x597884
0060d850  10 30 9d e5                                      ldr r3, [sp, #0x10]
0060d854  00 00 53 e3                                      cmp r3, #0
0060d858  f4 50 b4 15                                      ldrne r5, [r4, #0xf4]!
0060d85c  12 00 00 1a                                      bne #0x60d8ac
0060d860  d1 df 8d e2                                      add sp, sp, #0x344
0060d864  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0060d868  04 00 a0 e1                                      mov r0, r4
0060d86c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0060d870  fa 28 fe eb                                      bl #0x597c60
0060d874  10 30 9d e5                                      ldr r3, [sp, #0x10]
0060d878  00 00 53 e3                                      cmp r3, #0
0060d87c  f4 50 b4 15                                      ldrne r5, [r4, #0xf4]!
0060d880  09 00 00 1a                                      bne #0x60d8ac
0060d884  f5 ff ff ea                                      b #0x60d860
0060d888  00 00 55 e3                                      cmp r5, #0
0060d88c  05 30 a0 01                                      moveq r3, r5
0060d890  04 30 45 12                                      subne r3, r5, #4
0060d894  03 00 a0 e1                                      mov r0, r3
0060d898  01 10 a0 e3                                      mov r1, #1
0060d89c  00 30 93 e5                                      ldr r3, [r3]
0060d8a0  0f e0 a0 e1                                      mov lr, pc
0060d8a4  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
0060d8a8  00 50 95 e5                                      ldr r5, [r5]
0060d8ac  04 00 55 e1                                      cmp r5, r4
0060d8b0  f4 ff ff 1a                                      bne #0x60d888
0060d8b4  e9 ff ff ea                                      b #0x60d860
0060d8b8  02 30 85 e7                                      str r3, [r5, r2]
0060d8bc  04 20 82 e2                                      add r2, r2, #4
0060d8c0  40 00 52 e3                                      cmp r2, #0x40
0060d8c4  fb ff ff 1a                                      bne #0x60d8b8
0060d8c8  00 30 a0 e3                                      mov r3, #0
0060d8cc  24 32 cd e5                                      strb r3, [sp, #0x224]
0060d8d0  a4 ff ff ea                                      b #0x60d768
0060d8d4  40 c0 9d e5                                      ldr ip, [sp, #0x40]
0060d8d8  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0060d8dc  44 30 9d e5                                      ldr r3, [sp, #0x44]
0060d8e0  02 c1 8c e2                                      add ip, ip, #0x80000000
0060d8e4  02 11 81 e2                                      add r1, r1, #0x80000000
0060d8e8  02 91 83 e2                                      add sb, r3, #0x80000000
0060d8ec  0c b0 a0 e1                                      mov fp, ip
0060d8f0  08 10 8d e5                                      str r1, [sp, #8]
0060d8f4  54 ff ff ea                                      b #0x60d64c
0060d8f8  04 30 93 e5                                      ldr r3, [r3, #4]
0060d8fc  02 00 53 e3                                      cmp r3, #2
0060d900  f5 00 00 1a                                      bne #0x60dcdc
0060d904  44 10 9d e5                                      ldr r1, [sp, #0x44]
0060d908  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
0060d90c  40 20 9d e5                                      ldr r2, [sp, #0x40]
0060d910  02 11 81 e2                                      add r1, r1, #0x80000000
0060d914  02 c1 8c e2                                      add ip, ip, #0x80000000
0060d918  0c 10 8d e5                                      str r1, [sp, #0xc]
0060d91c  02 31 82 e2                                      add r3, r2, #0x80000000
0060d920  08 c0 8d e5                                      str ip, [sp, #8]
0060d924  18 b3 9d e5                                      ldr fp, [sp, #0x318]
0060d928  02 01 83 e2                                      add r0, r3, #0x80000000
0060d92c  00 30 8d e5                                      str r3, [sp]
0060d930  0b 10 a0 e1                                      mov r1, fp
0060d934  0c 05 f4 eb                                      bl #0x30ed6c
0060d938  14 63 9d e5                                      ldr r6, [sp, #0x314]
0060d93c  08 10 9d e5                                      ldr r1, [sp, #8]
0060d940  00 90 a0 e1                                      mov sb, r0
0060d944  06 00 a0 e1                                      mov r0, r6
0060d948  07 05 f4 eb                                      bl #0x30ed6c
0060d94c  00 10 a0 e1                                      mov r1, r0
0060d950  09 00 a0 e1                                      mov r0, sb
0060d954  92 04 f4 eb                                      bl #0x30eba4
0060d958  08 c0 9d e5                                      ldr ip, [sp, #8]
0060d95c  10 93 9d e5                                      ldr sb, [sp, #0x310]
0060d960  14 00 8d e5                                      str r0, [sp, #0x14]
0060d964  02 01 8c e2                                      add r0, ip, #0x80000000
0060d968  09 10 a0 e1                                      mov r1, sb
0060d96c  fe 04 f4 eb                                      bl #0x30ed6c
0060d970  0b 10 a0 e1                                      mov r1, fp
0060d974  00 20 a0 e1                                      mov r2, r0
0060d978  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0060d97c  04 20 8d e5                                      str r2, [sp, #4]
0060d980  f9 04 f4 eb                                      bl #0x30ed6c
0060d984  04 20 9d e5                                      ldr r2, [sp, #4]
0060d988  00 10 a0 e1                                      mov r1, r0
0060d98c  02 00 a0 e1                                      mov r0, r2
0060d990  83 04 f4 eb                                      bl #0x30eba4
0060d994  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0060d998  08 00 8d e5                                      str r0, [sp, #8]
0060d99c  06 00 a0 e1                                      mov r0, r6
0060d9a0  02 11 82 e2                                      add r1, r2, #0x80000000
0060d9a4  f0 04 f4 eb                                      bl #0x30ed6c
0060d9a8  00 30 9d e5                                      ldr r3, [sp]
0060d9ac  00 20 a0 e1                                      mov r2, r0
0060d9b0  09 10 a0 e1                                      mov r1, sb
0060d9b4  03 00 a0 e1                                      mov r0, r3
0060d9b8  04 20 8d e5                                      str r2, [sp, #4]
0060d9bc  ea 04 f4 eb                                      bl #0x30ed6c
0060d9c0  04 20 9d e5                                      ldr r2, [sp, #4]
0060d9c4  00 10 a0 e1                                      mov r1, r0
0060d9c8  02 00 a0 e1                                      mov r0, r2
0060d9cc  74 04 f4 eb                                      bl #0x30eba4
0060d9d0  02 11 86 e2                                      add r1, r6, #0x80000000
0060d9d4  04 00 8d e5                                      str r0, [sp, #4]
0060d9d8  e3 04 f4 eb                                      bl #0x30ed6c
0060d9dc  08 10 9d e5                                      ldr r1, [sp, #8]
0060d9e0  00 30 a0 e1                                      mov r3, r0
0060d9e4  0b 00 a0 e1                                      mov r0, fp
0060d9e8  00 30 8d e5                                      str r3, [sp]
0060d9ec  de 04 f4 eb                                      bl #0x30ed6c
0060d9f0  00 30 9d e5                                      ldr r3, [sp]
0060d9f4  00 10 a0 e1                                      mov r1, r0
0060d9f8  03 00 a0 e1                                      mov r0, r3
0060d9fc  68 04 f4 eb                                      bl #0x30eba4
0060da00  02 11 8b e2                                      add r1, fp, #0x80000000
0060da04  e0 02 8d e5                                      str r0, [sp, #0x2e0]
0060da08  14 00 9d e5                                      ldr r0, [sp, #0x14]
0060da0c  d6 04 f4 eb                                      bl #0x30ed6c
0060da10  04 20 9d e5                                      ldr r2, [sp, #4]
0060da14  00 b0 a0 e1                                      mov fp, r0
0060da18  09 00 a0 e1                                      mov r0, sb
0060da1c  02 10 a0 e1                                      mov r1, r2
0060da20  d1 04 f4 eb                                      bl #0x30ed6c
0060da24  00 10 a0 e1                                      mov r1, r0
0060da28  0b 00 a0 e1                                      mov r0, fp
0060da2c  5c 04 f4 eb                                      bl #0x30eba4
0060da30  02 11 89 e2                                      add r1, sb, #0x80000000
0060da34  e4 02 8d e5                                      str r0, [sp, #0x2e4]
0060da38  08 00 9d e5                                      ldr r0, [sp, #8]
0060da3c  ca 04 f4 eb                                      bl #0x30ed6c
0060da40  14 10 9d e5                                      ldr r1, [sp, #0x14]
0060da44  00 90 a0 e1                                      mov sb, r0
0060da48  06 00 a0 e1                                      mov r0, r6
0060da4c  c6 04 f4 eb                                      bl #0x30ed6c
0060da50  00 10 a0 e1                                      mov r1, r0
0060da54  09 00 a0 e1                                      mov r0, sb
0060da58  51 04 f4 eb                                      bl #0x30eba4
0060da5c  e8 02 8d e5                                      str r0, [sp, #0x2e8]
0060da60  2e 0e 8d e2                                      add r0, sp, #0x2e0
0060da64  9d 43 f5 eb                                      bl #0x35e8e0
0060da68  14 23 9d e5                                      ldr r2, [sp, #0x314]
0060da6c  00 30 a0 e1                                      mov r3, r0
0060da70  08 b0 93 e5                                      ldr fp, [r3, #8]
0060da74  00 90 93 e5                                      ldr sb, [r3]
0060da78  04 30 93 e5                                      ldr r3, [r3, #4]
0060da7c  02 11 82 e2                                      add r1, r2, #0x80000000
0060da80  07 00 a0 e1                                      mov r0, r7
0060da84  04 20 8d e5                                      str r2, [sp, #4]
0060da88  08 30 8d e5                                      str r3, [sp, #8]
0060da8c  b6 04 f4 eb                                      bl #0x30ed6c
0060da90  18 13 9d e5                                      ldr r1, [sp, #0x318]
0060da94  00 60 a0 e1                                      mov r6, r0
0060da98  08 00 a0 e1                                      mov r0, r8
0060da9c  b2 04 f4 eb                                      bl #0x30ed6c
0060daa0  00 10 a0 e1                                      mov r1, r0
0060daa4  06 00 a0 e1                                      mov r0, r6
0060daa8  3d 04 f4 eb                                      bl #0x30eba4
0060daac  18 33 9d e5                                      ldr r3, [sp, #0x318]
0060dab0  d4 02 8d e5                                      str r0, [sp, #0x2d4]
0060dab4  0a 00 a0 e1                                      mov r0, sl
0060dab8  02 11 83 e2                                      add r1, r3, #0x80000000
0060dabc  aa 04 f4 eb                                      bl #0x30ed6c
0060dac0  10 13 9d e5                                      ldr r1, [sp, #0x310]
0060dac4  00 60 a0 e1                                      mov r6, r0
0060dac8  07 00 a0 e1                                      mov r0, r7
0060dacc  a6 04 f4 eb                                      bl #0x30ed6c
0060dad0  00 10 a0 e1                                      mov r1, r0
0060dad4  06 00 a0 e1                                      mov r0, r6
0060dad8  31 04 f4 eb                                      bl #0x30eba4
0060dadc  10 c3 9d e5                                      ldr ip, [sp, #0x310]
0060dae0  d8 02 8d e5                                      str r0, [sp, #0x2d8]
0060dae4  08 00 a0 e1                                      mov r0, r8
0060dae8  02 11 8c e2                                      add r1, ip, #0x80000000
0060daec  9e 04 f4 eb                                      bl #0x30ed6c
0060daf0  04 20 9d e5                                      ldr r2, [sp, #4]
0060daf4  00 60 a0 e1                                      mov r6, r0
0060daf8  0a 00 a0 e1                                      mov r0, sl
0060dafc  02 10 a0 e1                                      mov r1, r2
0060db00  99 04 f4 eb                                      bl #0x30ed6c
0060db04  00 10 a0 e1                                      mov r1, r0
0060db08  06 00 a0 e1                                      mov r0, r6
0060db0c  24 04 f4 eb                                      bl #0x30eba4
0060db10  dc 02 8d e5                                      str r0, [sp, #0x2dc]
0060db14  b5 0f 8d e2                                      add r0, sp, #0x2d4
0060db18  70 43 f5 eb                                      bl #0x35e8e0
0060db1c  00 60 90 e5                                      ldr r6, [r0]
0060db20  00 30 a0 e1                                      mov r3, r0
0060db24  04 70 90 e5                                      ldr r7, [r0, #4]
0060db28  06 10 a0 e1                                      mov r1, r6
0060db2c  09 00 a0 e1                                      mov r0, sb
0060db30  08 80 93 e5                                      ldr r8, [r3, #8]
0060db34  8c 04 f4 eb                                      bl #0x30ed6c
0060db38  07 10 a0 e1                                      mov r1, r7
0060db3c  00 a0 a0 e1                                      mov sl, r0
0060db40  08 00 9d e5                                      ldr r0, [sp, #8]
0060db44  88 04 f4 eb                                      bl #0x30ed6c
0060db48  00 10 a0 e1                                      mov r1, r0
0060db4c  0a 00 a0 e1                                      mov r0, sl
0060db50  13 04 f4 eb                                      bl #0x30eba4
0060db54  08 10 a0 e1                                      mov r1, r8
0060db58  00 a0 a0 e1                                      mov sl, r0
0060db5c  0b 00 a0 e1                                      mov r0, fp
0060db60  81 04 f4 eb                                      bl #0x30ed6c
0060db64  00 10 a0 e1                                      mov r1, r0
0060db68  0a 00 a0 e1                                      mov r0, sl
0060db6c  0c 04 f4 eb                                      bl #0x30eba4
0060db70  bf 14 a0 e3                                      mov r1, #0xbf000000
0060db74  02 15 81 e2                                      add r1, r1, #0x800000
0060db78  00 a0 a0 e1                                      mov sl, r0
0060db7c  e2 02 f4 eb                                      bl #0x30e70c
0060db80  00 00 50 e3                                      cmp r0, #0
0060db84  bf a4 a0 13                                      movne sl, #0xbf000000
0060db88  02 a5 8a 12                                      addne sl, sl, #0x800000
0060db8c  04 00 00 1a                                      bne #0x60dba4
0060db90  0a 00 a0 e1                                      mov r0, sl
0060db94  fe 15 a0 e3                                      mov r1, #0x3f800000
0060db98  db 02 f4 eb                                      bl #0x30e70c
0060db9c  00 00 50 e3                                      cmp r0, #0
0060dba0  fe a5 a0 03                                      moveq sl, #0x3f800000
0060dba4  0a 00 a0 e1                                      mov r0, sl
0060dba8  0b 02 f4 eb                                      bl #0x30e3dc
0060dbac  08 20 9d e5                                      ldr r2, [sp, #8]
0060dbb0  00 a0 a0 e1                                      mov sl, r0
0060dbb4  08 00 a0 e1                                      mov r0, r8
0060dbb8  02 11 82 e2                                      add r1, r2, #0x80000000
0060dbbc  6a 04 f4 eb                                      bl #0x30ed6c
0060dbc0  07 10 a0 e1                                      mov r1, r7
0060dbc4  00 30 a0 e1                                      mov r3, r0
0060dbc8  0b 00 a0 e1                                      mov r0, fp
0060dbcc  00 30 8d e5                                      str r3, [sp]
0060dbd0  65 04 f4 eb                                      bl #0x30ed6c
0060dbd4  00 30 9d e5                                      ldr r3, [sp]
0060dbd8  00 10 a0 e1                                      mov r1, r0
0060dbdc  03 00 a0 e1                                      mov r0, r3
0060dbe0  ef 03 f4 eb                                      bl #0x30eba4
0060dbe4  10 13 9d e5                                      ldr r1, [sp, #0x310]
0060dbe8  5f 04 f4 eb                                      bl #0x30ed6c
0060dbec  02 11 8b e2                                      add r1, fp, #0x80000000
0060dbf0  00 30 a0 e1                                      mov r3, r0
0060dbf4  06 00 a0 e1                                      mov r0, r6
0060dbf8  00 30 8d e5                                      str r3, [sp]
0060dbfc  5a 04 f4 eb                                      bl #0x30ed6c
0060dc00  08 10 a0 e1                                      mov r1, r8
0060dc04  00 b0 a0 e1                                      mov fp, r0
0060dc08  09 00 a0 e1                                      mov r0, sb
0060dc0c  56 04 f4 eb                                      bl #0x30ed6c
0060dc10  00 10 a0 e1                                      mov r1, r0
0060dc14  0b 00 a0 e1                                      mov r0, fp
0060dc18  e1 03 f4 eb                                      bl #0x30eba4
0060dc1c  14 13 9d e5                                      ldr r1, [sp, #0x314]
0060dc20  51 04 f4 eb                                      bl #0x30ed6c
0060dc24  00 30 9d e5                                      ldr r3, [sp]
0060dc28  00 10 a0 e1                                      mov r1, r0
0060dc2c  03 00 a0 e1                                      mov r0, r3
0060dc30  db 03 f4 eb                                      bl #0x30eba4
0060dc34  02 11 89 e2                                      add r1, sb, #0x80000000
0060dc38  00 80 a0 e1                                      mov r8, r0
0060dc3c  07 00 a0 e1                                      mov r0, r7
0060dc40  49 04 f4 eb                                      bl #0x30ed6c
0060dc44  06 10 a0 e1                                      mov r1, r6
0060dc48  00 70 a0 e1                                      mov r7, r0
0060dc4c  08 00 9d e5                                      ldr r0, [sp, #8]
0060dc50  45 04 f4 eb                                      bl #0x30ed6c
0060dc54  00 10 a0 e1                                      mov r1, r0
0060dc58  07 00 a0 e1                                      mov r0, r7
0060dc5c  d0 03 f4 eb                                      bl #0x30eba4
0060dc60  18 13 9d e5                                      ldr r1, [sp, #0x318]
0060dc64  40 04 f4 eb                                      bl #0x30ed6c
0060dc68  00 10 a0 e1                                      mov r1, r0
0060dc6c  08 00 a0 e1                                      mov r0, r8
0060dc70  cb 03 f4 eb                                      bl #0x30eba4
0060dc74  00 10 a0 e3                                      mov r1, #0
0060dc78  a3 02 f4 eb                                      bl #0x30e70c
0060dc7c  00 00 50 e3                                      cmp r0, #0
0060dc80  02 a1 8a 02                                      addeq sl, sl, #0x80000000
0060dc84  57 6f 8d e2                                      add r6, sp, #0x15c
0060dc88  00 30 a0 e3                                      mov r3, #0
0060dc8c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0060dc90  fe c5 a0 e3                                      mov ip, #0x3f800000
0060dc94  0a 10 a0 e1                                      mov r1, sl
0060dc98  1a 7e 8d e2                                      add r7, sp, #0x1a0
0060dc9c  06 00 a0 e1                                      mov r0, r6
0060dca0  64 31 8d e5                                      str r3, [sp, #0x164]
0060dca4  68 c1 8d e5                                      str ip, [sp, #0x168]
0060dca8  5c 31 8d e5                                      str r3, [sp, #0x15c]
0060dcac  60 31 8d e5                                      str r3, [sp, #0x160]
0060dcb0  41 fc ff eb                                      bl #0x60cdbc
0060dcb4  06 00 a0 e1                                      mov r0, r6
0060dcb8  07 10 a0 e1                                      mov r1, r7
0060dcbc  00 30 a0 e3                                      mov r3, #0
0060dcc0  e0 31 cd e5                                      strb r3, [sp, #0x1e0]
0060dcc4  81 49 fd eb                                      bl #0x5602d0
0060dcc8  05 00 a0 e1                                      mov r0, r5
0060dccc  07 10 a0 e1                                      mov r1, r7
0060dcd0  41 20 a0 e3                                      mov r2, #0x41
0060dcd4  e3 02 f4 eb                                      bl #0x30e868
0060dcd8  a2 fe ff ea                                      b #0x60d768
0060dcdc  38 13 9d e5                                      ldr r1, [sp, #0x338]
0060dce0  2c 03 9d e5                                      ldr r0, [sp, #0x32c]
0060dce4  b0 01 f4 eb                                      bl #0x30e3ac
0060dce8  3c 13 9d e5                                      ldr r1, [sp, #0x33c]
0060dcec  00 60 a0 e1                                      mov r6, r0
0060dcf0  30 03 9d e5                                      ldr r0, [sp, #0x330]
0060dcf4  ac 01 f4 eb                                      bl #0x30e3ac
0060dcf8  34 13 9d e5                                      ldr r1, [sp, #0x334]
0060dcfc  00 90 a0 e1                                      mov sb, r0
0060dd00  28 03 9d e5                                      ldr r0, [sp, #0x328]
0060dd04  a8 01 f4 eb                                      bl #0x30e3ac
0060dd08  ec 02 8d e5                                      str r0, [sp, #0x2ec]
0060dd0c  bb 0f 8d e2                                      add r0, sp, #0x2ec
0060dd10  f0 62 8d e5                                      str r6, [sp, #0x2f0]
0060dd14  f4 92 8d e5                                      str sb, [sp, #0x2f4]
0060dd18  f0 42 f5 eb                                      bl #0x35e8e0
0060dd1c  08 10 90 e5                                      ldr r1, [r0, #8]
0060dd20  08 10 8d e5                                      str r1, [sp, #8]
0060dd24  00 20 90 e5                                      ldr r2, [r0]
0060dd28  0c 20 8d e5                                      str r2, [sp, #0xc]
0060dd2c  04 30 90 e5                                      ldr r3, [r0, #4]
0060dd30  fb fe ff ea                                      b #0x60d924
