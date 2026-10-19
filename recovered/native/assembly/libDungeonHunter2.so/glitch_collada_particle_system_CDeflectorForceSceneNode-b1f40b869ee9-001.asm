; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006301f8, declared_size=272, range_size=272, mode=arm
; class-group: glitch::collada::particle_system::CDeflectorForceSceneNode
; alias: _ZNK6glitch7collada15particle_system24CDeflectorForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::particle_system::CDeflectorForceSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006301f8  70 40 2d e9                                      push {r4, r5, r6, lr}
006301fc  01 40 a0 e1                                      mov r4, r1
00630200  00 50 a0 e1                                      mov r5, r0
00630204  26 9c fd eb                                      bl #0x5972a4
00630208  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
0063020c  04 00 a0 e1                                      mov r0, r4
00630210  44 21 95 e5                                      ldr r2, [r5, #0x144]
00630214  00 c0 94 e5                                      ldr ip, [r4]
00630218  01 10 8f e0                                      add r1, pc, r1
0063021c  00 30 a0 e3                                      mov r3, #0
00630220  0f e0 a0 e1                                      mov lr, pc
00630224  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00630228  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
0063022c  04 00 a0 e1                                      mov r0, r4
00630230  48 21 95 e5                                      ldr r2, [r5, #0x148]
00630234  00 c0 94 e5                                      ldr ip, [r4]
00630238  01 10 8f e0                                      add r1, pc, r1
0063023c  00 30 a0 e3                                      mov r3, #0
00630240  0f e0 a0 e1                                      mov lr, pc
00630244  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00630248  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
0063024c  04 00 a0 e1                                      mov r0, r4
00630250  4c 21 95 e5                                      ldr r2, [r5, #0x14c]
00630254  00 c0 94 e5                                      ldr ip, [r4]
00630258  01 10 8f e0                                      add r1, pc, r1
0063025c  00 30 a0 e3                                      mov r3, #0
00630260  0f e0 a0 e1                                      mov lr, pc
00630264  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00630268  88 10 9f e5                                      ldr r1, [pc, #0x88]
0063026c  04 00 a0 e1                                      mov r0, r4
00630270  50 21 95 e5                                      ldr r2, [r5, #0x150]
00630274  00 c0 94 e5                                      ldr ip, [r4]
00630278  01 10 8f e0                                      add r1, pc, r1
0063027c  00 30 a0 e3                                      mov r3, #0
00630280  0f e0 a0 e1                                      mov lr, pc
00630284  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00630288  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0063028c  04 00 a0 e1                                      mov r0, r4
00630290  54 21 95 e5                                      ldr r2, [r5, #0x154]
00630294  00 c0 94 e5                                      ldr ip, [r4]
00630298  01 10 8f e0                                      add r1, pc, r1
0063029c  00 30 a0 e3                                      mov r3, #0
006302a0  0f e0 a0 e1                                      mov lr, pc
006302a4  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006302a8  50 10 9f e5                                      ldr r1, [pc, #0x50]
006302ac  04 00 a0 e1                                      mov r0, r4
006302b0  58 21 95 e5                                      ldr r2, [r5, #0x158]
006302b4  00 c0 94 e5                                      ldr ip, [r4]
006302b8  01 10 8f e0                                      add r1, pc, r1
006302bc  00 30 a0 e3                                      mov r3, #0
006302c0  0f e0 a0 e1                                      mov lr, pc
006302c4  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006302c8  34 10 9f e5                                      ldr r1, [pc, #0x34]
006302cc  04 00 a0 e1                                      mov r0, r4
006302d0  5c 21 95 e5                                      ldr r2, [r5, #0x15c]
006302d4  01 10 8f e0                                      add r1, pc, r1
006302d8  00 c0 94 e5                                      ldr ip, [r4]
006302dc  00 30 a0 e3                                      mov r3, #0
006302e0  0f e0 a0 e1                                      mov lr, pc
006302e4  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006302e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006302ec  d8 4c 2b 00 c0 4c 2b 00 b0 4c 2b 00 98 4c 2b 00  .byte 0xd8, 0x4c, 0x2b, 0x00, 0xc0, 0x4c, 0x2b, 0x00, 0xb0, 0x4c, 0x2b, 0x00, 0x98, 0x4c, 0x2b, 0x00
006302fc  88 4c 2b 00 f0 e8 2a 00 04 9c 2b 00              .byte 0x88, 0x4c, 0x2b, 0x00, 0xf0, 0xe8, 0x2a, 0x00, 0x04, 0x9c, 0x2b, 0x00

; FUNCTION 0x00630308, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CDeflectorForceSceneNode
; alias: _ZTv0_n16_NK6glitch7collada15particle_system24CDeflectorForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::particle_system::CDeflectorForceSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00630308  00 30 90 e5                                      ldr r3, [r0]
0063030c  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00630310  03 00 80 e0                                      add r0, r0, r3
00630314  b7 ff ff ea                                      b #0x6301f8

; FUNCTION 0x00630480, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::particle_system::CDeflectorForceSceneNode
; alias: _ZN6glitch7collada15particle_system24CDeflectorForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::particle_system::CDeflectorForceSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00630480  70 40 2d e9                                      push {r4, r5, r6, lr}
00630484  01 40 a0 e1                                      mov r4, r1
00630488  00 50 a0 e1                                      mov r5, r0
0063048c  f1 9e fd eb                                      bl #0x598058
00630490  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
00630494  00 30 94 e5                                      ldr r3, [r4]
00630498  04 00 a0 e1                                      mov r0, r4
0063049c  01 10 8f e0                                      add r1, pc, r1
006304a0  0f e0 a0 e1                                      mov lr, pc
006304a4  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006304a8  ac 10 9f e5                                      ldr r1, [pc, #0xac]
006304ac  44 01 85 e5                                      str r0, [r5, #0x144]
006304b0  00 30 94 e5                                      ldr r3, [r4]
006304b4  01 10 8f e0                                      add r1, pc, r1
006304b8  04 00 a0 e1                                      mov r0, r4
006304bc  0f e0 a0 e1                                      mov lr, pc
006304c0  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006304c4  94 10 9f e5                                      ldr r1, [pc, #0x94]
006304c8  48 01 85 e5                                      str r0, [r5, #0x148]
006304cc  00 30 94 e5                                      ldr r3, [r4]
006304d0  01 10 8f e0                                      add r1, pc, r1
006304d4  04 00 a0 e1                                      mov r0, r4
006304d8  0f e0 a0 e1                                      mov lr, pc
006304dc  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006304e0  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
006304e4  4c 01 85 e5                                      str r0, [r5, #0x14c]
006304e8  00 30 94 e5                                      ldr r3, [r4]
006304ec  01 10 8f e0                                      add r1, pc, r1
006304f0  04 00 a0 e1                                      mov r0, r4
006304f4  0f e0 a0 e1                                      mov lr, pc
006304f8  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006304fc  64 10 9f e5                                      ldr r1, [pc, #0x64]
00630500  50 01 85 e5                                      str r0, [r5, #0x150]
00630504  00 30 94 e5                                      ldr r3, [r4]
00630508  01 10 8f e0                                      add r1, pc, r1
0063050c  04 00 a0 e1                                      mov r0, r4
00630510  0f e0 a0 e1                                      mov lr, pc
00630514  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00630518  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
0063051c  54 01 85 e5                                      str r0, [r5, #0x154]
00630520  00 30 94 e5                                      ldr r3, [r4]
00630524  01 10 8f e0                                      add r1, pc, r1
00630528  04 00 a0 e1                                      mov r0, r4
0063052c  0f e0 a0 e1                                      mov lr, pc
00630530  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00630534  34 10 9f e5                                      ldr r1, [pc, #0x34]
00630538  58 01 85 e5                                      str r0, [r5, #0x158]
0063053c  00 30 94 e5                                      ldr r3, [r4]
00630540  04 00 a0 e1                                      mov r0, r4
00630544  01 10 8f e0                                      add r1, pc, r1
00630548  0f e0 a0 e1                                      mov lr, pc
0063054c  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00630550  5c 01 85 e5                                      str r0, [r5, #0x15c]
00630554  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00630558  54 4a 2b 00 44 4a 2b 00 38 4a 2b 00 24 4a 2b 00  .byte 0x54, 0x4a, 0x2b, 0x00, 0x44, 0x4a, 0x2b, 0x00, 0x38, 0x4a, 0x2b, 0x00, 0x24, 0x4a, 0x2b, 0x00
00630568  18 4a 2b 00 84 e6 2a 00 94 99 2b 00              .byte 0x18, 0x4a, 0x2b, 0x00, 0x84, 0xe6, 0x2a, 0x00, 0x94, 0x99, 0x2b, 0x00

; FUNCTION 0x00630574, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CDeflectorForceSceneNode
; alias: _ZTv0_n20_N6glitch7collada15particle_system24CDeflectorForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::particle_system::CDeflectorForceSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00630574  00 30 90 e5                                      ldr r3, [r0]
00630578  14 30 13 e5                                      ldr r3, [r3, #-0x14]
0063057c  03 00 80 e0                                      add r0, r0, r3
00630580  be ff ff ea                                      b #0x630480

; FUNCTION 0x00630868, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::particle_system::CDeflectorForceSceneNode
; alias: _ZN6glitch7collada15particle_system24CDeflectorForceSceneNodeD1Ev
; demangled: glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode()
; decoder-mode: arm
00630868  38 30 9f e5                                      ldr r3, [pc, #0x38]
0063086c  38 20 9f e5                                      ldr r2, [pc, #0x38]
00630870  38 10 9f e5                                      ldr r1, [pc, #0x38]
00630874  03 30 8f e0                                      add r3, pc, r3
00630878  02 20 93 e7                                      ldr r2, [r3, r2]
0063087c  01 10 93 e7                                      ldr r1, [r3, r1]
00630880  10 40 2d e9                                      push {r4, lr}
00630884  4a cf 82 e2                                      add ip, r2, #0x128
00630888  1c 20 82 e2                                      add r2, r2, #0x1c
0063088c  00 40 a0 e1                                      mov r4, r0
00630890  00 20 80 e5                                      str r2, [r0]
00630894  60 c1 80 e5                                      str ip, [r0, #0x160]
00630898  04 10 81 e2                                      add r1, r1, #4
0063089c  de ff ff eb                                      bl #0x63081c
006308a0  04 00 a0 e1                                      mov r0, r4
006308a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006308a8  1c 42 36 00 70 12 00 00 30 0b 00 00              .byte 0x1c, 0x42, 0x36, 0x00, 0x70, 0x12, 0x00, 0x00, 0x30, 0x0b, 0x00, 0x00

; FUNCTION 0x006308b4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CDeflectorForceSceneNode
; alias: _ZTv0_n24_N6glitch7collada15particle_system24CDeflectorForceSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode()
; decoder-mode: arm
006308b4  00 30 90 e5                                      ldr r3, [r0]
006308b8  18 30 13 e5                                      ldr r3, [r3, #-0x18]
006308bc  03 00 80 e0                                      add r0, r0, r3
006308c0  e8 ff ff ea                                      b #0x630868

; FUNCTION 0x006308c4, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CDeflectorForceSceneNode
; alias: _ZTv0_n12_N6glitch7collada15particle_system24CDeflectorForceSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode()
; decoder-mode: arm
006308c4  00 30 90 e5                                      ldr r3, [r0]
006308c8  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006308cc  03 00 80 e0                                      add r0, r0, r3
006308d0  e4 ff ff ea                                      b #0x630868

; FUNCTION 0x00631050, declared_size=232, range_size=232, mode=arm
; class-group: glitch::collada::particle_system::CDeflectorForceSceneNode
; alias: _ZN6glitch7collada15particle_system24CDeflectorForceSceneNodeC1ERKNS0_16CColladaDatabaseERKNS0_6SForceE
; demangled: glitch::collada::particle_system::CDeflectorForceSceneNode::CDeflectorForceSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SForce const&)
; decoder-mode: arm
00631050  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00631054  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
00631058  cc c0 9f e5                                      ldr ip, [pc, #0xcc]
0063105c  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
00631060  05 50 8f e0                                      add r5, pc, r5
00631064  0c c0 95 e7                                      ldr ip, [r5, ip]
00631068  03 30 95 e7                                      ldr r3, [r5, r3]
0063106c  01 60 a0 e3                                      mov r6, #1
00631070  24 e0 9c e5                                      ldr lr, [ip, #0x24]
00631074  08 30 83 e2                                      add r3, r3, #8
00631078  60 31 80 e5                                      str r3, [r0, #0x160]
0063107c  00 e0 80 e5                                      str lr, [r0]
00631080  64 61 80 e5                                      str r6, [r0, #0x164]
00631084  0c 60 1e e5                                      ldr r6, [lr, #-0xc]
00631088  28 70 9c e5                                      ldr r7, [ip, #0x28]
0063108c  01 e0 a0 e1                                      mov lr, r1
00631090  02 30 a0 e1                                      mov r3, r2
00631094  04 10 8c e2                                      add r1, ip, #4
00631098  0e 20 a0 e1                                      mov r2, lr
0063109c  06 70 80 e7                                      str r7, [r0, r6]
006310a0  00 40 a0 e1                                      mov r4, r0
006310a4  b0 ff ff eb                                      bl #0x630f6c
006310a8  84 20 9f e5                                      ldr r2, [pc, #0x84]
006310ac  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
006310b0  24 10 84 e2                                      add r1, r4, #0x24
006310b4  02 20 95 e7                                      ldr r2, [r5, r2]
006310b8  40 11 84 e5                                      str r1, [r4, #0x140]
006310bc  04 00 a0 e1                                      mov r0, r4
006310c0  4a 1f 82 e2                                      add r1, r2, #0x128
006310c4  1c 20 82 e2                                      add r2, r2, #0x1c
006310c8  00 20 84 e5                                      str r2, [r4]
006310cc  60 11 84 e5                                      str r1, [r4, #0x160]
006310d0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
006310d4  00 20 92 e5                                      ldr r2, [r2]
006310d8  44 21 84 e5                                      str r2, [r4, #0x144]
006310dc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
006310e0  04 20 92 e5                                      ldr r2, [r2, #4]
006310e4  48 21 84 e5                                      str r2, [r4, #0x148]
006310e8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
006310ec  08 20 92 e5                                      ldr r2, [r2, #8]
006310f0  4c 21 84 e5                                      str r2, [r4, #0x14c]
006310f4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
006310f8  0c 20 92 e5                                      ldr r2, [r2, #0xc]
006310fc  50 21 84 e5                                      str r2, [r4, #0x150]
00631100  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00631104  10 20 92 e5                                      ldr r2, [r2, #0x10]
00631108  54 21 84 e5                                      str r2, [r4, #0x154]
0063110c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00631110  14 20 92 e5                                      ldr r2, [r2, #0x14]
00631114  58 21 84 e5                                      str r2, [r4, #0x158]
00631118  0c 30 93 e5                                      ldr r3, [r3, #0xc]
0063111c  18 30 93 e5                                      ldr r3, [r3, #0x18]
00631120  5c 31 84 e5                                      str r3, [r4, #0x15c]
00631124  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00631128  30 3a 36 00 30 0b 00 00 44 2b 00 00 70 12 00 00  .byte 0x30, 0x3a, 0x36, 0x00, 0x30, 0x0b, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x70, 0x12, 0x00, 0x00

; FUNCTION 0x00632afc, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::particle_system::CDeflectorForceSceneNode
; alias: _ZN6glitch7collada15particle_system24CDeflectorForceSceneNodeD0Ev
; demangled: glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode()
; decoder-mode: arm
00632afc  40 30 9f e5                                      ldr r3, [pc, #0x40]
00632b00  40 20 9f e5                                      ldr r2, [pc, #0x40]
00632b04  40 10 9f e5                                      ldr r1, [pc, #0x40]
00632b08  03 30 8f e0                                      add r3, pc, r3
00632b0c  02 20 93 e7                                      ldr r2, [r3, r2]
00632b10  01 10 93 e7                                      ldr r1, [r3, r1]
00632b14  10 40 2d e9                                      push {r4, lr}
00632b18  4a cf 82 e2                                      add ip, r2, #0x128
00632b1c  1c 20 82 e2                                      add r2, r2, #0x1c
00632b20  00 40 a0 e1                                      mov r4, r0
00632b24  00 20 80 e5                                      str r2, [r0]
00632b28  60 c1 80 e5                                      str ip, [r0, #0x160]
00632b2c  04 10 81 e2                                      add r1, r1, #4
00632b30  39 f7 ff eb                                      bl #0x63081c
00632b34  04 00 a0 e1                                      mov r0, r4
00632b38  dc 6d f3 eb                                      bl #0x30e2b0
00632b3c  04 00 a0 e1                                      mov r0, r4
00632b40  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00632b44  88 1f 36 00 70 12 00 00 30 0b 00 00              .byte 0x88, 0x1f, 0x36, 0x00, 0x70, 0x12, 0x00, 0x00, 0x30, 0x0b, 0x00, 0x00

; FUNCTION 0x00632b50, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CDeflectorForceSceneNode
; alias: _ZTv0_n24_N6glitch7collada15particle_system24CDeflectorForceSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode()
; decoder-mode: arm
00632b50  00 30 90 e5                                      ldr r3, [r0]
00632b54  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00632b58  03 00 80 e0                                      add r0, r0, r3
00632b5c  e6 ff ff ea                                      b #0x632afc

; FUNCTION 0x00632b60, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CDeflectorForceSceneNode
; alias: _ZTv0_n12_N6glitch7collada15particle_system24CDeflectorForceSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::particle_system::CDeflectorForceSceneNode::~CDeflectorForceSceneNode()
; decoder-mode: arm
00632b60  00 30 90 e5                                      ldr r3, [r0]
00632b64  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00632b68  03 00 80 e0                                      add r0, r0, r3
00632b6c  e2 ff ff ea                                      b #0x632afc

; FUNCTION 0x00634a88, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CDeflectorForceSceneNode
; alias: _ZN6glitch7collada15particle_system24CDeflectorForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
; demangled: glitch::collada::particle_system::CDeflectorForceSceneNode::bind(glitch::collada::CGlitchNewParticleSystemSceneNode*)
; decoder-mode: arm
00634a88  05 3d 80 e2                                      add r3, r0, #0x140
00634a8c  78 01 91 e5                                      ldr r0, [r1, #0x178]
00634a90  03 10 a0 e1                                      mov r1, r3
00634a94  d9 ff ff ea                                      b #0x634a00

; FUNCTION 0x00634b20, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CDeflectorForceSceneNode
; alias: _ZN6glitch7collada15particle_system24CDeflectorForceSceneNode4bindEPNS0_24CParticleSystemSceneNodeE
; demangled: glitch::collada::particle_system::CDeflectorForceSceneNode::bind(glitch::collada::CParticleSystemSceneNode*)
; decoder-mode: arm
00634b20  05 3d 80 e2                                      add r3, r0, #0x140
00634b24  78 01 91 e5                                      ldr r0, [r1, #0x178]
00634b28  03 10 a0 e1                                      mov r1, r3
00634b2c  d9 ff ff ea                                      b #0x634a98
