; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035b5b0, declared_size=152, range_size=152, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZN6glitch7collada28CModularSkinnedMeshSceneNodeD0Ev
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode()
; decoder-mode: arm
0035b5b0  70 40 2d e9                                      push {r4, r5, r6, lr}
0035b5b4  7c 50 9f e5                                      ldr r5, [pc, #0x7c]
0035b5b8  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
0035b5bc  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
0035b5c0  05 50 8f e0                                      add r5, pc, r5
0035b5c4  02 60 95 e7                                      ldr r6, [r5, r2]
0035b5c8  03 30 95 e7                                      ldr r3, [r5, r3]
0035b5cc  00 40 a0 e1                                      mov r4, r0
0035b5d0  04 20 96 e5                                      ldr r2, [r6, #4]
0035b5d4  4a 3f 83 e2                                      add r3, r3, #0x128
0035b5d8  7c 31 80 e5                                      str r3, [r0, #0x17c]
0035b5dc  00 20 80 e5                                      str r2, [r0]
0035b5e0  1c 30 12 e5                                      ldr r3, [r2, #-0x1c]
0035b5e4  2c c0 96 e5                                      ldr ip, [r6, #0x2c]
0035b5e8  30 20 96 e5                                      ldr r2, [r6, #0x30]
0035b5ec  08 10 86 e2                                      add r1, r6, #8
0035b5f0  03 c0 80 e7                                      str ip, [r0, r3]
0035b5f4  00 30 90 e5                                      ldr r3, [r0]
0035b5f8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b5fc  03 20 80 e7                                      str r2, [r0, r3]
0035b600  36 ab 0b eb                                      bl #0x6462e0
0035b604  3c 20 96 e5                                      ldr r2, [r6, #0x3c]
0035b608  34 30 9f e5                                      ldr r3, [pc, #0x34]
0035b60c  40 10 96 e5                                      ldr r1, [r6, #0x40]
0035b610  00 20 84 e5                                      str r2, [r4]
0035b614  03 30 95 e7                                      ldr r3, [r5, r3]
0035b618  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0035b61c  04 00 a0 e1                                      mov r0, r4
0035b620  08 30 83 e2                                      add r3, r3, #8
0035b624  02 10 84 e7                                      str r1, [r4, r2]
0035b628  7c 31 84 e5                                      str r3, [r4, #0x17c]
0035b62c  83 d3 fe eb                                      bl #0x310440
0035b630  04 00 a0 e1                                      mov r0, r4
0035b634  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0035b638  d0 94 63 00 68 29 00 00 cc 39 00 00 44 2b 00 00  .byte 0xd0, 0x94, 0x63, 0x00, 0x68, 0x29, 0x00, 0x00, 0xcc, 0x39, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00

; FUNCTION 0x0035b648, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZTv0_n24_N6glitch7collada28CModularSkinnedMeshSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode()
; decoder-mode: arm
0035b648  00 30 90 e5                                      ldr r3, [r0]
0035b64c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035b650  03 00 80 e0                                      add r0, r0, r3
0035b654  d5 ff ff ea                                      b #0x35b5b0

; FUNCTION 0x0035b658, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZTv0_n12_N6glitch7collada28CModularSkinnedMeshSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode()
; decoder-mode: arm
0035b658  00 30 90 e5                                      ldr r3, [r0]
0035b65c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b660  03 00 80 e0                                      add r0, r0, r3
0035b664  d1 ff ff ea                                      b #0x35b5b0

; FUNCTION 0x0035b7d8, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZN6glitch7collada28CModularSkinnedMeshSceneNodeD1Ev
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode()
; decoder-mode: arm
0035b7d8  54 30 9f e5                                      ldr r3, [pc, #0x54]
0035b7dc  54 10 9f e5                                      ldr r1, [pc, #0x54]
0035b7e0  54 20 9f e5                                      ldr r2, [pc, #0x54]
0035b7e4  03 30 8f e0                                      add r3, pc, r3
0035b7e8  01 10 93 e7                                      ldr r1, [r3, r1]
0035b7ec  10 40 2d e9                                      push {r4, lr}
0035b7f0  02 20 93 e7                                      ldr r2, [r3, r2]
0035b7f4  04 c0 91 e5                                      ldr ip, [r1, #4]
0035b7f8  2c e0 91 e5                                      ldr lr, [r1, #0x2c]
0035b7fc  4a 2f 82 e2                                      add r2, r2, #0x128
0035b800  7c 21 80 e5                                      str r2, [r0, #0x17c]
0035b804  00 c0 80 e5                                      str ip, [r0]
0035b808  1c c0 1c e5                                      ldr ip, [ip, #-0x1c]
0035b80c  30 20 91 e5                                      ldr r2, [r1, #0x30]
0035b810  00 40 a0 e1                                      mov r4, r0
0035b814  0c e0 80 e7                                      str lr, [r0, ip]
0035b818  00 c0 90 e5                                      ldr ip, [r0]
0035b81c  08 10 81 e2                                      add r1, r1, #8
0035b820  0c 30 1c e5                                      ldr r3, [ip, #-0xc]
0035b824  03 20 80 e7                                      str r2, [r0, r3]
0035b828  ac aa 0b eb                                      bl #0x6462e0
0035b82c  04 00 a0 e1                                      mov r0, r4
0035b830  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0035b834  ac 92 63 00 68 29 00 00 cc 39 00 00              .byte 0xac, 0x92, 0x63, 0x00, 0x68, 0x29, 0x00, 0x00, 0xcc, 0x39, 0x00, 0x00

; FUNCTION 0x0035b840, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZTv0_n24_N6glitch7collada28CModularSkinnedMeshSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode()
; decoder-mode: arm
0035b840  00 30 90 e5                                      ldr r3, [r0]
0035b844  18 30 13 e5                                      ldr r3, [r3, #-0x18]
0035b848  03 00 80 e0                                      add r0, r0, r3
0035b84c  e1 ff ff ea                                      b #0x35b7d8

; FUNCTION 0x0035b850, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZTv0_n12_N6glitch7collada28CModularSkinnedMeshSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode()
; decoder-mode: arm
0035b850  00 30 90 e5                                      ldr r3, [r0]
0035b854  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0035b858  03 00 80 e0                                      add r0, r0, r3
0035b85c  dd ff ff ea                                      b #0x35b7d8

; FUNCTION 0x00362b60, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZN6glitch7collada28CModularSkinnedMeshSceneNodeD2Ev
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::~CModularSkinnedMeshSceneNode()
; decoder-mode: arm
00362b60  10 40 2d e9                                      push {r4, lr}
00362b64  01 30 a0 e1                                      mov r3, r1
00362b68  00 10 91 e5                                      ldr r1, [r1]
00362b6c  04 20 83 e2                                      add r2, r3, #4
00362b70  00 40 a0 e1                                      mov r4, r0
00362b74  00 10 80 e5                                      str r1, [r0]
00362b78  1c c0 11 e5                                      ldr ip, [r1, #-0x1c]
00362b7c  34 e0 93 e5                                      ldr lr, [r3, #0x34]
00362b80  04 10 82 e2                                      add r1, r2, #4
00362b84  0c e0 80 e7                                      str lr, [r0, ip]
00362b88  00 c0 90 e5                                      ldr ip, [r0]
00362b8c  38 e0 93 e5                                      ldr lr, [r3, #0x38]
00362b90  0c c0 1c e5                                      ldr ip, [ip, #-0xc]
00362b94  0c e0 80 e7                                      str lr, [r0, ip]
00362b98  04 30 93 e5                                      ldr r3, [r3, #4]
00362b9c  00 30 80 e5                                      str r3, [r0]
00362ba0  28 c0 92 e5                                      ldr ip, [r2, #0x28]
00362ba4  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00362ba8  03 c0 80 e7                                      str ip, [r0, r3]
00362bac  00 30 90 e5                                      ldr r3, [r0]
00362bb0  2c 20 92 e5                                      ldr r2, [r2, #0x2c]
00362bb4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00362bb8  03 20 80 e7                                      str r2, [r0, r3]
00362bbc  c7 8d 0b eb                                      bl #0x6462e0
00362bc0  04 00 a0 e1                                      mov r0, r4
00362bc4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006493f8, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZNK6glitch7collada28CModularSkinnedMeshSceneNode7getTypeEv
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::getType() const
; decoder-mode: arm
006493f8  64 01 06 e3                                      movw r0, #0x6164
006493fc  65 0d 44 e3                                      movt r0, #0x4d65
00649400  1e ff 2f e1                                      bx lr

; FUNCTION 0x00649424, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZN6glitch7collada28CModularSkinnedMeshSceneNode17setCategoryModuleEPKcS3_
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::setCategoryModule(char const*, char const*)
; decoder-mode: arm
00649424  34 01 90 e5                                      ldr r0, [r0, #0x134]
00649428  01 30 a0 e3                                      mov r3, #1
0064942c  2c ff ff ea                                      b #0x6490e4

; FUNCTION 0x00649430, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZN6glitch7collada28CModularSkinnedMeshSceneNode17setCategoryModuleEii
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::setCategoryModule(int, int)
; decoder-mode: arm
00649430  34 01 90 e5                                      ldr r0, [r0, #0x134]
00649434  01 30 a0 e3                                      mov r3, #1
00649438  e4 fe ff ea                                      b #0x648fd0

; FUNCTION 0x0064943c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZNK6glitch7collada28CModularSkinnedMeshSceneNode22getCategoryModuleCountEi
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::getCategoryModuleCount(int) const
; decoder-mode: arm
0064943c  34 01 90 e5                                      ldr r0, [r0, #0x134]
00649440  7b f5 ff ea                                      b #0x646a34

; FUNCTION 0x00649444, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZNK6glitch7collada28CModularSkinnedMeshSceneNode16getCategoryCountEv
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::getCategoryCount() const
; decoder-mode: arm
00649444  34 01 90 e5                                      ldr r0, [r0, #0x134]
00649448  76 f5 ff ea                                      b #0x646a28

; FUNCTION 0x0064944c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZNK6glitch7collada28CModularSkinnedMeshSceneNode13getModuleNameEii
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::getModuleName(int, int) const
; decoder-mode: arm
0064944c  34 01 90 e5                                      ldr r0, [r0, #0x134]
00649450  64 f5 ff ea                                      b #0x6469e8

; FUNCTION 0x00649454, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZNK6glitch7collada28CModularSkinnedMeshSceneNode20getCurrentModuleNameEi
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::getCurrentModuleName(int) const
; decoder-mode: arm
00649454  34 01 90 e5                                      ldr r0, [r0, #0x134]
00649458  7d f5 ff ea                                      b #0x646a54

; FUNCTION 0x0064945c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZNK6glitch7collada28CModularSkinnedMeshSceneNode18getCurrentModuleIdEi
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::getCurrentModuleId(int) const
; decoder-mode: arm
0064945c  34 01 90 e5                                      ldr r0, [r0, #0x134]
00649460  78 f5 ff ea                                      b #0x646a48

; FUNCTION 0x00649464, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZNK6glitch7collada28CModularSkinnedMeshSceneNode11getModuleIdEPKc
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::getModuleId(char const*) const
; decoder-mode: arm
00649464  34 01 90 e5                                      ldr r0, [r0, #0x134]
00649468  12 f8 ff ea                                      b #0x6474b8

; FUNCTION 0x0064946c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZNK6glitch7collada28CModularSkinnedMeshSceneNode15getCategoryNameEi
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::getCategoryName(int) const
; decoder-mode: arm
0064946c  34 01 90 e5                                      ldr r0, [r0, #0x134]
00649470  55 f5 ff ea                                      b #0x6469cc

; FUNCTION 0x00649474, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZN6glitch7collada28CModularSkinnedMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00649474  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00649478  00 50 a0 e1                                      mov r5, r0
0064947c  01 60 a0 e1                                      mov r6, r1
00649480  00 40 a0 e3                                      mov r4, #0
00649484  f3 3a fd eb                                      bl #0x598058
00649488  0d 00 00 ea                                      b #0x6494c4
0064948c  00 30 96 e5                                      ldr r3, [r6]
00649490  fc 70 93 e5                                      ldr r7, [r3, #0xfc]
00649494  f4 ff ff eb                                      bl #0x64946c
00649498  00 10 a0 e1                                      mov r1, r0
0064949c  06 00 a0 e1                                      mov r0, r6
006494a0  37 ff 2f e1                                      blx r7
006494a4  00 10 a0 e1                                      mov r1, r0
006494a8  05 00 a0 e1                                      mov r0, r5
006494ac  ec ff ff eb                                      bl #0x649464
006494b0  04 10 a0 e1                                      mov r1, r4
006494b4  00 20 a0 e1                                      mov r2, r0
006494b8  05 00 a0 e1                                      mov r0, r5
006494bc  db ff ff eb                                      bl #0x649430
006494c0  01 40 84 e2                                      add r4, r4, #1
006494c4  05 00 a0 e1                                      mov r0, r5
006494c8  dd ff ff eb                                      bl #0x649444
006494cc  00 00 54 e1                                      cmp r4, r0
006494d0  04 10 a0 e1                                      mov r1, r4
006494d4  05 00 a0 e1                                      mov r0, r5
006494d8  eb ff ff ba                                      blt #0x64948c
006494dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006494e0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZNK6glitch7collada28CModularSkinnedMeshSceneNode13getCategoryIdEPKc
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::getCategoryId(char const*) const
; decoder-mode: arm
006494e0  34 01 90 e5                                      ldr r0, [r0, #0x134]
006494e4  13 f8 ff ea                                      b #0x647538

; FUNCTION 0x006494e8, declared_size=172, range_size=172, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZN6glitch7collada28CModularSkinnedMeshSceneNodeC1ERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS0_5SNodeEiRKNS_4core8vector3dIfEERKNSA_10quaternionESE_
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::CModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&, glitch::collada::SNode*, int, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
006494e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006494ec  90 50 9f e5                                      ldr r5, [pc, #0x90]
006494f0  90 c0 9f e5                                      ldr ip, [pc, #0x90]
006494f4  90 e0 9f e5                                      ldr lr, [pc, #0x90]
006494f8  05 50 8f e0                                      add r5, pc, r5
006494fc  0c c0 95 e7                                      ldr ip, [r5, ip]
00649500  0e e0 95 e7                                      ldr lr, [r5, lr]
00649504  01 70 a0 e3                                      mov r7, #1
00649508  3c 60 9c e5                                      ldr r6, [ip, #0x3c]
0064950c  08 e0 8e e2                                      add lr, lr, #8
00649510  7c e1 80 e5                                      str lr, [r0, #0x17c]
00649514  00 60 80 e5                                      str r6, [r0]
00649518  80 71 80 e5                                      str r7, [r0, #0x180]
0064951c  0c 70 16 e5                                      ldr r7, [r6, #-0xc]
00649520  40 80 9c e5                                      ldr r8, [ip, #0x40]
00649524  10 d0 4d e2                                      sub sp, sp, #0x10
00649528  01 60 a0 e1                                      mov r6, r1
0064952c  07 80 80 e7                                      str r8, [r0, r7]
00649530  04 10 8c e2                                      add r1, ip, #4
00649534  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00649538  02 e0 a0 e1                                      mov lr, r2
0064953c  08 10 8d e8                                      stm sp, {r3, ip}
00649540  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00649544  06 20 a0 e1                                      mov r2, r6
00649548  0e 30 a0 e1                                      mov r3, lr
0064954c  08 c0 8d e5                                      str ip, [sp, #8]
00649550  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00649554  00 40 a0 e1                                      mov r4, r0
00649558  0c c0 8d e5                                      str ip, [sp, #0xc]
0064955c  76 75 00 eb                                      bl #0x666b3c
00649560  28 30 9f e5                                      ldr r3, [pc, #0x28]
00649564  04 00 a0 e1                                      mov r0, r4
00649568  03 30 95 e7                                      ldr r3, [r5, r3]
0064956c  4a 2f 83 e2                                      add r2, r3, #0x128
00649570  1c 30 83 e2                                      add r3, r3, #0x1c
00649574  00 30 84 e5                                      str r3, [r4]
00649578  7c 21 84 e5                                      str r2, [r4, #0x17c]
0064957c  10 d0 8d e2                                      add sp, sp, #0x10
00649580  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00649584  98 b5 34 00 68 29 00 00 44 2b 00 00 cc 39 00 00  .byte 0x98, 0xb5, 0x34, 0x00, 0x68, 0x29, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xcc, 0x39, 0x00, 0x00

; FUNCTION 0x00649594, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZN6glitch7collada28CModularSkinnedMeshSceneNodeC2ERKN5boost13intrusive_ptrINS0_5IMeshEEEPNS0_5SNodeEiRKNS_4core8vector3dIfEERKNSA_10quaternionESE_
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::CModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> const&, glitch::collada::SNode*, int, glitch::core::vector3d<float> const&, glitch::core::quaternion const&, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00649594  30 40 2d e9                                      push {r4, r5, lr}
00649598  14 d0 4d e2                                      sub sp, sp, #0x14
0064959c  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006495a0  01 50 a0 e1                                      mov r5, r1
006495a4  04 10 81 e2                                      add r1, r1, #4
006495a8  00 c0 8d e5                                      str ip, [sp]
006495ac  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006495b0  00 40 a0 e1                                      mov r4, r0
006495b4  04 c0 8d e5                                      str ip, [sp, #4]
006495b8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006495bc  08 c0 8d e5                                      str ip, [sp, #8]
006495c0  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006495c4  0c c0 8d e5                                      str ip, [sp, #0xc]
006495c8  5b 75 00 eb                                      bl #0x666b3c
006495cc  00 30 95 e5                                      ldr r3, [r5]
006495d0  04 00 a0 e1                                      mov r0, r4
006495d4  00 30 84 e5                                      str r3, [r4]
006495d8  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006495dc  34 20 95 e5                                      ldr r2, [r5, #0x34]
006495e0  03 20 84 e7                                      str r2, [r4, r3]
006495e4  00 30 94 e5                                      ldr r3, [r4]
006495e8  38 20 95 e5                                      ldr r2, [r5, #0x38]
006495ec  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006495f0  03 20 84 e7                                      str r2, [r4, r3]
006495f4  14 d0 8d e2                                      add sp, sp, #0x14
006495f8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006496ac, declared_size=468, range_size=468, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZNK6glitch7collada28CModularSkinnedMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::CModularSkinnedMeshSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006496ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006496b0  34 d0 4d e2                                      sub sp, sp, #0x34
006496b4  00 50 a0 e1                                      mov r5, r0
006496b8  01 70 a0 e1                                      mov r7, r1
006496bc  f8 36 fd eb                                      bl #0x5972a4
006496c0  00 30 a0 e3                                      mov r3, #0
006496c4  03 40 a0 e1                                      mov r4, r3
006496c8  18 30 8d e5                                      str r3, [sp, #0x18]
006496cc  1c 30 8d e5                                      str r3, [sp, #0x1c]
006496d0  20 30 8d e5                                      str r3, [sp, #0x20]
006496d4  03 60 a0 e1                                      mov r6, r3
006496d8  2c 30 8d e2                                      add r3, sp, #0x2c
006496dc  0c 30 8d e5                                      str r3, [sp, #0xc]
006496e0  28 30 8d e2                                      add r3, sp, #0x28
006496e4  10 30 8d e5                                      str r3, [sp, #0x10]
006496e8  05 00 a0 e1                                      mov r0, r5
006496ec  24 30 8d e2                                      add r3, sp, #0x24
006496f0  14 30 8d e5                                      str r3, [sp, #0x14]
006496f4  52 ff ff eb                                      bl #0x649444
006496f8  7c a1 9f e5                                      ldr sl, [pc, #0x17c]
006496fc  00 00 54 e1                                      cmp r4, r0
00649700  18 90 8d e2                                      add sb, sp, #0x18
00649704  0a a0 8f e0                                      add sl, pc, sl
00649708  44 00 00 aa                                      bge #0x649820
0064970c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00649710  18 30 9d e5                                      ldr r3, [sp, #0x18]
00649714  04 10 a0 e1                                      mov r1, r4
00649718  05 00 a0 e1                                      mov r0, r5
0064971c  02 00 53 e1                                      cmp r3, r2
00649720  1c 30 8d 15                                      strne r3, [sp, #0x1c]
00649724  44 ff ff eb                                      bl #0x64943c
00649728  00 80 a0 e3                                      mov r8, #0
0064972c  00 00 58 e1                                      cmp r8, r0
00649730  08 20 a0 e1                                      mov r2, r8
00649734  04 10 a0 e1                                      mov r1, r4
00649738  05 00 a0 e1                                      mov r0, r5
0064973c  12 00 00 aa                                      bge #0x64978c
00649740  41 ff ff eb                                      bl #0x64944c
00649744  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00649748  20 30 9d e5                                      ldr r3, [sp, #0x20]
0064974c  2c 00 8d e5                                      str r0, [sp, #0x2c]
00649750  03 00 51 e1                                      cmp r1, r3
00649754  37 00 00 0a                                      beq #0x649838
00649758  00 00 81 e5                                      str r0, [r1]
0064975c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00649760  01 80 88 e2                                      add r8, r8, #1
00649764  04 30 83 e2                                      add r3, r3, #4
00649768  1c 30 8d e5                                      str r3, [sp, #0x1c]
0064976c  04 10 a0 e1                                      mov r1, r4
00649770  05 00 a0 e1                                      mov r0, r5
00649774  30 ff ff eb                                      bl #0x64943c
00649778  00 00 58 e1                                      cmp r8, r0
0064977c  08 20 a0 e1                                      mov r2, r8
00649780  04 10 a0 e1                                      mov r1, r4
00649784  05 00 a0 e1                                      mov r0, r5
00649788  ec ff ff ba                                      blt #0x649740
0064978c  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00649790  20 30 9d e5                                      ldr r3, [sp, #0x20]
00649794  28 a0 8d e5                                      str sl, [sp, #0x28]
00649798  03 00 51 e1                                      cmp r1, r3
0064979c  2a 00 00 0a                                      beq #0x64984c
006497a0  00 a0 81 e5                                      str sl, [r1]
006497a4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006497a8  20 30 9d e5                                      ldr r3, [sp, #0x20]
006497ac  24 60 8d e5                                      str r6, [sp, #0x24]
006497b0  04 10 81 e2                                      add r1, r1, #4
006497b4  01 00 53 e1                                      cmp r3, r1
006497b8  1c 10 8d e5                                      str r1, [sp, #0x1c]
006497bc  2a 00 00 0a                                      beq #0x64986c
006497c0  00 60 81 e5                                      str r6, [r1]
006497c4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006497c8  04 30 83 e2                                      add r3, r3, #4
006497cc  1c 30 8d e5                                      str r3, [sp, #0x1c]
006497d0  00 30 97 e5                                      ldr r3, [r7]
006497d4  04 10 a0 e1                                      mov r1, r4
006497d8  05 00 a0 e1                                      mov r0, r5
006497dc  f4 80 93 e5                                      ldr r8, [r3, #0xf4]
006497e0  21 ff ff eb                                      bl #0x64946c
006497e4  04 10 a0 e1                                      mov r1, r4
006497e8  00 b0 a0 e1                                      mov fp, r0
006497ec  05 00 a0 e1                                      mov r0, r5
006497f0  19 ff ff eb                                      bl #0x64945c
006497f4  0b 10 a0 e1                                      mov r1, fp
006497f8  00 20 a0 e1                                      mov r2, r0
006497fc  18 30 9d e5                                      ldr r3, [sp, #0x18]
00649800  07 00 a0 e1                                      mov r0, r7
00649804  00 60 8d e5                                      str r6, [sp]
00649808  38 ff 2f e1                                      blx r8
0064980c  05 00 a0 e1                                      mov r0, r5
00649810  0b ff ff eb                                      bl #0x649444
00649814  01 40 84 e2                                      add r4, r4, #1
00649818  00 00 54 e1                                      cmp r4, r0
0064981c  ba ff ff ba                                      blt #0x64970c
00649820  18 00 9d e5                                      ldr r0, [sp, #0x18]
00649824  00 00 50 e3                                      cmp r0, #0
00649828  00 00 00 0a                                      beq #0x649830
0064982c  07 1b f3 eb                                      bl #0x310450
00649830  34 d0 8d e2                                      add sp, sp, #0x34
00649834  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00649838  09 00 a0 e1                                      mov r0, sb
0064983c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00649840  6d ff ff eb                                      bl #0x6495fc
00649844  01 80 88 e2                                      add r8, r8, #1
00649848  c7 ff ff ea                                      b #0x64976c
0064984c  09 00 a0 e1                                      mov r0, sb
00649850  10 20 9d e5                                      ldr r2, [sp, #0x10]
00649854  68 ff ff eb                                      bl #0x6495fc
00649858  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0064985c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00649860  24 60 8d e5                                      str r6, [sp, #0x24]
00649864  01 00 53 e1                                      cmp r3, r1
00649868  d4 ff ff 1a                                      bne #0x6497c0
0064986c  09 00 a0 e1                                      mov r0, sb
00649870  14 20 9d e5                                      ldr r2, [sp, #0x14]
00649874  60 ff ff eb                                      bl #0x6495fc
00649878  d4 ff ff ea                                      b #0x6497d0
; mapping-symbol data/literal pool
0064987c  14 bf 29 00                                      .byte 0x14, 0xbf, 0x29, 0x00

; FUNCTION 0x00649880, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZTv0_n16_NK6glitch7collada28CModularSkinnedMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::CModularSkinnedMeshSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00649880  00 30 90 e5                                      ldr r3, [r0]
00649884  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00649888  03 00 80 e0                                      add r0, r0, r3
0064988c  86 ff ff ea                                      b #0x6496ac

; FUNCTION 0x00649890, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CModularSkinnedMeshSceneNode
; alias: _ZTv0_n20_N6glitch7collada28CModularSkinnedMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::CModularSkinnedMeshSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00649890  00 30 90 e5                                      ldr r3, [r0]
00649894  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00649898  03 00 80 e0                                      add r0, r0, r3
0064989c  f4 fe ff ea                                      b #0x649474
