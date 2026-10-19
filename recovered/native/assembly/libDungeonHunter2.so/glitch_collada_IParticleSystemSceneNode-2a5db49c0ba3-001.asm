; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00619820, declared_size=344, range_size=344, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZN6glitch7collada24IParticleSystemSceneNode11addMaterialERNS0_9SMaterialEPNS_5video12IVideoDriverE
; demangled: glitch::collada::IParticleSystemSceneNode::addMaterial(glitch::collada::SMaterial&, glitch::video::IVideoDriver*)
; decoder-mode: arm
00619820  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00619824  08 d0 4d e2                                      sub sp, sp, #8
00619828  00 40 a0 e1                                      mov r4, r0
0061982c  04 50 8d e2                                      add r5, sp, #4
00619830  02 30 a0 e1                                      mov r3, r2
00619834  05 00 a0 e1                                      mov r0, r5
00619838  01 20 a0 e1                                      mov r2, r1
0061983c  54 11 94 e5                                      ldr r1, [r4, #0x154]
00619840  c6 0b 01 eb                                      bl #0x65c760
00619844  04 30 9d e5                                      ldr r3, [sp, #4]
00619848  00 00 53 e3                                      cmp r3, #0
0061984c  0a 00 00 0a                                      beq #0x61987c
00619850  5c 61 94 e5                                      ldr r6, [r4, #0x15c]
00619854  60 21 94 e5                                      ldr r2, [r4, #0x160]
00619858  02 00 56 e1                                      cmp r6, r2
0061985c  0a 00 00 0a                                      beq #0x61988c
00619860  00 30 86 e5                                      str r3, [r6]
00619864  00 20 93 e5                                      ldr r2, [r3]
00619868  01 20 82 e2                                      add r2, r2, #1
0061986c  00 20 83 e5                                      str r2, [r3]
00619870  5c 31 94 e5                                      ldr r3, [r4, #0x15c]
00619874  04 30 83 e2                                      add r3, r3, #4
00619878  5c 31 84 e5                                      str r3, [r4, #0x15c]
0061987c  05 00 a0 e1                                      mov r0, r5
00619880  d8 dc f3 eb                                      bl #0x310be8
00619884  08 d0 8d e2                                      add sp, sp, #8
00619888  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0061988c  58 31 94 e5                                      ldr r3, [r4, #0x158]
00619890  06 30 63 e0                                      rsb r3, r3, r6
00619894  43 31 a0 e1                                      asr r3, r3, #2
00619898  01 00 53 e3                                      cmp r3, #1
0061989c  03 70 83 20                                      addhs r7, r3, r3
006198a0  01 70 83 32                                      addlo r7, r3, #1
006198a4  07 01 77 e3                                      cmn r7, #0xc0000001
006198a8  2e 00 00 9a                                      bls #0x619968
006198ac  03 70 e0 e3                                      mvn r7, #3
006198b0  07 00 a0 e1                                      mov r0, r7
006198b4  00 10 a0 e3                                      mov r1, #0
006198b8  2a db f3 eb                                      bl #0x310568
006198bc  58 c1 94 e5                                      ldr ip, [r4, #0x158]
006198c0  00 80 a0 e1                                      mov r8, r0
006198c4  06 60 6c e0                                      rsb r6, ip, r6
006198c8  46 61 a0 e1                                      asr r6, r6, #2
006198cc  00 00 56 e3                                      cmp r6, #0
006198d0  00 90 a0 d1                                      movle sb, r0
006198d4  0b 00 00 da                                      ble #0x619908
006198d8  06 10 a0 e1                                      mov r1, r6
006198dc  00 20 a0 e3                                      mov r2, #0
006198e0  02 30 9c e7                                      ldr r3, [ip, r2]
006198e4  00 00 53 e3                                      cmp r3, #0
006198e8  02 30 88 e7                                      str r3, [r8, r2]
006198ec  00 00 93 15                                      ldrne r0, [r3]
006198f0  04 20 82 e2                                      add r2, r2, #4
006198f4  01 00 80 12                                      addne r0, r0, #1
006198f8  00 00 83 15                                      strne r0, [r3]
006198fc  01 10 51 e2                                      subs r1, r1, #1
00619900  f6 ff ff 1a                                      bne #0x6198e0
00619904  06 91 88 e0                                      add sb, r8, r6, lsl #2
00619908  04 30 9d e5                                      ldr r3, [sp, #4]
0061990c  00 30 89 e5                                      str r3, [sb]
00619910  00 00 53 e3                                      cmp r3, #0
00619914  00 20 93 15                                      ldrne r2, [r3]
00619918  04 90 89 e2                                      add sb, sb, #4
0061991c  01 20 82 12                                      addne r2, r2, #1
00619920  00 20 83 15                                      strne r2, [r3]
00619924  5c 61 94 e5                                      ldr r6, [r4, #0x15c]
00619928  58 a1 94 e5                                      ldr sl, [r4, #0x158]
0061992c  0a 00 56 e1                                      cmp r6, sl
00619930  05 00 00 0a                                      beq #0x61994c
00619934  04 60 46 e2                                      sub r6, r6, #4
00619938  06 00 a0 e1                                      mov r0, r6
0061993c  a9 dc f3 eb                                      bl #0x310be8
00619940  06 00 5a e1                                      cmp sl, r6
00619944  fa ff ff 1a                                      bne #0x619934
00619948  58 61 94 e5                                      ldr r6, [r4, #0x158]
0061994c  06 00 a0 e1                                      mov r0, r6
00619950  07 70 88 e0                                      add r7, r8, r7
00619954  bd da f3 eb                                      bl #0x310450
00619958  60 71 84 e5                                      str r7, [r4, #0x160]
0061995c  5c 91 84 e5                                      str sb, [r4, #0x15c]
00619960  58 81 84 e5                                      str r8, [r4, #0x158]
00619964  c4 ff ff ea                                      b #0x61987c
00619968  07 00 53 e1                                      cmp r3, r7
0061996c  07 71 a0 91                                      lslls r7, r7, #2
00619970  ce ff ff 9a                                      bls #0x6198b0
00619974  cc ff ff ea                                      b #0x6198ac

; FUNCTION 0x00667774, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZN6glitch7collada24IParticleSystemSceneNode5cloneEv
; demangled: glitch::collada::IParticleSystemSceneNode::clone()
; decoder-mode: arm
00667774  00 00 a0 e3                                      mov r0, #0
00667778  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066777c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZNK6glitch7collada24IParticleSystemSceneNode11getMaterialEj
; demangled: glitch::collada::IParticleSystemSceneNode::getMaterial(unsigned int) const
; decoder-mode: arm
0066777c  58 31 91 e5                                      ldr r3, [r1, #0x158]
00667780  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00667784  00 00 53 e3                                      cmp r3, #0
00667788  00 30 80 e5                                      str r3, [r0]
0066778c  00 20 93 15                                      ldrne r2, [r3]
00667790  01 20 82 12                                      addne r2, r2, #1
00667794  00 20 83 15                                      strne r2, [r3]
00667798  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066779c, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZNK6glitch7collada24IParticleSystemSceneNode16getMaterialCountEv
; demangled: glitch::collada::IParticleSystemSceneNode::getMaterialCount() const
; decoder-mode: arm
0066779c  58 31 90 e5                                      ldr r3, [r0, #0x158]
006677a0  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
006677a4  00 00 63 e0                                      rsb r0, r3, r0
006677a8  40 01 a0 e1                                      asr r0, r0, #2
006677ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x006677d0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZNK6glitch7collada24IParticleSystemSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::IParticleSystemSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006677d0  b3 be fc ea                                      b #0x5972a4

; FUNCTION 0x006677d4, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZN6glitch7collada24IParticleSystemSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::IParticleSystemSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
006677d4  1f c2 fc ea                                      b #0x598058

; FUNCTION 0x0066781c, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZN6glitch7collada24IParticleSystemSceneNodeD1Ev
; demangled: glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode()
; decoder-mode: arm
0066781c  70 40 2d e9                                      push {r4, r5, r6, lr}
00667820  68 50 9f e5                                      ldr r5, [pc, #0x68]
00667824  68 30 9f e5                                      ldr r3, [pc, #0x68]
00667828  00 40 a0 e1                                      mov r4, r0
0066782c  05 50 8f e0                                      add r5, pc, r5
00667830  64 01 90 e5                                      ldr r0, [r0, #0x164]
00667834  03 30 95 e7                                      ldr r3, [r5, r3]
00667838  00 00 50 e3                                      cmp r0, #0
0066783c  4e 2f 83 e2                                      add r2, r3, #0x138
00667840  1c 30 83 e2                                      add r3, r3, #0x1c
00667844  00 30 84 e5                                      str r3, [r4]
00667848  78 21 84 e5                                      str r2, [r4, #0x178]
0066784c  00 00 00 0a                                      beq #0x667854
00667850  fe a2 f2 eb                                      bl #0x310450
00667854  56 0f 84 e2                                      add r0, r4, #0x158
00667858  de ff ff eb                                      bl #0x6677d8
0066785c  40 01 94 e5                                      ldr r0, [r4, #0x140]
00667860  00 00 50 e3                                      cmp r0, #0
00667864  00 00 00 0a                                      beq #0x66786c
00667868  45 d7 f2 eb                                      bl #0x31d584
0066786c  4d 0f 84 e2                                      add r0, r4, #0x134
00667870  ff c6 fe eb                                      bl #0x619474
00667874  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00667878  04 00 a0 e1                                      mov r0, r4
0066787c  01 10 95 e7                                      ldr r1, [r5, r1]
00667880  04 10 81 e2                                      add r1, r1, #4
00667884  0c c5 fc eb                                      bl #0x598cbc
00667888  04 00 a0 e1                                      mov r0, r4
0066788c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00667890  64 d2 32 00 5c 40 00 00 74 2a 00 00              .byte 0x64, 0xd2, 0x32, 0x00, 0x5c, 0x40, 0x00, 0x00, 0x74, 0x2a, 0x00, 0x00

; FUNCTION 0x0066789c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZN6glitch7collada24IParticleSystemSceneNodeD0Ev
; demangled: glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode()
; decoder-mode: arm
0066789c  10 40 2d e9                                      push {r4, lr}
006678a0  00 40 a0 e1                                      mov r4, r0
006678a4  dc ff ff eb                                      bl #0x66781c
006678a8  04 00 a0 e1                                      mov r0, r4
006678ac  7f 9a f2 eb                                      bl #0x30e2b0
006678b0  04 00 a0 e1                                      mov r0, r4
006678b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006678b8, declared_size=116, range_size=116, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZN6glitch7collada24IParticleSystemSceneNodeD2Ev
; demangled: glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode()
; decoder-mode: arm
006678b8  70 40 2d e9                                      push {r4, r5, r6, lr}
006678bc  00 30 91 e5                                      ldr r3, [r1]
006678c0  00 40 a0 e1                                      mov r4, r0
006678c4  01 50 a0 e1                                      mov r5, r1
006678c8  00 30 80 e5                                      str r3, [r0]
006678cc  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
006678d0  10 20 91 e5                                      ldr r2, [r1, #0x10]
006678d4  03 20 80 e7                                      str r2, [r0, r3]
006678d8  00 30 90 e5                                      ldr r3, [r0]
006678dc  14 20 91 e5                                      ldr r2, [r1, #0x14]
006678e0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006678e4  03 20 80 e7                                      str r2, [r0, r3]
006678e8  64 01 90 e5                                      ldr r0, [r0, #0x164]
006678ec  00 00 50 e3                                      cmp r0, #0
006678f0  00 00 00 0a                                      beq #0x6678f8
006678f4  d5 a2 f2 eb                                      bl #0x310450
006678f8  56 0f 84 e2                                      add r0, r4, #0x158
006678fc  b5 ff ff eb                                      bl #0x6677d8
00667900  40 01 94 e5                                      ldr r0, [r4, #0x140]
00667904  00 00 50 e3                                      cmp r0, #0
00667908  00 00 00 0a                                      beq #0x667910
0066790c  1c d7 f2 eb                                      bl #0x31d584
00667910  4d 0f 84 e2                                      add r0, r4, #0x134
00667914  d6 c6 fe eb                                      bl #0x619474
00667918  04 00 a0 e1                                      mov r0, r4
0066791c  04 10 85 e2                                      add r1, r5, #4
00667920  e5 c4 fc eb                                      bl #0x598cbc
00667924  04 00 a0 e1                                      mov r0, r4
00667928  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0066792c, declared_size=364, range_size=364, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZN6glitch7collada24IParticleSystemSceneNodeC1ERKNS0_16CColladaDatabaseEPNS_3res6vectorINS5_6StringEEEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::IParticleSystemSceneNode::IParticleSystemSceneNode(glitch::collada::CColladaDatabase const&, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
0066792c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00667930  4c 51 9f e5                                      ldr r5, [pc, #0x14c]
00667934  4c e1 9f e5                                      ldr lr, [pc, #0x14c]
00667938  4c c1 9f e5                                      ldr ip, [pc, #0x14c]
0066793c  05 50 8f e0                                      add r5, pc, r5
00667940  0e 70 95 e7                                      ldr r7, [r5, lr]
00667944  0c c0 95 e7                                      ldr ip, [r5, ip]
00667948  01 60 a0 e3                                      mov r6, #1
0066794c  18 e0 97 e5                                      ldr lr, [r7, #0x18]
00667950  08 c0 8c e2                                      add ip, ip, #8
00667954  78 c1 80 e5                                      str ip, [r0, #0x178]
00667958  00 e0 80 e5                                      str lr, [r0]
0066795c  7c 61 80 e5                                      str r6, [r0, #0x17c]
00667960  0c 60 1e e5                                      ldr r6, [lr, #-0xc]
00667964  1c 80 97 e5                                      ldr r8, [r7, #0x1c]
00667968  34 d0 4d e2                                      sub sp, sp, #0x34
0066796c  00 c0 a0 e3                                      mov ip, #0
00667970  06 80 80 e7                                      str r8, [r0, r6]
00667974  01 60 a0 e1                                      mov r6, r1
00667978  04 10 87 e2                                      add r1, r7, #4
0066797c  08 70 8d e2                                      add r7, sp, #8
00667980  fe e5 a0 e3                                      mov lr, #0x3f800000
00667984  00 70 8d e5                                      str r7, [sp]
00667988  02 a0 a0 e1                                      mov sl, r2
0066798c  03 80 a0 e1                                      mov r8, r3
00667990  00 20 e0 e3                                      mvn r2, #0
00667994  24 30 8d e2                                      add r3, sp, #0x24
00667998  18 70 8d e2                                      add r7, sp, #0x18
0066799c  00 40 a0 e1                                      mov r4, r0
006679a0  10 c0 8d e5                                      str ip, [sp, #0x10]
006679a4  20 e0 8d e5                                      str lr, [sp, #0x20]
006679a8  04 70 8d e5                                      str r7, [sp, #4]
006679ac  24 c0 8d e5                                      str ip, [sp, #0x24]
006679b0  28 c0 8d e5                                      str ip, [sp, #0x28]
006679b4  2c c0 8d e5                                      str ip, [sp, #0x2c]
006679b8  08 c0 8d e5                                      str ip, [sp, #8]
006679bc  0c c0 8d e5                                      str ip, [sp, #0xc]
006679c0  14 e0 8d e5                                      str lr, [sp, #0x14]
006679c4  18 e0 8d e5                                      str lr, [sp, #0x18]
006679c8  1c e0 8d e5                                      str lr, [sp, #0x1c]
006679cc  bb c5 fc eb                                      bl #0x5990c0
006679d0  00 30 96 e5                                      ldr r3, [r6]
006679d4  34 31 84 e5                                      str r3, [r4, #0x134]
006679d8  04 20 96 e5                                      ldr r2, [r6, #4]
006679dc  00 00 53 e3                                      cmp r3, #0
006679e0  38 21 84 e5                                      str r2, [r4, #0x138]
006679e4  03 00 00 0a                                      beq #0x6679f8
006679e8  04 20 93 e5                                      ldr r2, [r3, #4]
006679ec  00 00 52 e3                                      cmp r2, #0
006679f0  01 20 82 12                                      addne r2, r2, #1
006679f4  04 20 83 15                                      strne r2, [r3, #4]
006679f8  90 10 9f e5                                      ldr r1, [pc, #0x90]
006679fc  90 20 9f e5                                      ldr r2, [pc, #0x90]
00667a00  00 30 a0 e3                                      mov r3, #0
00667a04  01 10 95 e7                                      ldr r1, [r5, r1]
00667a08  02 20 95 e7                                      ldr r2, [r5, r2]
00667a0c  70 31 c4 e5                                      strb r3, [r4, #0x170]
00667a10  04 10 81 e2                                      add r1, r1, #4
00667a14  4e 0f 82 e2                                      add r0, r2, #0x138
00667a18  1c 20 82 e2                                      add r2, r2, #0x1c
00667a1c  30 11 84 e5                                      str r1, [r4, #0x130]
00667a20  00 20 84 e5                                      str r2, [r4]
00667a24  78 01 84 e5                                      str r0, [r4, #0x178]
00667a28  3c 31 c4 e5                                      strb r3, [r4, #0x13c]
00667a2c  3d 31 c4 e5                                      strb r3, [r4, #0x13d]
00667a30  3e 31 c4 e5                                      strb r3, [r4, #0x13e]
00667a34  3f 31 c4 e5                                      strb r3, [r4, #0x13f]
00667a38  40 31 84 e5                                      str r3, [r4, #0x140]
00667a3c  48 31 84 e5                                      str r3, [r4, #0x148]
00667a40  58 31 84 e5                                      str r3, [r4, #0x158]
00667a44  5c 31 84 e5                                      str r3, [r4, #0x15c]
00667a48  60 31 84 e5                                      str r3, [r4, #0x160]
00667a4c  64 31 84 e5                                      str r3, [r4, #0x164]
00667a50  68 31 84 e5                                      str r3, [r4, #0x168]
00667a54  6c 31 84 e5                                      str r3, [r4, #0x16c]
00667a58  08 00 a0 e1                                      mov r0, r8
00667a5c  04 10 a0 e1                                      mov r1, r4
00667a60  50 a1 84 e5                                      str sl, [r4, #0x150]
00667a64  54 81 84 e5                                      str r8, [r4, #0x154]
00667a68  e8 cd ff eb                                      bl #0x65b210
00667a6c  04 00 a0 e1                                      mov r0, r4
00667a70  02 10 a0 e3                                      mov r1, #2
00667a74  c8 bd fc eb                                      bl #0x59719c
00667a78  04 00 a0 e1                                      mov r0, r4
00667a7c  34 d0 8d e2                                      add sp, sp, #0x34
00667a80  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00667a84  54 d1 32 00 74 2a 00 00 44 2b 00 00 b4 17 00 00  .byte 0x54, 0xd1, 0x32, 0x00, 0x74, 0x2a, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00
00667a94  5c 40 00 00                                      .byte 0x5c, 0x40, 0x00, 0x00

; FUNCTION 0x00667a98, declared_size=316, range_size=316, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZN6glitch7collada24IParticleSystemSceneNodeC2ERKNS0_16CColladaDatabaseEPNS_3res6vectorINS5_6StringEEEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::IParticleSystemSceneNode::IParticleSystemSceneNode(glitch::collada::CColladaDatabase const&, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00667a98  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00667a9c  30 d0 4d e2                                      sub sp, sp, #0x30
00667aa0  08 40 8d e2                                      add r4, sp, #8
00667aa4  00 c0 a0 e3                                      mov ip, #0
00667aa8  fe e5 a0 e3                                      mov lr, #0x3f800000
00667aac  02 60 a0 e1                                      mov r6, r2
00667ab0  00 40 8d e5                                      str r4, [sp]
00667ab4  00 20 e0 e3                                      mvn r2, #0
00667ab8  18 40 8d e2                                      add r4, sp, #0x18
00667abc  01 50 a0 e1                                      mov r5, r1
00667ac0  03 70 a0 e1                                      mov r7, r3
00667ac4  04 10 81 e2                                      add r1, r1, #4
00667ac8  24 30 8d e2                                      add r3, sp, #0x24
00667acc  04 40 8d e5                                      str r4, [sp, #4]
00667ad0  10 c0 8d e5                                      str ip, [sp, #0x10]
00667ad4  00 40 a0 e1                                      mov r4, r0
00667ad8  20 e0 8d e5                                      str lr, [sp, #0x20]
00667adc  24 c0 8d e5                                      str ip, [sp, #0x24]
00667ae0  28 c0 8d e5                                      str ip, [sp, #0x28]
00667ae4  2c c0 8d e5                                      str ip, [sp, #0x2c]
00667ae8  08 c0 8d e5                                      str ip, [sp, #8]
00667aec  0c c0 8d e5                                      str ip, [sp, #0xc]
00667af0  14 e0 8d e5                                      str lr, [sp, #0x14]
00667af4  18 e0 8d e5                                      str lr, [sp, #0x18]
00667af8  1c e0 8d e5                                      str lr, [sp, #0x1c]
00667afc  48 80 9d e5                                      ldr r8, [sp, #0x48]
00667b00  6e c5 fc eb                                      bl #0x5990c0
00667b04  00 30 96 e5                                      ldr r3, [r6]
00667b08  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
00667b0c  34 31 84 e5                                      str r3, [r4, #0x134]
00667b10  04 20 96 e5                                      ldr r2, [r6, #4]
00667b14  00 00 53 e3                                      cmp r3, #0
00667b18  01 10 8f e0                                      add r1, pc, r1
00667b1c  38 21 84 e5                                      str r2, [r4, #0x138]
00667b20  03 00 00 0a                                      beq #0x667b34
00667b24  04 20 93 e5                                      ldr r2, [r3, #4]
00667b28  00 00 52 e3                                      cmp r2, #0
00667b2c  01 20 82 12                                      addne r2, r2, #1
00667b30  04 20 83 15                                      strne r2, [r3, #4]
00667b34  94 20 9f e5                                      ldr r2, [pc, #0x94]
00667b38  00 30 a0 e3                                      mov r3, #0
00667b3c  08 00 a0 e1                                      mov r0, r8
00667b40  02 20 91 e7                                      ldr r2, [r1, r2]
00667b44  04 10 a0 e1                                      mov r1, r4
00667b48  04 20 82 e2                                      add r2, r2, #4
00667b4c  30 21 84 e5                                      str r2, [r4, #0x130]
00667b50  00 20 95 e5                                      ldr r2, [r5]
00667b54  00 20 84 e5                                      str r2, [r4]
00667b58  10 c0 95 e5                                      ldr ip, [r5, #0x10]
00667b5c  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
00667b60  02 c0 84 e7                                      str ip, [r4, r2]
00667b64  00 20 94 e5                                      ldr r2, [r4]
00667b68  14 c0 95 e5                                      ldr ip, [r5, #0x14]
00667b6c  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00667b70  02 c0 84 e7                                      str ip, [r4, r2]
00667b74  70 31 c4 e5                                      strb r3, [r4, #0x170]
00667b78  3c 31 c4 e5                                      strb r3, [r4, #0x13c]
00667b7c  3d 31 c4 e5                                      strb r3, [r4, #0x13d]
00667b80  3e 31 c4 e5                                      strb r3, [r4, #0x13e]
00667b84  3f 31 c4 e5                                      strb r3, [r4, #0x13f]
00667b88  40 31 84 e5                                      str r3, [r4, #0x140]
00667b8c  48 31 84 e5                                      str r3, [r4, #0x148]
00667b90  58 31 84 e5                                      str r3, [r4, #0x158]
00667b94  5c 31 84 e5                                      str r3, [r4, #0x15c]
00667b98  60 31 84 e5                                      str r3, [r4, #0x160]
00667b9c  64 31 84 e5                                      str r3, [r4, #0x164]
00667ba0  68 31 84 e5                                      str r3, [r4, #0x168]
00667ba4  6c 31 84 e5                                      str r3, [r4, #0x16c]
00667ba8  50 71 84 e5                                      str r7, [r4, #0x150]
00667bac  54 81 84 e5                                      str r8, [r4, #0x154]
00667bb0  96 cd ff eb                                      bl #0x65b210
00667bb4  04 00 a0 e1                                      mov r0, r4
00667bb8  02 10 a0 e3                                      mov r1, #2
00667bbc  76 bd fc eb                                      bl #0x59719c
00667bc0  04 00 a0 e1                                      mov r0, r4
00667bc4  30 d0 8d e2                                      add sp, sp, #0x30
00667bc8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00667bcc  78 cf 32 00 b4 17 00 00                          .byte 0x78, 0xcf, 0x32, 0x00, 0xb4, 0x17, 0x00, 0x00

; FUNCTION 0x00667bd4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZTv0_n24_N6glitch7collada24IParticleSystemSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode()
; decoder-mode: arm
00667bd4  00 30 90 e5                                      ldr r3, [r0]
00667bd8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00667bdc  03 00 80 e0                                      add r0, r0, r3
00667be0  2d ff ff ea                                      b #0x66789c

; FUNCTION 0x00667be4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZTv0_n12_N6glitch7collada24IParticleSystemSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode()
; decoder-mode: arm
00667be4  00 30 90 e5                                      ldr r3, [r0]
00667be8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00667bec  03 00 80 e0                                      add r0, r0, r3
00667bf0  29 ff ff ea                                      b #0x66789c

; FUNCTION 0x00667bf4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZTv0_n24_N6glitch7collada24IParticleSystemSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode()
; decoder-mode: arm
00667bf4  00 30 90 e5                                      ldr r3, [r0]
00667bf8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00667bfc  03 00 80 e0                                      add r0, r0, r3
00667c00  05 ff ff ea                                      b #0x66781c

; FUNCTION 0x00667c04, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZTv0_n12_N6glitch7collada24IParticleSystemSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::IParticleSystemSceneNode::~IParticleSystemSceneNode()
; decoder-mode: arm
00667c04  00 30 90 e5                                      ldr r3, [r0]
00667c08  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00667c0c  03 00 80 e0                                      add r0, r0, r3
00667c10  01 ff ff ea                                      b #0x66781c

; FUNCTION 0x00667c14, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZTv0_n20_N6glitch7collada24IParticleSystemSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::IParticleSystemSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00667c14  00 30 90 e5                                      ldr r3, [r0]
00667c18  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00667c1c  03 00 80 e0                                      add r0, r0, r3
00667c20  eb fe ff ea                                      b #0x6677d4

; FUNCTION 0x00667c24, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::IParticleSystemSceneNode
; alias: _ZTv0_n16_NK6glitch7collada24IParticleSystemSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::IParticleSystemSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00667c24  00 30 90 e5                                      ldr r3, [r0]
00667c28  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00667c2c  03 00 80 e0                                      add r0, r0, r3
00667c30  e6 fe ff ea                                      b #0x6677d0
