; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035bea4, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CEmptySceneNode
; alias: _ZNK6glitch5scene15CEmptySceneNode7getTypeEv
; demangled: glitch::scene::CEmptySceneNode::getType() const
; decoder-mode: arm
0035bea4  65 0d 06 e3                                      movw r0, #0x6d65
0035bea8  74 09 47 e3                                      movt r0, #0x7974
0035beac  1e ff 2f e1                                      bx lr

; FUNCTION 0x0035c2a4, declared_size=76, range_size=76, mode=arm
; class-group: glitch::scene::CEmptySceneNode
; alias: _ZN6glitch5scene15CEmptySceneNodeD1Ev
; demangled: glitch::scene::CEmptySceneNode::~CEmptySceneNode()
; decoder-mode: arm
0035c2a4  38 30 9f e5                                      ldr r3, [pc, #0x38]
0035c2a8  38 20 9f e5                                      ldr r2, [pc, #0x38]
0035c2ac  38 10 9f e5                                      ldr r1, [pc, #0x38]
0035c2b0  03 30 8f e0                                      add r3, pc, r3
0035c2b4  02 20 93 e7                                      ldr r2, [r3, r2]
0035c2b8  01 10 93 e7                                      ldr r1, [r3, r1]
0035c2bc  10 40 2d e9                                      push {r4, lr}
0035c2c0  12 ce 82 e2                                      add ip, r2, #0x120
0035c2c4  1c 20 82 e2                                      add r2, r2, #0x1c
0035c2c8  00 40 a0 e1                                      mov r4, r0
0035c2cc  00 20 80 e5                                      str r2, [r0]
0035c2d0  48 c1 80 e5                                      str ip, [r0, #0x148]
0035c2d4  04 10 81 e2                                      add r1, r1, #4
0035c2d8  77 f2 08 eb                                      bl #0x598cbc
0035c2dc  04 00 a0 e1                                      mov r0, r4
0035c2e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0035c2e4  e0 87 63 00 e8 43 00 00 18 41 00 00              .byte 0xe0, 0x87, 0x63, 0x00, 0xe8, 0x43, 0x00, 0x00, 0x18, 0x41, 0x00, 0x00

; FUNCTION 0x0035c2f0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CEmptySceneNode
; alias: _ZTv0_n24_N6glitch5scene15CEmptySceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CEmptySceneNode::~CEmptySceneNode()
; decoder-mode: arm
0035c2f0  00 30 90 e5                                      ldr r3, [r0]
0035c2f4  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035c2f8  03 00 80 e0                                      add r0, r0, r3
0035c2fc  e8 ff ff ea                                      b #0x35c2a4

; FUNCTION 0x0035c300, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CEmptySceneNode
; alias: _ZTv0_n12_N6glitch5scene15CEmptySceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CEmptySceneNode::~CEmptySceneNode()
; decoder-mode: arm
0035c300  00 30 90 e5                                      ldr r3, [r0]
0035c304  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035c308  03 00 80 e0                                      add r0, r0, r3
0035c30c  e4 ff ff ea                                      b #0x35c2a4

; FUNCTION 0x0035db04, declared_size=124, range_size=124, mode=arm
; class-group: glitch::scene::CEmptySceneNode
; alias: _ZN6glitch5scene15CEmptySceneNodeD0Ev
; demangled: glitch::scene::CEmptySceneNode::~CEmptySceneNode()
; decoder-mode: arm
0035db04  70 40 2d e9                                      push {r4, r5, r6, lr}
0035db08  60 50 9f e5                                      ldr r5, [pc, #0x60]
0035db0c  60 30 9f e5                                      ldr r3, [pc, #0x60]
0035db10  60 60 9f e5                                      ldr r6, [pc, #0x60]
0035db14  05 50 8f e0                                      add r5, pc, r5
0035db18  03 30 95 e7                                      ldr r3, [r5, r3]
0035db1c  06 60 95 e7                                      ldr r6, [r5, r6]
0035db20  00 40 a0 e1                                      mov r4, r0
0035db24  12 2e 83 e2                                      add r2, r3, #0x120
0035db28  1c 30 83 e2                                      add r3, r3, #0x1c
0035db2c  04 10 86 e2                                      add r1, r6, #4
0035db30  00 30 80 e5                                      str r3, [r0]
0035db34  48 21 80 e5                                      str r2, [r0, #0x148]
0035db38  5f ec 08 eb                                      bl #0x598cbc
0035db3c  18 20 96 e5                                      ldr r2, [r6, #0x18]
0035db40  34 30 9f e5                                      ldr r3, [pc, #0x34]
0035db44  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
0035db48  00 20 84 e5                                      str r2, [r4]
0035db4c  03 30 95 e7                                      ldr r3, [r5, r3]
0035db50  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0035db54  04 00 a0 e1                                      mov r0, r4
0035db58  08 30 83 e2                                      add r3, r3, #8
0035db5c  02 10 84 e7                                      str r1, [r4, r2]
0035db60  48 31 84 e5                                      str r3, [r4, #0x148]
0035db64  35 ca fe eb                                      bl #0x310440
0035db68  04 00 a0 e1                                      mov r0, r4
0035db6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035db70  7c 6f 63 00 e8 43 00 00 18 41 00 00 44 2b 00 00  .byte 0x7c, 0x6f, 0x63, 0x00, 0xe8, 0x43, 0x00, 0x00, 0x18, 0x41, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00

; FUNCTION 0x0035db80, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CEmptySceneNode
; alias: _ZTv0_n24_N6glitch5scene15CEmptySceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CEmptySceneNode::~CEmptySceneNode()
; decoder-mode: arm
0035db80  00 30 90 e5                                      ldr r3, [r0]
0035db84  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035db88  03 00 80 e0                                      add r0, r0, r3
0035db8c  dc ff ff ea                                      b #0x35db04

; FUNCTION 0x0035db90, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CEmptySceneNode
; alias: _ZTv0_n12_N6glitch5scene15CEmptySceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CEmptySceneNode::~CEmptySceneNode()
; decoder-mode: arm
0035db90  00 30 90 e5                                      ldr r3, [r0]
0035db94  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035db98  03 00 80 e0                                      add r0, r0, r3
0035db9c  d8 ff ff ea                                      b #0x35db04

; FUNCTION 0x005839ac, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CEmptySceneNode
; alias: _ZN6glitch5scene15CEmptySceneNode6renderEPv
; demangled: glitch::scene::CEmptySceneNode::render(void*)
; decoder-mode: arm
005839ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x005839b0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CEmptySceneNode
; alias: _ZNK6glitch5scene15CEmptySceneNode14getBoundingBoxEv
; demangled: glitch::scene::CEmptySceneNode::getBoundingBox() const
; decoder-mode: arm
005839b0  13 0e 80 e2                                      add r0, r0, #0x130
005839b4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005839d8, declared_size=248, range_size=248, mode=arm
; class-group: glitch::scene::CEmptySceneNode
; alias: _ZN6glitch5scene15CEmptySceneNodeC1Ei
; demangled: glitch::scene::CEmptySceneNode::CEmptySceneNode(int)
; decoder-mode: arm
005839d8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005839dc  dc 60 9f e5                                      ldr r6, [pc, #0xdc]
005839e0  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
005839e4  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
005839e8  06 60 8f e0                                      add r6, pc, r6
005839ec  03 30 96 e7                                      ldr r3, [r6, r3]
005839f0  02 20 96 e7                                      ldr r2, [r6, r2]
005839f4  01 e0 a0 e3                                      mov lr, #1
005839f8  18 c0 93 e5                                      ldr ip, [r3, #0x18]
005839fc  08 20 82 e2                                      add r2, r2, #8
00583a00  48 21 80 e5                                      str r2, [r0, #0x148]
00583a04  00 c0 80 e5                                      str ip, [r0]
00583a08  4c e1 80 e5                                      str lr, [r0, #0x14c]
00583a0c  0c e0 1c e5                                      ldr lr, [ip, #-0xc]
00583a10  1c 70 93 e5                                      ldr r7, [r3, #0x1c]
00583a14  34 d0 4d e2                                      sub sp, sp, #0x34
00583a18  00 c0 a0 e3                                      mov ip, #0
00583a1c  0e 70 80 e7                                      str r7, [r0, lr]
00583a20  08 e0 8d e2                                      add lr, sp, #8
00583a24  fe 55 a0 e3                                      mov r5, #0x3f800000
00583a28  01 20 a0 e1                                      mov r2, r1
00583a2c  00 e0 8d e5                                      str lr, [sp]
00583a30  04 10 83 e2                                      add r1, r3, #4
00583a34  18 e0 8d e2                                      add lr, sp, #0x18
00583a38  24 30 8d e2                                      add r3, sp, #0x24
00583a3c  00 40 a0 e1                                      mov r4, r0
00583a40  10 c0 8d e5                                      str ip, [sp, #0x10]
00583a44  04 e0 8d e5                                      str lr, [sp, #4]
00583a48  24 c0 8d e5                                      str ip, [sp, #0x24]
00583a4c  28 c0 8d e5                                      str ip, [sp, #0x28]
00583a50  2c c0 8d e5                                      str ip, [sp, #0x2c]
00583a54  08 c0 8d e5                                      str ip, [sp, #8]
00583a58  0c c0 8d e5                                      str ip, [sp, #0xc]
00583a5c  14 50 8d e5                                      str r5, [sp, #0x14]
00583a60  18 50 8d e5                                      str r5, [sp, #0x18]
00583a64  1c 50 8d e5                                      str r5, [sp, #0x1c]
00583a68  20 50 8d e5                                      str r5, [sp, #0x20]
00583a6c  93 55 00 eb                                      bl #0x5990c0
00583a70  54 30 9f e5                                      ldr r3, [pc, #0x54]
00583a74  bf 24 a0 e3                                      mov r2, #0xbf000000
00583a78  02 25 82 e2                                      add r2, r2, #0x800000
00583a7c  03 30 96 e7                                      ldr r3, [r6, r3]
00583a80  04 00 a0 e1                                      mov r0, r4
00583a84  44 51 84 e5                                      str r5, [r4, #0x144]
00583a88  12 1e 83 e2                                      add r1, r3, #0x120
00583a8c  1c 30 83 e2                                      add r3, r3, #0x1c
00583a90  48 11 84 e5                                      str r1, [r4, #0x148]
00583a94  38 21 84 e5                                      str r2, [r4, #0x138]
00583a98  30 21 84 e5                                      str r2, [r4, #0x130]
00583a9c  00 30 84 e5                                      str r3, [r4]
00583aa0  34 21 84 e5                                      str r2, [r4, #0x134]
00583aa4  3c 51 84 e5                                      str r5, [r4, #0x13c]
00583aa8  40 51 84 e5                                      str r5, [r4, #0x140]
00583aac  00 10 a0 e3                                      mov r1, #0
00583ab0  b9 4d 00 eb                                      bl #0x59719c
00583ab4  04 00 a0 e1                                      mov r0, r4
00583ab8  34 d0 8d e2                                      add sp, sp, #0x34
00583abc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00583ac0  a8 10 41 00 18 41 00 00 44 2b 00 00 e8 43 00 00  .byte 0xa8, 0x10, 0x41, 0x00, 0x18, 0x41, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xe8, 0x43, 0x00, 0x00

; FUNCTION 0x00583ad0, declared_size=100, range_size=100, mode=arm
; class-group: glitch::scene::CEmptySceneNode
; alias: _ZN6glitch5scene15CEmptySceneNode5cloneEv
; demangled: glitch::scene::CEmptySceneNode::clone()
; decoder-mode: arm
00583ad0  70 40 2d e9                                      push {r4, r5, r6, lr}
00583ad4  00 10 a0 e3                                      mov r1, #0
00583ad8  00 50 a0 e1                                      mov r5, r0
00583adc  15 0e a0 e3                                      mov r0, #0x150
00583ae0  b1 c1 fe eb                                      bl #0x5341ac
00583ae4  0c 11 95 e5                                      ldr r1, [r5, #0x10c]
00583ae8  00 40 a0 e1                                      mov r4, r0
00583aec  b9 ff ff eb                                      bl #0x5839d8
00583af0  04 00 a0 e1                                      mov r0, r4
00583af4  05 10 a0 e1                                      mov r1, r5
00583af8  b3 50 00 eb                                      bl #0x597dcc
00583afc  30 31 95 e5                                      ldr r3, [r5, #0x130]
00583b00  04 00 a0 e1                                      mov r0, r4
00583b04  30 31 84 e5                                      str r3, [r4, #0x130]
00583b08  34 31 95 e5                                      ldr r3, [r5, #0x134]
00583b0c  34 31 84 e5                                      str r3, [r4, #0x134]
00583b10  38 31 95 e5                                      ldr r3, [r5, #0x138]
00583b14  38 31 84 e5                                      str r3, [r4, #0x138]
00583b18  3c 31 95 e5                                      ldr r3, [r5, #0x13c]
00583b1c  3c 31 84 e5                                      str r3, [r4, #0x13c]
00583b20  40 31 95 e5                                      ldr r3, [r5, #0x140]
00583b24  40 31 84 e5                                      str r3, [r4, #0x140]
00583b28  44 31 95 e5                                      ldr r3, [r5, #0x144]
00583b2c  44 31 84 e5                                      str r3, [r4, #0x144]
00583b30  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00583b34, declared_size=184, range_size=184, mode=arm
; class-group: glitch::scene::CEmptySceneNode
; alias: _ZN6glitch5scene15CEmptySceneNodeC2Ei
; demangled: glitch::scene::CEmptySceneNode::CEmptySceneNode(int)
; decoder-mode: arm
00583b34  70 40 2d e9                                      push {r4, r5, r6, lr}
00583b38  30 d0 4d e2                                      sub sp, sp, #0x30
00583b3c  08 e0 8d e2                                      add lr, sp, #8
00583b40  fe 55 a0 e3                                      mov r5, #0x3f800000
00583b44  00 c0 a0 e3                                      mov ip, #0
00583b48  01 60 a0 e1                                      mov r6, r1
00583b4c  24 30 8d e2                                      add r3, sp, #0x24
00583b50  00 e0 8d e5                                      str lr, [sp]
00583b54  04 10 81 e2                                      add r1, r1, #4
00583b58  18 e0 8d e2                                      add lr, sp, #0x18
00583b5c  00 40 a0 e1                                      mov r4, r0
00583b60  10 c0 8d e5                                      str ip, [sp, #0x10]
00583b64  04 e0 8d e5                                      str lr, [sp, #4]
00583b68  24 c0 8d e5                                      str ip, [sp, #0x24]
00583b6c  28 c0 8d e5                                      str ip, [sp, #0x28]
00583b70  2c c0 8d e5                                      str ip, [sp, #0x2c]
00583b74  08 c0 8d e5                                      str ip, [sp, #8]
00583b78  0c c0 8d e5                                      str ip, [sp, #0xc]
00583b7c  14 50 8d e5                                      str r5, [sp, #0x14]
00583b80  18 50 8d e5                                      str r5, [sp, #0x18]
00583b84  1c 50 8d e5                                      str r5, [sp, #0x1c]
00583b88  20 50 8d e5                                      str r5, [sp, #0x20]
00583b8c  4b 55 00 eb                                      bl #0x5990c0
00583b90  00 20 96 e5                                      ldr r2, [r6]
00583b94  bf 34 a0 e3                                      mov r3, #0xbf000000
00583b98  02 35 83 e2                                      add r3, r3, #0x800000
00583b9c  00 20 84 e5                                      str r2, [r4]
00583ba0  10 c0 96 e5                                      ldr ip, [r6, #0x10]
00583ba4  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
00583ba8  04 00 a0 e1                                      mov r0, r4
00583bac  00 10 a0 e3                                      mov r1, #0
00583bb0  02 c0 84 e7                                      str ip, [r4, r2]
00583bb4  00 20 94 e5                                      ldr r2, [r4]
00583bb8  14 c0 96 e5                                      ldr ip, [r6, #0x14]
00583bbc  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00583bc0  02 c0 84 e7                                      str ip, [r4, r2]
00583bc4  38 31 84 e5                                      str r3, [r4, #0x138]
00583bc8  44 51 84 e5                                      str r5, [r4, #0x144]
00583bcc  30 31 84 e5                                      str r3, [r4, #0x130]
00583bd0  34 31 84 e5                                      str r3, [r4, #0x134]
00583bd4  3c 51 84 e5                                      str r5, [r4, #0x13c]
00583bd8  40 51 84 e5                                      str r5, [r4, #0x140]
00583bdc  6e 4d 00 eb                                      bl #0x59719c
00583be0  04 00 a0 e1                                      mov r0, r4
00583be4  30 d0 8d e2                                      add sp, sp, #0x30
00583be8  70 80 bd e8                                      pop {r4, r5, r6, pc}
