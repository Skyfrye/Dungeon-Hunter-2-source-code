; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00644404, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CLightSceneNode
; alias: _ZNK6glitch7collada15CLightSceneNode10getLightIDEv
; demangled: glitch::collada::CLightSceneNode::getLightID() const
; decoder-mode: arm
00644404  60 01 90 e5                                      ldr r0, [r0, #0x160]
00644408  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064440c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CLightSceneNode
; alias: _ZNK6glitch7collada15CLightSceneNode6getUIDEv
; demangled: glitch::collada::CLightSceneNode::getUID() const
; decoder-mode: arm
0064440c  60 31 90 e5                                      ldr r3, [r0, #0x160]
00644410  00 00 93 e5                                      ldr r0, [r3]
00644414  1e ff 2f e1                                      bx lr

; FUNCTION 0x00644438, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::CLightSceneNode
; alias: _ZN6glitch7collada15CLightSceneNodeD1Ev
; demangled: glitch::collada::CLightSceneNode::~CLightSceneNode()
; decoder-mode: arm
00644438  70 40 2d e9                                      push {r4, r5, r6, lr}
0064443c  40 50 9f e5                                      ldr r5, [pc, #0x40]
00644440  40 30 9f e5                                      ldr r3, [pc, #0x40]
00644444  00 40 a0 e1                                      mov r4, r0
00644448  05 50 8f e0                                      add r5, pc, r5
0064444c  03 30 95 e7                                      ldr r3, [r5, r3]
00644450  56 0f 80 e2                                      add r0, r0, #0x158
00644454  12 2e 83 e2                                      add r2, r3, #0x120
00644458  1c 30 83 e2                                      add r3, r3, #0x1c
0064445c  00 30 84 e5                                      str r3, [r4]
00644460  64 21 84 e5                                      str r2, [r4, #0x164]
00644464  02 54 ff eb                                      bl #0x619474
00644468  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
0064446c  04 00 a0 e1                                      mov r0, r4
00644470  01 10 95 e7                                      ldr r1, [r5, r1]
00644474  04 10 81 e2                                      add r1, r1, #4
00644478  3f 01 fd eb                                      bl #0x58497c
0064447c  04 00 a0 e1                                      mov r0, r4
00644480  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00644484  48 06 35 00 48 10 00 00 dc 3a 00 00              .byte 0x48, 0x06, 0x35, 0x00, 0x48, 0x10, 0x00, 0x00, 0xdc, 0x3a, 0x00, 0x00

; FUNCTION 0x00644490, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CLightSceneNode
; alias: _ZTv0_n24_N6glitch7collada15CLightSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CLightSceneNode::~CLightSceneNode()
; decoder-mode: arm
00644490  00 30 90 e5                                      ldr r3, [r0]
00644494  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00644498  03 00 80 e0                                      add r0, r0, r3
0064449c  e5 ff ff ea                                      b #0x644438

; FUNCTION 0x006444a0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CLightSceneNode
; alias: _ZTv0_n12_N6glitch7collada15CLightSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::CLightSceneNode::~CLightSceneNode()
; decoder-mode: arm
006444a0  00 30 90 e5                                      ldr r3, [r0]
006444a4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006444a8  03 00 80 e0                                      add r0, r0, r3
006444ac  e1 ff ff ea                                      b #0x644438

; FUNCTION 0x006444b0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CLightSceneNode
; alias: _ZN6glitch7collada15CLightSceneNodeD0Ev
; demangled: glitch::collada::CLightSceneNode::~CLightSceneNode()
; decoder-mode: arm
006444b0  10 40 2d e9                                      push {r4, lr}
006444b4  00 40 a0 e1                                      mov r4, r0
006444b8  de ff ff eb                                      bl #0x644438
006444bc  04 00 a0 e1                                      mov r0, r4
006444c0  7a 27 f3 eb                                      bl #0x30e2b0
006444c4  04 00 a0 e1                                      mov r0, r4
006444c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006444cc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CLightSceneNode
; alias: _ZTv0_n24_N6glitch7collada15CLightSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CLightSceneNode::~CLightSceneNode()
; decoder-mode: arm
006444cc  00 30 90 e5                                      ldr r3, [r0]
006444d0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006444d4  03 00 80 e0                                      add r0, r0, r3
006444d8  f4 ff ff ea                                      b #0x6444b0

; FUNCTION 0x006444dc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::CLightSceneNode
; alias: _ZTv0_n12_N6glitch7collada15CLightSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::CLightSceneNode::~CLightSceneNode()
; decoder-mode: arm
006444dc  00 30 90 e5                                      ldr r3, [r0]
006444e0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006444e4  03 00 80 e0                                      add r0, r0, r3
006444e8  f0 ff ff ea                                      b #0x6444b0

; FUNCTION 0x006444ec, declared_size=704, range_size=704, mode=arm
; class-group: glitch::collada::CLightSceneNode
; alias: _ZN6glitch7collada15CLightSceneNodeC1ERKNS0_16CColladaDatabaseERNS0_6SLightE
; demangled: glitch::collada::CLightSceneNode::CLightSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SLight&)
; decoder-mode: arm
006444ec  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006444f0  a0 62 9f e5                                      ldr r6, [pc, #0x2a0]
006444f4  a0 32 9f e5                                      ldr r3, [pc, #0x2a0]
006444f8  a0 c2 9f e5                                      ldr ip, [pc, #0x2a0]
006444fc  06 60 8f e0                                      add r6, pc, r6
00644500  03 30 96 e7                                      ldr r3, [r6, r3]
00644504  0c c0 96 e7                                      ldr ip, [r6, ip]
00644508  01 e0 a0 e3                                      mov lr, #1
0064450c  24 50 93 e5                                      ldr r5, [r3, #0x24]
00644510  08 c0 8c e2                                      add ip, ip, #8
00644514  64 c1 80 e5                                      str ip, [r0, #0x164]
00644518  00 50 80 e5                                      str r5, [r0]
0064451c  68 e1 80 e5                                      str lr, [r0, #0x168]
00644520  0c c0 15 e5                                      ldr ip, [r5, #-0xc]
00644524  28 80 93 e5                                      ldr r8, [r3, #0x28]
00644528  01 70 a0 e1                                      mov r7, r1
0064452c  02 50 a0 e1                                      mov r5, r2
00644530  04 10 83 e2                                      add r1, r3, #4
00644534  0e 20 a0 e1                                      mov r2, lr
00644538  0c 80 80 e7                                      str r8, [r0, ip]
0064453c  00 40 a0 e1                                      mov r4, r0
00644540  3c ff fc eb                                      bl #0x584238
00644544  00 30 97 e5                                      ldr r3, [r7]
00644548  58 31 84 e5                                      str r3, [r4, #0x158]
0064454c  04 20 97 e5                                      ldr r2, [r7, #4]
00644550  00 00 53 e3                                      cmp r3, #0
00644554  5c 21 84 e5                                      str r2, [r4, #0x15c]
00644558  03 00 00 0a                                      beq #0x64456c
0064455c  04 20 93 e5                                      ldr r2, [r3, #4]
00644560  00 00 52 e3                                      cmp r2, #0
00644564  01 20 82 12                                      addne r2, r2, #1
00644568  04 20 83 15                                      strne r2, [r3, #4]
0064456c  30 22 9f e5                                      ldr r2, [pc, #0x230]
00644570  30 32 9f e5                                      ldr r3, [pc, #0x230]
00644574  60 51 84 e5                                      str r5, [r4, #0x160]
00644578  02 20 96 e7                                      ldr r2, [r6, r2]
0064457c  03 30 96 e7                                      ldr r3, [r6, r3]
00644580  43 14 a0 e3                                      mov r1, #0x43000000
00644584  04 20 82 e2                                      add r2, r2, #4
00644588  12 0e 83 e2                                      add r0, r3, #0x120
0064458c  1c 30 83 e2                                      add r3, r3, #0x1c
00644590  00 30 84 e5                                      str r3, [r4]
00644594  54 21 84 e5                                      str r2, [r4, #0x154]
00644598  64 01 84 e5                                      str r0, [r4, #0x164]
0064459c  10 00 95 e5                                      ldr r0, [r5, #0x10]
006445a0  7f 18 81 e2                                      add r1, r1, #0x7f0000
006445a4  ba 29 f3 eb                                      bl #0x30ec94
006445a8  00 60 a0 e1                                      mov r6, r0
006445ac  0c 00 d5 e5                                      ldrb r0, [r5, #0xc]
006445b0  eb 28 f3 eb                                      bl #0x30e964
006445b4  06 10 a0 e1                                      mov r1, r6
006445b8  eb 29 f3 eb                                      bl #0x30ed6c
006445bc  00 a0 a0 e1                                      mov sl, r0
006445c0  0d 00 d5 e5                                      ldrb r0, [r5, #0xd]
006445c4  e6 28 f3 eb                                      bl #0x30e964
006445c8  06 10 a0 e1                                      mov r1, r6
006445cc  e6 29 f3 eb                                      bl #0x30ed6c
006445d0  00 70 a0 e1                                      mov r7, r0
006445d4  0e 00 d5 e5                                      ldrb r0, [r5, #0xe]
006445d8  e1 28 f3 eb                                      bl #0x30e964
006445dc  06 10 a0 e1                                      mov r1, r6
006445e0  e1 29 f3 eb                                      bl #0x30ed6c
006445e4  00 80 a0 e1                                      mov r8, r0
006445e8  0f 00 d5 e5                                      ldrb r0, [r5, #0xf]
006445ec  dc 28 f3 eb                                      bl #0x30e964
006445f0  06 10 a0 e1                                      mov r1, r6
006445f4  dc 29 f3 eb                                      bl #0x30ed6c
006445f8  34 31 94 e5                                      ldr r3, [r4, #0x134]
006445fc  24 a0 83 e5                                      str sl, [r3, #0x24]
00644600  30 00 83 e5                                      str r0, [r3, #0x30]
00644604  2c 80 83 e5                                      str r8, [r3, #0x2c]
00644608  28 70 83 e5                                      str r7, [r3, #0x28]
0064460c  08 30 95 e5                                      ldr r3, [r5, #8]
00644610  03 00 53 e3                                      cmp r3, #3
00644614  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00644618  16 00 00 ea                                      b #0x644678
0064461c  02 00 00 ea                                      b #0x64462c
00644620  44 00 00 ea                                      b #0x644738
00644624  23 00 00 ea                                      b #0x6446b8
00644628  16 00 00 ea                                      b #0x644688
0064462c  34 21 94 e5                                      ldr r2, [r4, #0x134]
00644630  03 10 a0 e3                                      mov r1, #3
00644634  00 30 a0 e3                                      mov r3, #0
00644638  b8 15 c2 e1                                      strh r1, [r2, #0x58]
0064463c  34 21 94 e5                                      ldr r2, [r4, #0x134]
00644640  04 a0 82 e5                                      str sl, [r2, #4]
00644644  10 00 82 e5                                      str r0, [r2, #0x10]
00644648  0c 80 82 e5                                      str r8, [r2, #0xc]
0064464c  08 70 82 e5                                      str r7, [r2, #8]
00644650  34 21 94 e5                                      ldr r2, [r4, #0x134]
00644654  14 30 82 e5                                      str r3, [r2, #0x14]
00644658  20 30 82 e5                                      str r3, [r2, #0x20]
0064465c  1c 30 82 e5                                      str r3, [r2, #0x1c]
00644660  18 30 82 e5                                      str r3, [r2, #0x18]
00644664  34 21 94 e5                                      ldr r2, [r4, #0x134]
00644668  24 30 82 e5                                      str r3, [r2, #0x24]
0064466c  30 30 82 e5                                      str r3, [r2, #0x30]
00644670  2c 30 82 e5                                      str r3, [r2, #0x2c]
00644674  28 30 82 e5                                      str r3, [r2, #0x28]
00644678  04 00 a0 e1                                      mov r0, r4
0064467c  65 fd fc eb                                      bl #0x583c18
00644680  04 00 a0 e1                                      mov r0, r4
00644684  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00644688  34 31 94 e5                                      ldr r3, [r4, #0x134]
0064468c  02 10 a0 e3                                      mov r1, #2
00644690  b8 15 c3 e1                                      strh r1, [r3, #0x58]
00644694  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644698  20 00 83 e5                                      str r0, [r3, #0x20]
0064469c  14 a0 83 e5                                      str sl, [r3, #0x14]
006446a0  04 00 a0 e1                                      mov r0, r4
006446a4  1c 80 83 e5                                      str r8, [r3, #0x1c]
006446a8  18 70 83 e5                                      str r7, [r3, #0x18]
006446ac  59 fd fc eb                                      bl #0x583c18
006446b0  04 00 a0 e1                                      mov r0, r4
006446b4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006446b8  34 31 94 e5                                      ldr r3, [r4, #0x134]
006446bc  01 20 a0 e3                                      mov r2, #1
006446c0  b8 25 c3 e1                                      strh r2, [r3, #0x58]
006446c4  34 31 94 e5                                      ldr r3, [r4, #0x134]
006446c8  14 a0 83 e5                                      str sl, [r3, #0x14]
006446cc  20 00 83 e5                                      str r0, [r3, #0x20]
006446d0  1c 80 83 e5                                      str r8, [r3, #0x1c]
006446d4  18 70 83 e5                                      str r7, [r3, #0x18]
006446d8  14 20 95 e5                                      ldr r2, [r5, #0x14]
006446dc  34 31 94 e5                                      ldr r3, [r4, #0x134]
006446e0  04 00 a0 e1                                      mov r0, r4
006446e4  00 20 92 e5                                      ldr r2, [r2]
006446e8  34 20 83 e5                                      str r2, [r3, #0x34]
006446ec  14 20 95 e5                                      ldr r2, [r5, #0x14]
006446f0  34 31 94 e5                                      ldr r3, [r4, #0x134]
006446f4  04 20 92 e5                                      ldr r2, [r2, #4]
006446f8  38 20 83 e5                                      str r2, [r3, #0x38]
006446fc  14 20 95 e5                                      ldr r2, [r5, #0x14]
00644700  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644704  08 20 92 e5                                      ldr r2, [r2, #8]
00644708  3c 20 83 e5                                      str r2, [r3, #0x3c]
0064470c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00644710  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644714  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00644718  48 20 83 e5                                      str r2, [r3, #0x48]
0064471c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00644720  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644724  10 20 92 e5                                      ldr r2, [r2, #0x10]
00644728  4c 20 83 e5                                      str r2, [r3, #0x4c]
0064472c  39 fd fc eb                                      bl #0x583c18
00644730  04 00 a0 e1                                      mov r0, r4
00644734  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00644738  34 31 94 e5                                      ldr r3, [r4, #0x134]
0064473c  00 10 a0 e3                                      mov r1, #0
00644740  b8 15 c3 e1                                      strh r1, [r3, #0x58]
00644744  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644748  14 a0 83 e5                                      str sl, [r3, #0x14]
0064474c  20 00 83 e5                                      str r0, [r3, #0x20]
00644750  1c 80 83 e5                                      str r8, [r3, #0x1c]
00644754  18 70 83 e5                                      str r7, [r3, #0x18]
00644758  14 20 95 e5                                      ldr r2, [r5, #0x14]
0064475c  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644760  04 00 a0 e1                                      mov r0, r4
00644764  00 20 92 e5                                      ldr r2, [r2]
00644768  34 20 83 e5                                      str r2, [r3, #0x34]
0064476c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00644770  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644774  04 20 92 e5                                      ldr r2, [r2, #4]
00644778  38 20 83 e5                                      str r2, [r3, #0x38]
0064477c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00644780  34 31 94 e5                                      ldr r3, [r4, #0x134]
00644784  08 20 92 e5                                      ldr r2, [r2, #8]
00644788  3c 20 83 e5                                      str r2, [r3, #0x3c]
0064478c  21 fd fc eb                                      bl #0x583c18
00644790  04 00 a0 e1                                      mov r0, r4
00644794  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00644798  94 05 35 00 dc 3a 00 00 44 2b 00 00 b4 17 00 00  .byte 0x94, 0x05, 0x35, 0x00, 0xdc, 0x3a, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00
006447a8  48 10 00 00                                      .byte 0x48, 0x10, 0x00, 0x00

; FUNCTION 0x006447ac, declared_size=656, range_size=656, mode=arm
; class-group: glitch::collada::CLightSceneNode
; alias: _ZN6glitch7collada15CLightSceneNodeC2ERKNS0_16CColladaDatabaseERNS0_6SLightE
; demangled: glitch::collada::CLightSceneNode::CLightSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SLight&)
; decoder-mode: arm
006447ac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006447b0  02 50 a0 e1                                      mov r5, r2
006447b4  01 40 a0 e1                                      mov r4, r1
006447b8  01 20 a0 e3                                      mov r2, #1
006447bc  04 10 81 e2                                      add r1, r1, #4
006447c0  00 60 a0 e1                                      mov r6, r0
006447c4  03 70 a0 e1                                      mov r7, r3
006447c8  9a fe fc eb                                      bl #0x584238
006447cc  00 20 95 e5                                      ldr r2, [r5]
006447d0  5c 32 9f e5                                      ldr r3, [pc, #0x25c]
006447d4  58 21 86 e5                                      str r2, [r6, #0x158]
006447d8  04 10 95 e5                                      ldr r1, [r5, #4]
006447dc  00 00 52 e3                                      cmp r2, #0
006447e0  03 30 8f e0                                      add r3, pc, r3
006447e4  5c 11 86 e5                                      str r1, [r6, #0x15c]
006447e8  03 00 00 0a                                      beq #0x6447fc
006447ec  04 10 92 e5                                      ldr r1, [r2, #4]
006447f0  00 00 51 e3                                      cmp r1, #0
006447f4  01 10 81 12                                      addne r1, r1, #1
006447f8  04 10 82 15                                      strne r1, [r2, #4]
006447fc  34 22 9f e5                                      ldr r2, [pc, #0x234]
00644800  43 14 a0 e3                                      mov r1, #0x43000000
00644804  7f 18 81 e2                                      add r1, r1, #0x7f0000
00644808  02 20 93 e7                                      ldr r2, [r3, r2]
0064480c  04 20 82 e2                                      add r2, r2, #4
00644810  54 21 86 e5                                      str r2, [r6, #0x154]
00644814  00 30 94 e5                                      ldr r3, [r4]
00644818  00 30 86 e5                                      str r3, [r6]
0064481c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00644820  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00644824  03 20 86 e7                                      str r2, [r6, r3]
00644828  00 30 96 e5                                      ldr r3, [r6]
0064482c  20 20 94 e5                                      ldr r2, [r4, #0x20]
00644830  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00644834  03 20 86 e7                                      str r2, [r6, r3]
00644838  60 71 86 e5                                      str r7, [r6, #0x160]
0064483c  10 00 97 e5                                      ldr r0, [r7, #0x10]
00644840  13 29 f3 eb                                      bl #0x30ec94
00644844  00 40 a0 e1                                      mov r4, r0
00644848  0c 00 d7 e5                                      ldrb r0, [r7, #0xc]
0064484c  44 28 f3 eb                                      bl #0x30e964
00644850  04 10 a0 e1                                      mov r1, r4
00644854  44 29 f3 eb                                      bl #0x30ed6c
00644858  00 a0 a0 e1                                      mov sl, r0
0064485c  0d 00 d7 e5                                      ldrb r0, [r7, #0xd]
00644860  3f 28 f3 eb                                      bl #0x30e964
00644864  04 10 a0 e1                                      mov r1, r4
00644868  3f 29 f3 eb                                      bl #0x30ed6c
0064486c  00 50 a0 e1                                      mov r5, r0
00644870  0e 00 d7 e5                                      ldrb r0, [r7, #0xe]
00644874  3a 28 f3 eb                                      bl #0x30e964
00644878  04 10 a0 e1                                      mov r1, r4
0064487c  3a 29 f3 eb                                      bl #0x30ed6c
00644880  00 80 a0 e1                                      mov r8, r0
00644884  0f 00 d7 e5                                      ldrb r0, [r7, #0xf]
00644888  35 28 f3 eb                                      bl #0x30e964
0064488c  04 10 a0 e1                                      mov r1, r4
00644890  35 29 f3 eb                                      bl #0x30ed6c
00644894  34 31 96 e5                                      ldr r3, [r6, #0x134]
00644898  24 a0 83 e5                                      str sl, [r3, #0x24]
0064489c  30 00 83 e5                                      str r0, [r3, #0x30]
006448a0  2c 80 83 e5                                      str r8, [r3, #0x2c]
006448a4  28 50 83 e5                                      str r5, [r3, #0x28]
006448a8  08 30 97 e5                                      ldr r3, [r7, #8]
006448ac  03 00 53 e3                                      cmp r3, #3
006448b0  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
006448b4  16 00 00 ea                                      b #0x644914
006448b8  02 00 00 ea                                      b #0x6448c8
006448bc  44 00 00 ea                                      b #0x6449d4
006448c0  23 00 00 ea                                      b #0x644954
006448c4  16 00 00 ea                                      b #0x644924
006448c8  34 21 96 e5                                      ldr r2, [r6, #0x134]
006448cc  03 10 a0 e3                                      mov r1, #3
006448d0  00 30 a0 e3                                      mov r3, #0
006448d4  b8 15 c2 e1                                      strh r1, [r2, #0x58]
006448d8  34 21 96 e5                                      ldr r2, [r6, #0x134]
006448dc  04 a0 82 e5                                      str sl, [r2, #4]
006448e0  10 00 82 e5                                      str r0, [r2, #0x10]
006448e4  0c 80 82 e5                                      str r8, [r2, #0xc]
006448e8  08 50 82 e5                                      str r5, [r2, #8]
006448ec  34 21 96 e5                                      ldr r2, [r6, #0x134]
006448f0  14 30 82 e5                                      str r3, [r2, #0x14]
006448f4  20 30 82 e5                                      str r3, [r2, #0x20]
006448f8  1c 30 82 e5                                      str r3, [r2, #0x1c]
006448fc  18 30 82 e5                                      str r3, [r2, #0x18]
00644900  34 21 96 e5                                      ldr r2, [r6, #0x134]
00644904  24 30 82 e5                                      str r3, [r2, #0x24]
00644908  30 30 82 e5                                      str r3, [r2, #0x30]
0064490c  2c 30 82 e5                                      str r3, [r2, #0x2c]
00644910  28 30 82 e5                                      str r3, [r2, #0x28]
00644914  06 00 a0 e1                                      mov r0, r6
00644918  be fc fc eb                                      bl #0x583c18
0064491c  06 00 a0 e1                                      mov r0, r6
00644920  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00644924  34 31 96 e5                                      ldr r3, [r6, #0x134]
00644928  02 10 a0 e3                                      mov r1, #2
0064492c  b8 15 c3 e1                                      strh r1, [r3, #0x58]
00644930  34 31 96 e5                                      ldr r3, [r6, #0x134]
00644934  20 00 83 e5                                      str r0, [r3, #0x20]
00644938  14 a0 83 e5                                      str sl, [r3, #0x14]
0064493c  06 00 a0 e1                                      mov r0, r6
00644940  1c 80 83 e5                                      str r8, [r3, #0x1c]
00644944  18 50 83 e5                                      str r5, [r3, #0x18]
00644948  b2 fc fc eb                                      bl #0x583c18
0064494c  06 00 a0 e1                                      mov r0, r6
00644950  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00644954  34 31 96 e5                                      ldr r3, [r6, #0x134]
00644958  01 20 a0 e3                                      mov r2, #1
0064495c  b8 25 c3 e1                                      strh r2, [r3, #0x58]
00644960  34 31 96 e5                                      ldr r3, [r6, #0x134]
00644964  14 a0 83 e5                                      str sl, [r3, #0x14]
00644968  20 00 83 e5                                      str r0, [r3, #0x20]
0064496c  1c 80 83 e5                                      str r8, [r3, #0x1c]
00644970  18 50 83 e5                                      str r5, [r3, #0x18]
00644974  14 20 97 e5                                      ldr r2, [r7, #0x14]
00644978  34 31 96 e5                                      ldr r3, [r6, #0x134]
0064497c  06 00 a0 e1                                      mov r0, r6
00644980  00 20 92 e5                                      ldr r2, [r2]
00644984  34 20 83 e5                                      str r2, [r3, #0x34]
00644988  14 20 97 e5                                      ldr r2, [r7, #0x14]
0064498c  34 31 96 e5                                      ldr r3, [r6, #0x134]
00644990  04 20 92 e5                                      ldr r2, [r2, #4]
00644994  38 20 83 e5                                      str r2, [r3, #0x38]
00644998  14 20 97 e5                                      ldr r2, [r7, #0x14]
0064499c  34 31 96 e5                                      ldr r3, [r6, #0x134]
006449a0  08 20 92 e5                                      ldr r2, [r2, #8]
006449a4  3c 20 83 e5                                      str r2, [r3, #0x3c]
006449a8  14 20 97 e5                                      ldr r2, [r7, #0x14]
006449ac  34 31 96 e5                                      ldr r3, [r6, #0x134]
006449b0  0c 20 92 e5                                      ldr r2, [r2, #0xc]
006449b4  48 20 83 e5                                      str r2, [r3, #0x48]
006449b8  14 20 97 e5                                      ldr r2, [r7, #0x14]
006449bc  34 31 96 e5                                      ldr r3, [r6, #0x134]
006449c0  10 20 92 e5                                      ldr r2, [r2, #0x10]
006449c4  4c 20 83 e5                                      str r2, [r3, #0x4c]
006449c8  92 fc fc eb                                      bl #0x583c18
006449cc  06 00 a0 e1                                      mov r0, r6
006449d0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006449d4  34 31 96 e5                                      ldr r3, [r6, #0x134]
006449d8  00 10 a0 e3                                      mov r1, #0
006449dc  b8 15 c3 e1                                      strh r1, [r3, #0x58]
006449e0  34 31 96 e5                                      ldr r3, [r6, #0x134]
006449e4  14 a0 83 e5                                      str sl, [r3, #0x14]
006449e8  20 00 83 e5                                      str r0, [r3, #0x20]
006449ec  1c 80 83 e5                                      str r8, [r3, #0x1c]
006449f0  18 50 83 e5                                      str r5, [r3, #0x18]
006449f4  14 20 97 e5                                      ldr r2, [r7, #0x14]
006449f8  34 31 96 e5                                      ldr r3, [r6, #0x134]
006449fc  06 00 a0 e1                                      mov r0, r6
00644a00  00 20 92 e5                                      ldr r2, [r2]
00644a04  34 20 83 e5                                      str r2, [r3, #0x34]
00644a08  14 20 97 e5                                      ldr r2, [r7, #0x14]
00644a0c  34 31 96 e5                                      ldr r3, [r6, #0x134]
00644a10  04 20 92 e5                                      ldr r2, [r2, #4]
00644a14  38 20 83 e5                                      str r2, [r3, #0x38]
00644a18  14 20 97 e5                                      ldr r2, [r7, #0x14]
00644a1c  34 31 96 e5                                      ldr r3, [r6, #0x134]
00644a20  08 20 92 e5                                      ldr r2, [r2, #8]
00644a24  3c 20 83 e5                                      str r2, [r3, #0x3c]
00644a28  7a fc fc eb                                      bl #0x583c18
00644a2c  06 00 a0 e1                                      mov r0, r6
00644a30  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00644a34  b0 02 35 00 b4 17 00 00                          .byte 0xb0, 0x02, 0x35, 0x00, 0xb4, 0x17, 0x00, 0x00
