; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006bb528, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CDummyTransformationSceneNode
; alias: _ZN6glitch5scene29CDummyTransformationSceneNode6renderEPv
; demangled: glitch::scene::CDummyTransformationSceneNode::render(void*)
; decoder-mode: arm
006bb528  1e ff 2f e1                                      bx lr

; FUNCTION 0x006bb52c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CDummyTransformationSceneNode
; alias: _ZNK6glitch5scene29CDummyTransformationSceneNode7getTypeEv
; demangled: glitch::scene::CDummyTransformationSceneNode::getType() const
; decoder-mode: arm
006bb52c  64 0d 06 e3                                      movw r0, #0x6d64
006bb530  6d 09 47 e3                                      movt r0, #0x796d
006bb534  1e ff 2f e1                                      bx lr

; FUNCTION 0x006bb538, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CDummyTransformationSceneNode
; alias: _ZNK6glitch5scene29CDummyTransformationSceneNode14getBoundingBoxEv
; demangled: glitch::scene::CDummyTransformationSceneNode::getBoundingBox() const
; decoder-mode: arm
006bb538  5d 0f 80 e2                                      add r0, r0, #0x174
006bb53c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006bb540, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CDummyTransformationSceneNode
; alias: _ZN6glitch5scene29CDummyTransformationSceneNode31getRelativeTransformationMatrixEv
; demangled: glitch::scene::CDummyTransformationSceneNode::getRelativeTransformationMatrix()
; decoder-mode: arm
006bb540  13 0e 80 e2                                      add r0, r0, #0x130
006bb544  1e ff 2f e1                                      bx lr

