; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003506ac, declared_size=52, range_size=52, mode=arm
; class-group: ColladaFactory
; alias: _ZN14ColladaFactoryD1Ev
; demangled: ColladaFactory::~ColladaFactory()
; decoder-mode: arm
003506ac  24 30 9f e5                                      ldr r3, [pc, #0x24]
003506b0  24 20 9f e5                                      ldr r2, [pc, #0x24]
003506b4  10 40 2d e9                                      push {r4, lr}
003506b8  03 30 8f e0                                      add r3, pc, r3
003506bc  02 20 93 e7                                      ldr r2, [r3, r2]
003506c0  00 40 a0 e1                                      mov r4, r0
003506c4  08 20 82 e2                                      add r2, r2, #8
003506c8  00 20 80 e5                                      str r2, [r0]
003506cc  0a 7e 0b eb                                      bl #0x62fefc
003506d0  04 00 a0 e1                                      mov r0, r4
003506d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003506d8  d8 43 64 00 e4 09 00 00                          .byte 0xd8, 0x43, 0x64, 0x00, 0xe4, 0x09, 0x00, 0x00

; FUNCTION 0x003506e0, declared_size=44, range_size=44, mode=arm
; class-group: ColladaFactory
; alias: _ZN14ColladaFactory14createMaterialERKN6glitch7collada16CColladaDatabaseEPNS0_5video12IVideoDriverEPNS1_9SMaterialEPNS1_14CRootSceneNodeE
; demangled: ColladaFactory::createMaterial(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SMaterial*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
003506e0  10 40 2d e9                                      push {r4, lr}
003506e4  08 d0 4d e2                                      sub sp, sp, #8
003506e8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
003506ec  00 40 a0 e1                                      mov r4, r0
003506f0  00 c0 8d e5                                      str ip, [sp]
003506f4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
003506f8  04 c0 8d e5                                      str ip, [sp, #4]
003506fc  33 87 0b eb                                      bl #0x6323d0
00350700  04 00 a0 e1                                      mov r0, r4
00350704  08 d0 8d e2                                      add sp, sp, #8
00350708  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0035070c, declared_size=48, range_size=48, mode=arm
; class-group: ColladaFactory
; alias: _ZN14ColladaFactory14createAnimatorERKN6glitch7collada16CColladaDatabaseEPNS1_22SLibraryAnimationClipsE
; demangled: ColladaFactory::createAnimator(glitch::collada::CColladaDatabase const&, glitch::collada::SLibraryAnimationClips*)
; decoder-mode: arm
0035070c  70 40 2d e9                                      push {r4, r5, r6, lr}
00350710  9c 00 a0 e3                                      mov r0, #0x9c
00350714  01 50 a0 e1                                      mov r5, r1
00350718  00 10 a0 e3                                      mov r1, #0
0035071c  02 60 a0 e1                                      mov r6, r2
00350720  a1 8e 07 eb                                      bl #0x5341ac
00350724  05 10 a0 e1                                      mov r1, r5
00350728  00 40 a0 e1                                      mov r4, r0
0035072c  06 20 a0 e1                                      mov r2, r6
00350730  56 57 00 eb                                      bl #0x366490
00350734  04 00 a0 e1                                      mov r0, r4
00350738  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0035073c, declared_size=44, range_size=44, mode=arm
; class-group: ColladaFactory
; alias: _ZN14ColladaFactory10createSkinERKN6glitch7collada16CColladaDatabaseEPNS0_5video12IVideoDriverEPNS1_11SControllerEPNS1_14CRootSceneNodeE
; demangled: ColladaFactory::createSkin(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
0035073c  10 40 2d e9                                      push {r4, lr}
00350740  08 d0 4d e2                                      sub sp, sp, #8
00350744  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00350748  00 40 a0 e1                                      mov r4, r0
0035074c  00 c0 8d e5                                      str ip, [sp]
00350750  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00350754  04 c0 8d e5                                      str ip, [sp, #4]
00350758  9b 83 0b eb                                      bl #0x6315cc
0035075c  04 00 a0 e1                                      mov r0, r4
00350760  08 d0 8d e2                                      add sp, sp, #8
00350764  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00350768, declared_size=44, range_size=44, mode=arm
; class-group: ColladaFactory
; alias: _ZN14ColladaFactory11createMorphERKN6glitch7collada16CColladaDatabaseEPNS0_5video12IVideoDriverEPNS1_11SControllerEPNS1_14CRootSceneNodeE
; demangled: ColladaFactory::createMorph(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00350768  10 40 2d e9                                      push {r4, lr}
0035076c  08 d0 4d e2                                      sub sp, sp, #8
00350770  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00350774  00 40 a0 e1                                      mov r4, r0
00350778  00 c0 8d e5                                      str ip, [sp]
0035077c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00350780  04 c0 8d e5                                      str ip, [sp, #4]
00350784  4f 84 0b eb                                      bl #0x6318c8
00350788  04 00 a0 e1                                      mov r0, r4
0035078c  08 d0 8d e2                                      add sp, sp, #8
00350790  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00350794, declared_size=36, range_size=36, mode=arm
; class-group: ColladaFactory
; alias: _ZN14ColladaFactory14createGeometryERKN6glitch7collada16CColladaDatabaseEPNS0_5video12IVideoDriverEPNS1_9SGeometryE
; demangled: ColladaFactory::createGeometry(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SGeometry*)
; decoder-mode: arm
00350794  10 40 2d e9                                      push {r4, lr}
00350798  08 d0 4d e2                                      sub sp, sp, #8
0035079c  10 c0 9d e5                                      ldr ip, [sp, #0x10]
003507a0  00 40 a0 e1                                      mov r4, r0
003507a4  00 c0 8d e5                                      str ip, [sp]
003507a8  5d 84 0b eb                                      bl #0x631924
003507ac  04 00 a0 e1                                      mov r0, r4
003507b0  08 d0 8d e2                                      add sp, sp, #8
003507b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003507b8, declared_size=4, range_size=4, mode=arm
; class-group: ColladaFactory
; alias: _ZN14ColladaFactory20createParticleSystemERKN6glitch7collada16CColladaDatabaseEPNS0_5video12IVideoDriverEPNS1_8SEmitterEPNS0_3res6vectorINSA_6StringEEEPNS1_14CRootSceneNodeE
; demangled: ColladaFactory::createParticleSystem(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SEmitter*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
003507b8  29 91 0b ea                                      b #0x634c64

; FUNCTION 0x003507bc, declared_size=152, range_size=152, mode=arm
; class-group: ColladaFactory
; alias: _ZN14ColladaFactory15createBillboardERKN6glitch7collada16CColladaDatabaseEPNS1_5SNodeE
; demangled: ColladaFactory::createBillboard(glitch::collada::CColladaDatabase const&, glitch::collada::SNode*)
; decoder-mode: arm
003507bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003507c0  16 0e a0 e3                                      mov r0, #0x160
003507c4  01 70 a0 e1                                      mov r7, r1
003507c8  00 10 a0 e3                                      mov r1, #0
003507cc  02 60 a0 e1                                      mov r6, r2
003507d0  75 8e 07 eb                                      bl #0x5341ac
003507d4  68 50 9f e5                                      ldr r5, [pc, #0x68]
003507d8  68 20 9f e5                                      ldr r2, [pc, #0x68]
003507dc  68 30 9f e5                                      ldr r3, [pc, #0x68]
003507e0  05 50 8f e0                                      add r5, pc, r5
003507e4  02 10 95 e7                                      ldr r1, [r5, r2]
003507e8  03 30 95 e7                                      ldr r3, [r5, r3]
003507ec  01 c0 a0 e3                                      mov ip, #1
003507f0  30 20 91 e5                                      ldr r2, [r1, #0x30]
003507f4  08 30 83 e2                                      add r3, r3, #8
003507f8  5c c1 80 e5                                      str ip, [r0, #0x15c]
003507fc  00 20 80 e5                                      str r2, [r0]
00350800  58 31 80 e5                                      str r3, [r0, #0x158]
00350804  0c 30 12 e5                                      ldr r3, [r2, #-0xc]
00350808  34 c0 91 e5                                      ldr ip, [r1, #0x34]
0035080c  07 20 a0 e1                                      mov r2, r7
00350810  04 10 81 e2                                      add r1, r1, #4
00350814  03 c0 80 e7                                      str ip, [r0, r3]
00350818  06 30 a0 e1                                      mov r3, r6
0035081c  00 40 a0 e1                                      mov r4, r0
00350820  a3 32 0c eb                                      bl #0x65d2b4
00350824  24 30 9f e5                                      ldr r3, [pc, #0x24]
00350828  04 00 a0 e1                                      mov r0, r4
0035082c  03 30 95 e7                                      ldr r3, [r5, r3]
00350830  49 2f 83 e2                                      add r2, r3, #0x124
00350834  1c 30 83 e2                                      add r3, r3, #0x1c
00350838  00 30 84 e5                                      str r3, [r4]
0035083c  58 21 84 e5                                      str r2, [r4, #0x158]
00350840  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00350844  b0 42 64 00 a0 0e 00 00 44 2b 00 00 8c 23 00 00  .byte 0xb0, 0x42, 0x64, 0x00, 0xa0, 0x0e, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x8c, 0x23, 0x00, 0x00

; FUNCTION 0x00350854, declared_size=40, range_size=40, mode=arm
; class-group: ColladaFactory
; alias: _ZN14ColladaFactory21createModularSkinNodeERKN6glitch7collada16CColladaDatabaseERKN5boost13intrusive_ptrINS1_5IMeshEEEPv
; demangled: ColladaFactory::createModularSkinNode(glitch::collada::CColladaDatabase const&, boost::intrusive_ptr<glitch::collada::IMesh> const&, void*)
; decoder-mode: arm
00350854  70 40 2d e9                                      push {r4, r5, r6, lr}
00350858  00 10 a0 e3                                      mov r1, #0
0035085c  63 0f a0 e3                                      mov r0, #0x18c
00350860  02 50 a0 e1                                      mov r5, r2
00350864  50 8e 07 eb                                      bl #0x5341ac
00350868  05 10 a0 e1                                      mov r1, r5
0035086c  00 40 a0 e1                                      mov r4, r0
00350870  a2 29 00 eb                                      bl #0x35af00
00350874  04 00 a0 e1                                      mov r0, r4
00350878  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0035087c, declared_size=40, range_size=40, mode=arm
; class-group: ColladaFactory
; alias: _ZN14ColladaFactory14createSkinNodeERKN6glitch7collada16CColladaDatabaseERKN5boost13intrusive_ptrINS1_5IMeshEEEPv
; demangled: ColladaFactory::createSkinNode(glitch::collada::CColladaDatabase const&, boost::intrusive_ptr<glitch::collada::IMesh> const&, void*)
; decoder-mode: arm
0035087c  70 40 2d e9                                      push {r4, r5, r6, lr}
00350880  00 10 a0 e3                                      mov r1, #0
00350884  63 0f a0 e3                                      mov r0, #0x18c
00350888  02 50 a0 e1                                      mov r5, r2
0035088c  46 8e 07 eb                                      bl #0x5341ac
00350890  05 10 a0 e1                                      mov r1, r5
00350894  00 40 a0 e1                                      mov r4, r0
00350898  00 2a 00 eb                                      bl #0x35b0a0
0035089c  04 00 a0 e1                                      mov r0, r4
003508a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003508a4, declared_size=40, range_size=40, mode=arm
; class-group: ColladaFactory
; alias: _ZN14ColladaFactory14createMeshNodeERKN6glitch7collada16CColladaDatabaseERKN5boost13intrusive_ptrINS1_5IMeshEEEPv
; demangled: ColladaFactory::createMeshNode(glitch::collada::CColladaDatabase const&, boost::intrusive_ptr<glitch::collada::IMesh> const&, void*)
; decoder-mode: arm
003508a4  70 40 2d e9                                      push {r4, r5, r6, lr}
003508a8  00 10 a0 e3                                      mov r1, #0
003508ac  51 0f a0 e3                                      mov r0, #0x144
003508b0  02 50 a0 e1                                      mov r5, r2
003508b4  3c 8e 07 eb                                      bl #0x5341ac
003508b8  05 10 a0 e1                                      mov r1, r5
003508bc  00 40 a0 e1                                      mov r4, r0
003508c0  5e 2a 00 eb                                      bl #0x35b240
003508c4  04 00 a0 e1                                      mov r0, r4
003508c8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003508cc, declared_size=40, range_size=40, mode=arm
; class-group: ColladaFactory
; alias: _ZN14ColladaFactory11createSceneERKN6glitch7collada16CColladaDatabaseE
; demangled: ColladaFactory::createScene(glitch::collada::CColladaDatabase const&)
; decoder-mode: arm
003508cc  70 40 2d e9                                      push {r4, r5, r6, lr}
003508d0  85 0f a0 e3                                      mov r0, #0x214
003508d4  01 50 a0 e1                                      mov r5, r1
003508d8  00 10 a0 e3                                      mov r1, #0
003508dc  32 8e 07 eb                                      bl #0x5341ac
003508e0  05 10 a0 e1                                      mov r1, r5
003508e4  00 40 a0 e1                                      mov r4, r0
003508e8  cd 33 00 eb                                      bl #0x35d824
003508ec  04 00 a0 e1                                      mov r0, r4
003508f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00350a10, declared_size=60, range_size=60, mode=arm
; class-group: ColladaFactory
; alias: _ZN14ColladaFactoryD0Ev
; demangled: ColladaFactory::~ColladaFactory()
; decoder-mode: arm
00350a10  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00350a14  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00350a18  10 40 2d e9                                      push {r4, lr}
00350a1c  03 30 8f e0                                      add r3, pc, r3
00350a20  02 20 93 e7                                      ldr r2, [r3, r2]
00350a24  00 40 a0 e1                                      mov r4, r0
00350a28  08 20 82 e2                                      add r2, r2, #8
00350a2c  00 20 80 e5                                      str r2, [r0]
00350a30  31 7d 0b eb                                      bl #0x62fefc
00350a34  04 00 a0 e1                                      mov r0, r4
00350a38  80 fe fe eb                                      bl #0x310440
00350a3c  04 00 a0 e1                                      mov r0, r4
00350a40  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00350a44  74 40 64 00 e4 09 00 00                          .byte 0x74, 0x40, 0x64, 0x00, 0xe4, 0x09, 0x00, 0x00
