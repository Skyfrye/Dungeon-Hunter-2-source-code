; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00630080, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CWindForceSceneNode
; alias: _ZN6glitch7collada15particle_system19CWindForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
; demangled: glitch::collada::particle_system::CWindForceSceneNode::bind(glitch::collada::CGlitchNewParticleSystemSceneNode*)
; decoder-mode: arm
00630080  05 3d 80 e2                                      add r3, r0, #0x140
00630084  78 01 91 e5                                      ldr r0, [r1, #0x178]
00630088  03 10 a0 e1                                      mov r1, r3
0063008c  e1 ff ff ea                                      b #0x630018

; FUNCTION 0x006300f8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CWindForceSceneNode
; alias: _ZN6glitch7collada15particle_system19CWindForceSceneNode4bindEPNS0_24CParticleSystemSceneNodeE
; demangled: glitch::collada::particle_system::CWindForceSceneNode::bind(glitch::collada::CParticleSystemSceneNode*)
; decoder-mode: arm
006300f8  05 3d 80 e2                                      add r3, r0, #0x140
006300fc  78 01 91 e5                                      ldr r0, [r1, #0x178]
00630100  03 10 a0 e1                                      mov r1, r3
00630104  e1 ff ff ea                                      b #0x630090

; FUNCTION 0x00630318, declared_size=200, range_size=200, mode=arm
; class-group: glitch::collada::particle_system::CWindForceSceneNode
; alias: _ZNK6glitch7collada15particle_system19CWindForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::particle_system::CWindForceSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00630318  70 40 2d e9                                      push {r4, r5, r6, lr}
0063031c  01 40 a0 e1                                      mov r4, r1
00630320  00 50 a0 e1                                      mov r5, r0
00630324  de 9b fd eb                                      bl #0x5972a4
00630328  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0063032c  04 00 a0 e1                                      mov r0, r4
00630330  44 21 95 e5                                      ldr r2, [r5, #0x144]
00630334  00 c0 94 e5                                      ldr ip, [r4]
00630338  01 10 8f e0                                      add r1, pc, r1
0063033c  00 30 a0 e3                                      mov r3, #0
00630340  0f e0 a0 e1                                      mov lr, pc
00630344  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00630348  80 10 9f e5                                      ldr r1, [pc, #0x80]
0063034c  04 00 a0 e1                                      mov r0, r4
00630350  48 21 95 e5                                      ldr r2, [r5, #0x148]
00630354  00 c0 94 e5                                      ldr ip, [r4]
00630358  01 10 8f e0                                      add r1, pc, r1
0063035c  00 30 a0 e3                                      mov r3, #0
00630360  0f e0 a0 e1                                      mov lr, pc
00630364  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00630368  64 10 9f e5                                      ldr r1, [pc, #0x64]
0063036c  04 00 a0 e1                                      mov r0, r4
00630370  4c 21 95 e5                                      ldr r2, [r5, #0x14c]
00630374  00 c0 94 e5                                      ldr ip, [r4]
00630378  01 10 8f e0                                      add r1, pc, r1
0063037c  00 30 a0 e3                                      mov r3, #0
00630380  0f e0 a0 e1                                      mov lr, pc
00630384  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00630388  48 10 9f e5                                      ldr r1, [pc, #0x48]
0063038c  04 00 a0 e1                                      mov r0, r4
00630390  50 21 95 e5                                      ldr r2, [r5, #0x150]
00630394  00 c0 94 e5                                      ldr ip, [r4]
00630398  01 10 8f e0                                      add r1, pc, r1
0063039c  00 30 a0 e3                                      mov r3, #0
006303a0  0f e0 a0 e1                                      mov lr, pc
006303a4  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006303a8  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
006303ac  04 00 a0 e1                                      mov r0, r4
006303b0  54 21 95 e5                                      ldr r2, [r5, #0x154]
006303b4  01 10 8f e0                                      add r1, pc, r1
006303b8  00 c0 94 e5                                      ldr ip, [r4]
006303bc  00 30 a0 e3                                      mov r3, #0
006303c0  0f e0 a0 e1                                      mov lr, pc
006303c4  64 f0 9c e5                                      ldr pc, [ip, #0x64]
006303c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006303cc  f8 4b 2b 00 e8 4b 2b 00 d0 4b 2b 00 c0 4b 2b 00  .byte 0xf8, 0x4b, 0x2b, 0x00, 0xe8, 0x4b, 0x2b, 0x00, 0xd0, 0x4b, 0x2b, 0x00, 0xc0, 0x4b, 0x2b, 0x00
006303dc  cc 4d 2b 00                                      .byte 0xcc, 0x4d, 0x2b, 0x00

; FUNCTION 0x006303e0, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CWindForceSceneNode
; alias: _ZTv0_n16_NK6glitch7collada15particle_system19CWindForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::particle_system::CWindForceSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006303e0  00 30 90 e5                                      ldr r3, [r0]
006303e4  10 30 13 e5                                      ldr r3, [r3, #-0x10]
006303e8  03 00 80 e0                                      add r0, r0, r3
006303ec  c9 ff ff ea                                      b #0x630318

; FUNCTION 0x00630584, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::particle_system::CWindForceSceneNode
; alias: _ZN6glitch7collada15particle_system19CWindForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::particle_system::CWindForceSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00630584  70 40 2d e9                                      push {r4, r5, r6, lr}
00630588  01 40 a0 e1                                      mov r4, r1
0063058c  00 50 a0 e1                                      mov r5, r0
00630590  b0 9e fd eb                                      bl #0x598058
00630594  88 10 9f e5                                      ldr r1, [pc, #0x88]
00630598  00 30 94 e5                                      ldr r3, [r4]
0063059c  04 00 a0 e1                                      mov r0, r4
006305a0  01 10 8f e0                                      add r1, pc, r1
006305a4  0f e0 a0 e1                                      mov lr, pc
006305a8  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006305ac  74 10 9f e5                                      ldr r1, [pc, #0x74]
006305b0  44 01 85 e5                                      str r0, [r5, #0x144]
006305b4  00 30 94 e5                                      ldr r3, [r4]
006305b8  01 10 8f e0                                      add r1, pc, r1
006305bc  04 00 a0 e1                                      mov r0, r4
006305c0  0f e0 a0 e1                                      mov lr, pc
006305c4  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006305c8  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
006305cc  48 01 85 e5                                      str r0, [r5, #0x148]
006305d0  00 30 94 e5                                      ldr r3, [r4]
006305d4  01 10 8f e0                                      add r1, pc, r1
006305d8  04 00 a0 e1                                      mov r0, r4
006305dc  0f e0 a0 e1                                      mov lr, pc
006305e0  70 f0 93 e5                                      ldr pc, [r3, #0x70]
006305e4  44 10 9f e5                                      ldr r1, [pc, #0x44]
006305e8  4c 01 85 e5                                      str r0, [r5, #0x14c]
006305ec  00 30 94 e5                                      ldr r3, [r4]
006305f0  01 10 8f e0                                      add r1, pc, r1
006305f4  04 00 a0 e1                                      mov r0, r4
006305f8  0f e0 a0 e1                                      mov lr, pc
006305fc  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00630600  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00630604  50 01 85 e5                                      str r0, [r5, #0x150]
00630608  00 30 94 e5                                      ldr r3, [r4]
0063060c  04 00 a0 e1                                      mov r0, r4
00630610  01 10 8f e0                                      add r1, pc, r1
00630614  0f e0 a0 e1                                      mov lr, pc
00630618  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0063061c  54 01 85 e5                                      str r0, [r5, #0x154]
00630620  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00630624  90 49 2b 00 88 49 2b 00 74 49 2b 00 68 49 2b 00  .byte 0x90, 0x49, 0x2b, 0x00, 0x88, 0x49, 0x2b, 0x00, 0x74, 0x49, 0x2b, 0x00, 0x68, 0x49, 0x2b, 0x00
00630634  70 4b 2b 00                                      .byte 0x70, 0x4b, 0x2b, 0x00

; FUNCTION 0x00630638, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CWindForceSceneNode
; alias: _ZTv0_n20_N6glitch7collada15particle_system19CWindForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::particle_system::CWindForceSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00630638  00 30 90 e5                                      ldr r3, [r0]
0063063c  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00630640  03 00 80 e0                                      add r0, r0, r3
00630644  ce ff ff ea                                      b #0x630584

; FUNCTION 0x006308d4, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::particle_system::CWindForceSceneNode
; alias: _ZN6glitch7collada15particle_system19CWindForceSceneNodeD1Ev
; demangled: glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode()
; decoder-mode: arm
006308d4  38 30 9f e5                                      ldr r3, [pc, #0x38]
006308d8  38 20 9f e5                                      ldr r2, [pc, #0x38]
006308dc  38 10 9f e5                                      ldr r1, [pc, #0x38]
006308e0  03 30 8f e0                                      add r3, pc, r3
006308e4  02 20 93 e7                                      ldr r2, [r3, r2]
006308e8  01 10 93 e7                                      ldr r1, [r3, r1]
006308ec  10 40 2d e9                                      push {r4, lr}
006308f0  4a cf 82 e2                                      add ip, r2, #0x128
006308f4  1c 20 82 e2                                      add r2, r2, #0x1c
006308f8  00 40 a0 e1                                      mov r4, r0
006308fc  00 20 80 e5                                      str r2, [r0]
00630900  5c c1 80 e5                                      str ip, [r0, #0x15c]
00630904  04 10 81 e2                                      add r1, r1, #4
00630908  c3 ff ff eb                                      bl #0x63081c
0063090c  04 00 a0 e1                                      mov r0, r4
00630910  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00630914  b0 41 36 00 f8 2e 00 00 9c 47 00 00              .byte 0xb0, 0x41, 0x36, 0x00, 0xf8, 0x2e, 0x00, 0x00, 0x9c, 0x47, 0x00, 0x00

; FUNCTION 0x00630920, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CWindForceSceneNode
; alias: _ZTv0_n24_N6glitch7collada15particle_system19CWindForceSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode()
; decoder-mode: arm
00630920  00 30 90 e5                                      ldr r3, [r0]
00630924  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00630928  03 00 80 e0                                      add r0, r0, r3
0063092c  e8 ff ff ea                                      b #0x6308d4

; FUNCTION 0x00630930, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CWindForceSceneNode
; alias: _ZTv0_n12_N6glitch7collada15particle_system19CWindForceSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode()
; decoder-mode: arm
00630930  00 30 90 e5                                      ldr r3, [r0]
00630934  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00630938  03 00 80 e0                                      add r0, r0, r3
0063093c  e4 ff ff ea                                      b #0x6308d4

; FUNCTION 0x00631168, declared_size=220, range_size=220, mode=arm
; class-group: glitch::collada::particle_system::CWindForceSceneNode
; alias: _ZN6glitch7collada15particle_system19CWindForceSceneNodeC1ERKNS0_16CColladaDatabaseERKNS0_6SForceE
; demangled: glitch::collada::particle_system::CWindForceSceneNode::CWindForceSceneNode(glitch::collada::CColladaDatabase const&, glitch::collada::SForce const&)
; decoder-mode: arm
00631168  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0063116c  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
00631170  c0 c0 9f e5                                      ldr ip, [pc, #0xc0]
00631174  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00631178  05 50 8f e0                                      add r5, pc, r5
0063117c  0c c0 95 e7                                      ldr ip, [r5, ip]
00631180  03 30 95 e7                                      ldr r3, [r5, r3]
00631184  01 60 a0 e3                                      mov r6, #1
00631188  24 e0 9c e5                                      ldr lr, [ip, #0x24]
0063118c  08 30 83 e2                                      add r3, r3, #8
00631190  5c 31 80 e5                                      str r3, [r0, #0x15c]
00631194  00 e0 80 e5                                      str lr, [r0]
00631198  60 61 80 e5                                      str r6, [r0, #0x160]
0063119c  0c 60 1e e5                                      ldr r6, [lr, #-0xc]
006311a0  28 70 9c e5                                      ldr r7, [ip, #0x28]
006311a4  01 e0 a0 e1                                      mov lr, r1
006311a8  02 30 a0 e1                                      mov r3, r2
006311ac  04 10 8c e2                                      add r1, ip, #4
006311b0  0e 20 a0 e1                                      mov r2, lr
006311b4  06 70 80 e7                                      str r7, [r0, r6]
006311b8  00 40 a0 e1                                      mov r4, r0
006311bc  6a ff ff eb                                      bl #0x630f6c
006311c0  78 20 9f e5                                      ldr r2, [pc, #0x78]
006311c4  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
006311c8  24 10 84 e2                                      add r1, r4, #0x24
006311cc  02 20 95 e7                                      ldr r2, [r5, r2]
006311d0  40 11 84 e5                                      str r1, [r4, #0x140]
006311d4  04 00 a0 e1                                      mov r0, r4
006311d8  4a 1f 82 e2                                      add r1, r2, #0x128
006311dc  1c 20 82 e2                                      add r2, r2, #0x1c
006311e0  00 20 84 e5                                      str r2, [r4]
006311e4  5c 11 84 e5                                      str r1, [r4, #0x15c]
006311e8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
006311ec  00 20 92 e5                                      ldr r2, [r2]
006311f0  44 21 84 e5                                      str r2, [r4, #0x144]
006311f4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
006311f8  04 20 92 e5                                      ldr r2, [r2, #4]
006311fc  48 21 84 e5                                      str r2, [r4, #0x148]
00631200  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00631204  0c 20 92 e5                                      ldr r2, [r2, #0xc]
00631208  4c 21 84 e5                                      str r2, [r4, #0x14c]
0063120c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00631210  10 20 92 e5                                      ldr r2, [r2, #0x10]
00631214  50 21 84 e5                                      str r2, [r4, #0x150]
00631218  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0063121c  14 20 92 e5                                      ldr r2, [r2, #0x14]
00631220  54 21 84 e5                                      str r2, [r4, #0x154]
00631224  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00631228  08 30 93 e5                                      ldr r3, [r3, #8]
0063122c  58 31 84 e5                                      str r3, [r4, #0x158]
00631230  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00631234  18 39 36 00 9c 47 00 00 44 2b 00 00 f8 2e 00 00  .byte 0x18, 0x39, 0x36, 0x00, 0x9c, 0x47, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xf8, 0x2e, 0x00, 0x00

; FUNCTION 0x00632a14, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::particle_system::CWindForceSceneNode
; alias: _ZN6glitch7collada15particle_system19CWindForceSceneNodeD0Ev
; demangled: glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode()
; decoder-mode: arm
00632a14  40 30 9f e5                                      ldr r3, [pc, #0x40]
00632a18  40 20 9f e5                                      ldr r2, [pc, #0x40]
00632a1c  40 10 9f e5                                      ldr r1, [pc, #0x40]
00632a20  03 30 8f e0                                      add r3, pc, r3
00632a24  02 20 93 e7                                      ldr r2, [r3, r2]
00632a28  01 10 93 e7                                      ldr r1, [r3, r1]
00632a2c  10 40 2d e9                                      push {r4, lr}
00632a30  4a cf 82 e2                                      add ip, r2, #0x128
00632a34  1c 20 82 e2                                      add r2, r2, #0x1c
00632a38  00 40 a0 e1                                      mov r4, r0
00632a3c  00 20 80 e5                                      str r2, [r0]
00632a40  5c c1 80 e5                                      str ip, [r0, #0x15c]
00632a44  04 10 81 e2                                      add r1, r1, #4
00632a48  73 f7 ff eb                                      bl #0x63081c
00632a4c  04 00 a0 e1                                      mov r0, r4
00632a50  16 6e f3 eb                                      bl #0x30e2b0
00632a54  04 00 a0 e1                                      mov r0, r4
00632a58  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00632a5c  70 20 36 00 f8 2e 00 00 9c 47 00 00              .byte 0x70, 0x20, 0x36, 0x00, 0xf8, 0x2e, 0x00, 0x00, 0x9c, 0x47, 0x00, 0x00

; FUNCTION 0x00632a68, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CWindForceSceneNode
; alias: _ZTv0_n24_N6glitch7collada15particle_system19CWindForceSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode()
; decoder-mode: arm
00632a68  00 30 90 e5                                      ldr r3, [r0]
00632a6c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00632a70  03 00 80 e0                                      add r0, r0, r3
00632a74  e6 ff ff ea                                      b #0x632a14

; FUNCTION 0x00632a78, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CWindForceSceneNode
; alias: _ZTv0_n12_N6glitch7collada15particle_system19CWindForceSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::particle_system::CWindForceSceneNode::~CWindForceSceneNode()
; decoder-mode: arm
00632a78  00 30 90 e5                                      ldr r3, [r0]
00632a7c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00632a80  03 00 80 e0                                      add r0, r0, r3
00632a84  e2 ff ff ea                                      b #0x632a14