; FUNCTION 0x006bb5d4, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::CDummyTransformationSceneNode
; alias: _ZN6glitch5scene29CDummyTransformationSceneNodeD1Ev
; demangled: glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode()
; decoder-mode: arm
006bb5d4  54 30 9f e5                                      ldr r3, [pc, #0x54]
006bb5d8  54 10 9f e5                                      ldr r1, [pc, #0x54]
006bb5dc  54 20 9f e5                                      ldr r2, [pc, #0x54]
006bb5e0  03 30 8f e0                                      add r3, pc, r3
006bb5e4  01 10 93 e7                                      ldr r1, [r3, r1]
006bb5e8  10 40 2d e9                                      push {r4, lr}
006bb5ec  02 20 93 e7                                      ldr r2, [r3, r2]
006bb5f0  04 c0 91 e5                                      ldr ip, [r1, #4]
006bb5f4  14 e0 91 e5                                      ldr lr, [r1, #0x14]
006bb5f8  4a 2f 82 e2                                      add r2, r2, #0x128
006bb5fc  8c 21 80 e5                                      str r2, [r0, #0x18c]
006bb600  00 c0 80 e5                                      str ip, [r0]
006bb604  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
006bb608  18 20 91 e5                                      ldr r2, [r1, #0x18]
006bb60c  00 40 a0 e1                                      mov r4, r0
006bb610  0c e0 80 e7                                      str lr, [r0, ip]
006bb614  00 c0 90 e5                                      ldr ip, [r0]
006bb618  08 10 81 e2                                      add r1, r1, #8
006bb61c  0c 30 1c e5                                      ldr r3, [ip, #-0xc]
006bb620  03 20 80 e7                                      str r2, [r0, r3]
006bb624  a4 75 fb eb                                      bl #0x598cbc
006bb628  04 00 a0 e1                                      mov r0, r4
006bb62c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006bb630  b0 94 2d 00 50 1b 00 00 f0 30 00 00              .byte 0xb0, 0x94, 0x2d, 0x00, 0x50, 0x1b, 0x00, 0x00, 0xf0, 0x30, 0x00, 0x00

; FUNCTION 0x006bb63c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CDummyTransformationSceneNode
; alias: _ZTv0_n24_N6glitch5scene29CDummyTransformationSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode()
; decoder-mode: arm
006bb63c  00 30 90 e5                                      ldr r3, [r0]
006bb640  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006bb644  03 00 80 e0                                      add r0, r0, r3
006bb648  e1 ff ff ea                                      b #0x6bb5d4

; FUNCTION 0x006bb64c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CDummyTransformationSceneNode
; alias: _ZTv0_n12_N6glitch5scene29CDummyTransformationSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode()
; decoder-mode: arm
006bb64c  00 30 90 e5                                      ldr r3, [r0]
006bb650  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006bb654  03 00 80 e0                                      add r0, r0, r3
006bb658  dd ff ff ea                                      b #0x6bb5d4

; FUNCTION 0x006bb65c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::scene::CDummyTransformationSceneNode
; alias: _ZN6glitch5scene29CDummyTransformationSceneNode31setRelativeTransformationMatrixERKNS_4core8CMatrix4IfEE
; demangled: glitch::scene::CDummyTransformationSceneNode::setRelativeTransformationMatrix(glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
006bb65c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006bb660  41 20 a0 e3                                      mov r2, #0x41
006bb664  2c d0 4d e2                                      sub sp, sp, #0x2c
006bb668  00 40 a0 e1                                      mov r4, r0
006bb66c  01 50 a0 e1                                      mov r5, r1
006bb670  13 0e 80 e2                                      add r0, r0, #0x130
006bb674  7b 4c f1 eb                                      bl #0x30e868
006bb678  38 20 95 e5                                      ldr r2, [r5, #0x38]
006bb67c  00 30 94 e5                                      ldr r3, [r4]
006bb680  34 00 95 e5                                      ldr r0, [r5, #0x34]
006bb684  30 10 95 e5                                      ldr r1, [r5, #0x30]
006bb688  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
006bb68c  24 20 8d e5                                      str r2, [sp, #0x24]
006bb690  20 00 8d e5                                      str r0, [sp, #0x20]
006bb694  1c 10 8d e5                                      str r1, [sp, #0x1c]
006bb698  04 00 a0 e1                                      mov r0, r4
006bb69c  1c 10 8d e2                                      add r1, sp, #0x1c
006bb6a0  33 ff 2f e1                                      blx r3
006bb6a4  00 30 94 e5                                      ldr r3, [r4]
006bb6a8  05 10 a0 e1                                      mov r1, r5
006bb6ac  0d 00 a0 e1                                      mov r0, sp
006bb6b0  9c 70 93 e5                                      ldr r7, [r3, #0x9c]
006bb6b4  fe 4d f9 eb                                      bl #0x50eeb4
006bb6b8  04 00 a0 e1                                      mov r0, r4
006bb6bc  0d 10 a0 e1                                      mov r1, sp
006bb6c0  37 ff 2f e1                                      blx r7
006bb6c4  00 30 94 e5                                      ldr r3, [r4]
006bb6c8  10 60 8d e2                                      add r6, sp, #0x10
006bb6cc  05 10 a0 e1                                      mov r1, r5
006bb6d0  06 00 a0 e1                                      mov r0, r6
006bb6d4  94 50 93 e5                                      ldr r5, [r3, #0x94]
006bb6d8  01 76 fb eb                                      bl #0x598ee4
006bb6dc  04 00 a0 e1                                      mov r0, r4
006bb6e0  06 10 a0 e1                                      mov r1, r6
006bb6e4  35 ff 2f e1                                      blx r5
006bb6e8  2c d0 8d e2                                      add sp, sp, #0x2c
006bb6ec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006bb77c, declared_size=220, range_size=220, mode=arm
; class-group: glitch::scene::CDummyTransformationSceneNode
; alias: _ZN6glitch5scene29CDummyTransformationSceneNodeC1Ei
; demangled: glitch::scene::CDummyTransformationSceneNode::CDummyTransformationSceneNode(int)
; decoder-mode: arm
006bb77c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006bb780  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
006bb784  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
006bb788  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
006bb78c  05 50 8f e0                                      add r5, pc, r5
006bb790  03 30 95 e7                                      ldr r3, [r5, r3]
006bb794  02 20 95 e7                                      ldr r2, [r5, r2]
006bb798  01 70 a0 e3                                      mov r7, #1
006bb79c  24 c0 93 e5                                      ldr ip, [r3, #0x24]
006bb7a0  08 20 82 e2                                      add r2, r2, #8
006bb7a4  8c 21 80 e5                                      str r2, [r0, #0x18c]
006bb7a8  90 71 80 e5                                      str r7, [r0, #0x190]
006bb7ac  00 c0 80 e5                                      str ip, [r0]
006bb7b0  28 e0 93 e5                                      ldr lr, [r3, #0x28]
006bb7b4  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
006bb7b8  01 20 a0 e1                                      mov r2, r1
006bb7bc  04 10 83 e2                                      add r1, r3, #4
006bb7c0  0c e0 80 e7                                      str lr, [r0, ip]
006bb7c4  00 40 a0 e1                                      mov r4, r0
006bb7c8  c8 ff ff eb                                      bl #0x6bb6f0
006bb7cc  80 30 9f e5                                      ldr r3, [pc, #0x80]
006bb7d0  00 60 a0 e3                                      mov r6, #0
006bb7d4  06 10 a0 e1                                      mov r1, r6
006bb7d8  03 30 95 e7                                      ldr r3, [r5, r3]
006bb7dc  70 61 c4 e5                                      strb r6, [r4, #0x170]
006bb7e0  40 20 a0 e3                                      mov r2, #0x40
006bb7e4  4a 0f 83 e2                                      add r0, r3, #0x128
006bb7e8  1c 30 83 e2                                      add r3, r3, #0x1c
006bb7ec  00 30 84 e5                                      str r3, [r4]
006bb7f0  8c 01 84 e5                                      str r0, [r4, #0x18c]
006bb7f4  13 0e 84 e2                                      add r0, r4, #0x130
006bb7f8  18 4b f1 eb                                      bl #0x30e460
006bb7fc  bf 24 a0 e3                                      mov r2, #0xbf000000
006bb800  fe 35 a0 e3                                      mov r3, #0x3f800000
006bb804  02 25 82 e2                                      add r2, r2, #0x800000
006bb808  04 00 a0 e1                                      mov r0, r4
006bb80c  70 71 c4 e5                                      strb r7, [r4, #0x170]
006bb810  88 31 84 e5                                      str r3, [r4, #0x188]
006bb814  7c 21 84 e5                                      str r2, [r4, #0x17c]
006bb818  30 31 84 e5                                      str r3, [r4, #0x130]
006bb81c  44 31 84 e5                                      str r3, [r4, #0x144]
006bb820  58 31 84 e5                                      str r3, [r4, #0x158]
006bb824  6c 31 84 e5                                      str r3, [r4, #0x16c]
006bb828  74 21 84 e5                                      str r2, [r4, #0x174]
006bb82c  78 21 84 e5                                      str r2, [r4, #0x178]
006bb830  80 31 84 e5                                      str r3, [r4, #0x180]
006bb834  84 31 84 e5                                      str r3, [r4, #0x184]
006bb838  06 10 a0 e1                                      mov r1, r6
006bb83c  56 6e fb eb                                      bl #0x59719c
006bb840  04 00 a0 e1                                      mov r0, r4
006bb844  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006bb848  04 93 2d 00 50 1b 00 00 44 2b 00 00 f0 30 00 00  .byte 0x04, 0x93, 0x2d, 0x00, 0x50, 0x1b, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xf0, 0x30, 0x00, 0x00

; FUNCTION 0x006bb858, declared_size=116, range_size=116, mode=arm
; class-group: glitch::scene::CDummyTransformationSceneNode
; alias: _ZN6glitch5scene29CDummyTransformationSceneNode5cloneEv
; demangled: glitch::scene::CDummyTransformationSceneNode::clone()
; decoder-mode: arm
006bb858  70 40 2d e9                                      push {r4, r5, r6, lr}
006bb85c  00 10 a0 e3                                      mov r1, #0
006bb860  00 50 a0 e1                                      mov r5, r0
006bb864  65 0f a0 e3                                      mov r0, #0x194
006bb868  4f e2 f9 eb                                      bl #0x5341ac
006bb86c  0c 11 95 e5                                      ldr r1, [r5, #0x10c]
006bb870  00 40 a0 e1                                      mov r4, r0
006bb874  c0 ff ff eb                                      bl #0x6bb77c
006bb878  04 00 a0 e1                                      mov r0, r4
006bb87c  05 10 a0 e1                                      mov r1, r5
006bb880  51 71 fb eb                                      bl #0x597dcc
006bb884  13 0e 84 e2                                      add r0, r4, #0x130
006bb888  13 1e 85 e2                                      add r1, r5, #0x130
006bb88c  41 20 a0 e3                                      mov r2, #0x41
006bb890  f4 4b f1 eb                                      bl #0x30e868
006bb894  74 31 95 e5                                      ldr r3, [r5, #0x174]
006bb898  04 00 a0 e1                                      mov r0, r4
006bb89c  74 31 84 e5                                      str r3, [r4, #0x174]
006bb8a0  78 31 95 e5                                      ldr r3, [r5, #0x178]
006bb8a4  78 31 84 e5                                      str r3, [r4, #0x178]
006bb8a8  7c 31 95 e5                                      ldr r3, [r5, #0x17c]
006bb8ac  7c 31 84 e5                                      str r3, [r4, #0x17c]
006bb8b0  80 31 95 e5                                      ldr r3, [r5, #0x180]
006bb8b4  80 31 84 e5                                      str r3, [r4, #0x180]
006bb8b8  84 31 95 e5                                      ldr r3, [r5, #0x184]
006bb8bc  84 31 84 e5                                      str r3, [r4, #0x184]
006bb8c0  88 31 95 e5                                      ldr r3, [r5, #0x188]
006bb8c4  88 31 84 e5                                      str r3, [r4, #0x188]
006bb8c8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006bb940, declared_size=160, range_size=160, mode=arm
; class-group: glitch::scene::CDummyTransformationSceneNode
; alias: _ZN6glitch5scene29CDummyTransformationSceneNodeC2Ei
; demangled: glitch::scene::CDummyTransformationSceneNode::CDummyTransformationSceneNode(int)
; decoder-mode: arm
006bb940  70 40 2d e9                                      push {r4, r5, r6, lr}
006bb944  01 50 a0 e1                                      mov r5, r1
006bb948  04 10 81 e2                                      add r1, r1, #4
006bb94c  00 40 a0 e1                                      mov r4, r0
006bb950  66 ff ff eb                                      bl #0x6bb6f0
006bb954  00 30 95 e5                                      ldr r3, [r5]
006bb958  00 60 a0 e3                                      mov r6, #0
006bb95c  06 10 a0 e1                                      mov r1, r6
006bb960  00 30 84 e5                                      str r3, [r4]
006bb964  1c c0 95 e5                                      ldr ip, [r5, #0x1c]
006bb968  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006bb96c  40 20 a0 e3                                      mov r2, #0x40
006bb970  13 0e 84 e2                                      add r0, r4, #0x130
006bb974  03 c0 84 e7                                      str ip, [r4, r3]
006bb978  00 30 94 e5                                      ldr r3, [r4]
006bb97c  20 c0 95 e5                                      ldr ip, [r5, #0x20]
006bb980  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006bb984  03 c0 84 e7                                      str ip, [r4, r3]
006bb988  70 61 c4 e5                                      strb r6, [r4, #0x170]
006bb98c  b3 4a f1 eb                                      bl #0x30e460
006bb990  bf 24 a0 e3                                      mov r2, #0xbf000000
006bb994  fe 35 a0 e3                                      mov r3, #0x3f800000
006bb998  02 25 82 e2                                      add r2, r2, #0x800000
006bb99c  01 10 a0 e3                                      mov r1, #1
006bb9a0  70 11 c4 e5                                      strb r1, [r4, #0x170]
006bb9a4  04 00 a0 e1                                      mov r0, r4
006bb9a8  7c 21 84 e5                                      str r2, [r4, #0x17c]
006bb9ac  88 31 84 e5                                      str r3, [r4, #0x188]
006bb9b0  30 31 84 e5                                      str r3, [r4, #0x130]
006bb9b4  44 31 84 e5                                      str r3, [r4, #0x144]
006bb9b8  58 31 84 e5                                      str r3, [r4, #0x158]
006bb9bc  6c 31 84 e5                                      str r3, [r4, #0x16c]
006bb9c0  74 21 84 e5                                      str r2, [r4, #0x174]
006bb9c4  78 21 84 e5                                      str r2, [r4, #0x178]
006bb9c8  80 31 84 e5                                      str r3, [r4, #0x180]
006bb9cc  84 31 84 e5                                      str r3, [r4, #0x184]
006bb9d0  06 10 a0 e1                                      mov r1, r6
006bb9d4  f0 6d fb eb                                      bl #0x59719c
006bb9d8  04 00 a0 e1                                      mov r0, r4
006bb9dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006bb9e0, declared_size=112, range_size=112, mode=arm
; class-group: glitch::scene::CDummyTransformationSceneNode
; alias: _ZN6glitch5scene29CDummyTransformationSceneNodeD0Ev
; demangled: glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode()
; decoder-mode: arm
006bb9e0  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
006bb9e4  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
006bb9e8  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
006bb9ec  03 30 8f e0                                      add r3, pc, r3
006bb9f0  01 10 93 e7                                      ldr r1, [r3, r1]
006bb9f4  10 40 2d e9                                      push {r4, lr}
006bb9f8  02 20 93 e7                                      ldr r2, [r3, r2]
006bb9fc  04 c0 91 e5                                      ldr ip, [r1, #4]
006bba00  14 e0 91 e5                                      ldr lr, [r1, #0x14]
006bba04  4a 2f 82 e2                                      add r2, r2, #0x128
006bba08  8c 21 80 e5                                      str r2, [r0, #0x18c]
006bba0c  00 c0 80 e5                                      str ip, [r0]
006bba10  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
006bba14  18 20 91 e5                                      ldr r2, [r1, #0x18]
006bba18  00 40 a0 e1                                      mov r4, r0
006bba1c  0c e0 80 e7                                      str lr, [r0, ip]
006bba20  00 c0 90 e5                                      ldr ip, [r0]
006bba24  08 10 81 e2                                      add r1, r1, #8
006bba28  0c 30 1c e5                                      ldr r3, [ip, #-0xc]
006bba2c  03 20 80 e7                                      str r2, [r0, r3]
006bba30  a1 74 fb eb                                      bl #0x598cbc
006bba34  04 00 a0 e1                                      mov r0, r4
006bba38  1c 4a f1 eb                                      bl #0x30e2b0
006bba3c  04 00 a0 e1                                      mov r0, r4
006bba40  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006bba44  a4 90 2d 00 50 1b 00 00 f0 30 00 00              .byte 0xa4, 0x90, 0x2d, 0x00, 0x50, 0x1b, 0x00, 0x00, 0xf0, 0x30, 0x00, 0x00

; FUNCTION 0x006bba50, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CDummyTransformationSceneNode
; alias: _ZTv0_n24_N6glitch5scene29CDummyTransformationSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode()
; decoder-mode: arm
006bba50  00 30 90 e5                                      ldr r3, [r0]
006bba54  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006bba58  03 00 80 e0                                      add r0, r0, r3
006bba5c  df ff ff ea                                      b #0x6bb9e0

; FUNCTION 0x006bba60, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CDummyTransformationSceneNode
; alias: _ZTv0_n12_N6glitch5scene29CDummyTransformationSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CDummyTransformationSceneNode::~CDummyTransformationSceneNode()
; decoder-mode: arm
006bba60  00 30 90 e5                                      ldr r3, [r0]
006bba64  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006bba68  03 00 80 e0                                      add r0, r0, r3
006bba6c  db ff ff ea                                      b #0x6bb9e0
