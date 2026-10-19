; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00630170, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CGravityForceSceneNode
; alias: _ZN6glitch7collada15particle_system22CGravityForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
; demangled: glitch::collada::particle_system::CGravityForceSceneNode::bind(glitch::collada::CGlitchNewParticleSystemSceneNode*)
; decoder-mode: arm
00630170  05 3d 80 e2                                      add r3, r0, #0x140
00630174  78 01 91 e5                                      ldr r0, [r1, #0x178]
00630178  03 10 a0 e1                                      mov r1, r3
0063017c  e1 ff ff ea                                      b #0x630108

; FUNCTION 0x006301e8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CGravityForceSceneNode
; alias: _ZN6glitch7collada15particle_system22CGravityForceSceneNode4bindEPNS0_24CParticleSystemSceneNodeE
; demangled: glitch::collada::particle_system::CGravityForceSceneNode::bind(glitch::collada::CParticleSystemSceneNode*)
; decoder-mode: arm
006301e8  05 3d 80 e2                                      add r3, r0, #0x140
006301ec  78 01 91 e5                                      ldr r0, [r1, #0x178]
006301f0  03 10 a0 e1                                      mov r1, r3
006301f4  e1 ff ff ea                                      b #0x630180

; FUNCTION 0x006303f0, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::particle_system::CGravityForceSceneNode
; alias: _ZNK6glitch7collada15particle_system22CGravityForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::particle_system::CGravityForceSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
006303f0  70 40 2d e9                                      push {r4, r5, r6, lr}
006303f4  01 40 a0 e1                                      mov r4, r1
006303f8  00 50 a0 e1                                      mov r5, r0
006303fc  a8 9b fd eb                                      bl #0x5972a4
00630400  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00630404  04 00 a0 e1                                      mov r0, r4
00630408  48 21 95 e5                                      ldr r2, [r5, #0x148]
0063040c  00 c0 94 e5                                      ldr ip, [r4]
00630410  01 10 8f e0                                      add r1, pc, r1
00630414  00 30 a0 e3                                      mov r3, #0
00630418  0f e0 a0 e1                                      mov lr, pc
0063041c  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00630420  40 10 9f e5                                      ldr r1, [pc, #0x40]
00630424  04 00 a0 e1                                      mov r0, r4
00630428  44 21 95 e5                                      ldr r2, [r5, #0x144]
0063042c  00 c0 94 e5                                      ldr ip, [r4]
00630430  01 10 8f e0                                      add r1, pc, r1
00630434  00 30 a0 e3                                      mov r3, #0
00630438  0f e0 a0 e1                                      mov lr, pc
0063043c  64 f0 9c e5                                      ldr pc, [ip, #0x64]
00630440  24 10 9f e5                                      ldr r1, [pc, #0x24]
00630444  04 00 a0 e1                                      mov r0, r4
00630448  4c 21 95 e5                                      ldr r2, [r5, #0x14c]
0063044c  01 10 8f e0                                      add r1, pc, r1
00630450  00 c0 94 e5                                      ldr ip, [r4]
00630454  00 30 a0 e3                                      mov r3, #0
00630458  0f e0 a0 e1                                      mov lr, pc
0063045c  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00630460  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00630464  30 4b 2b 00 00 4b 2b 00 7c 05 2b 00              .byte 0x30, 0x4b, 0x2b, 0x00, 0x00, 0x4b, 0x2b, 0x00, 0x7c, 0x05, 0x2b, 0x00

; FUNCTION 0x00630470, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CGravityForceSceneNode
; alias: _ZTv0_n16_NK6glitch7collada15particle_system22CGravityForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::particle_system::CGravityForceSceneNode::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00630470  00 30 90 e5                                      ldr r3, [r0]
00630474  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00630478  03 00 80 e0                                      add r0, r0, r3
0063047c  db ff ff ea                                      b #0x6303f0

; FUNCTION 0x00630648, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::particle_system::CGravityForceSceneNode
; alias: _ZN6glitch7collada15particle_system22CGravityForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
; demangled: glitch::collada::particle_system::CGravityForceSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00630648  70 40 2d e9                                      push {r4, r5, r6, lr}
0063064c  01 40 a0 e1                                      mov r4, r1
00630650  00 50 a0 e1                                      mov r5, r0
00630654  7f 9e fd eb                                      bl #0x598058
00630658  34 10 9f e5                                      ldr r1, [pc, #0x34]
0063065c  00 30 94 e5                                      ldr r3, [r4]
00630660  04 00 a0 e1                                      mov r0, r4
00630664  01 10 8f e0                                      add r1, pc, r1
00630668  0f e0 a0 e1                                      mov lr, pc
0063066c  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00630670  20 10 9f e5                                      ldr r1, [pc, #0x20]
00630674  48 01 85 e5                                      str r0, [r5, #0x148]
00630678  00 30 94 e5                                      ldr r3, [r4]
0063067c  04 00 a0 e1                                      mov r0, r4
00630680  01 10 8f e0                                      add r1, pc, r1
00630684  0f e0 a0 e1                                      mov lr, pc
00630688  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0063068c  44 01 85 e5                                      str r0, [r5, #0x144]
00630690  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00630694  dc 48 2b 00 b0 48 2b 00                          .byte 0xdc, 0x48, 0x2b, 0x00, 0xb0, 0x48, 0x2b, 0x00

; FUNCTION 0x0063069c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CGravityForceSceneNode
; alias: _ZTv0_n20_N6glitch7collada15particle_system22CGravityForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::collada::particle_system::CGravityForceSceneNode::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
0063069c  00 30 90 e5                                      ldr r3, [r0]
006306a0  14 30 13 e5                                      ldr r3, [r3, #-0x14]
006306a4  03 00 80 e0                                      add r0, r0, r3
006306a8  e6 ff ff ea                                      b #0x630648

; FUNCTION 0x00630940, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::particle_system::CGravityForceSceneNode
; alias: _ZN6glitch7collada15particle_system22CGravityForceSceneNodeD1Ev
; demangled: glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode()
; decoder-mode: arm
00630940  38 30 9f e5                                      ldr r3, [pc, #0x38]
00630944  38 20 9f e5                                      ldr r2, [pc, #0x38]
00630948  38 10 9f e5                                      ldr r1, [pc, #0x38]
0063094c  03 30 8f e0                                      add r3, pc, r3
00630950  02 20 93 e7                                      ldr r2, [r3, r2]
00630954  01 10 93 e7                                      ldr r1, [r3, r1]
00630958  10 40 2d e9                                      push {r4, lr}
0063095c  4a cf 82 e2                                      add ip, r2, #0x128
00630960  1c 20 82 e2                                      add r2, r2, #0x1c
00630964  00 40 a0 e1                                      mov r4, r0
00630968  00 20 80 e5                                      str r2, [r0]
0063096c  50 c1 80 e5                                      str ip, [r0, #0x150]
00630970  04 10 81 e2                                      add r1, r1, #4
00630974  a8 ff ff eb                                      bl #0x63081c
00630978  04 00 a0 e1                                      mov r0, r4
0063097c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00630980  44 41 36 00 c8 0e 00 00 d4 37 00 00              .byte 0x44, 0x41, 0x36, 0x00, 0xc8, 0x0e, 0x00, 0x00, 0xd4, 0x37, 0x00, 0x00

; FUNCTION 0x0063098c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CGravityForceSceneNode
; alias: _ZTv0_n24_N6glitch7collada15particle_system22CGravityForceSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode()
; decoder-mode: arm
0063098c  00 30 90 e5                                      ldr r3, [r0]
00630990  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00630994  03 00 80 e0                                      add r0, r0, r3
00630998  e8 ff ff ea                                      b #0x630940

; FUNCTION 0x0063099c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CGravityForceSceneNode
; alias: _ZTv0_n12_N6glitch7collada15particle_system22CGravityForceSceneNodeD1Ev
; demangled: virtual thunk to glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode()
; decoder-mode: arm
0063099c  00 30 90 e5                                      ldr r3, [r0]
006309a0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
006309a4  03 00 80 e0                                      add r0, r0, r3
006309a8  e4 ff ff ea                                      b #0x630940

; FUNCTION 0x00632a88, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::particle_system::CGravityForceSceneNode
; alias: _ZN6glitch7collada15particle_system22CGravityForceSceneNodeD0Ev
; demangled: glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode()
; decoder-mode: arm
00632a88  40 30 9f e5                                      ldr r3, [pc, #0x40]
00632a8c  40 20 9f e5                                      ldr r2, [pc, #0x40]
00632a90  40 10 9f e5                                      ldr r1, [pc, #0x40]
00632a94  03 30 8f e0                                      add r3, pc, r3
00632a98  02 20 93 e7                                      ldr r2, [r3, r2]
00632a9c  01 10 93 e7                                      ldr r1, [r3, r1]
00632aa0  10 40 2d e9                                      push {r4, lr}
00632aa4  4a cf 82 e2                                      add ip, r2, #0x128
00632aa8  1c 20 82 e2                                      add r2, r2, #0x1c
00632aac  00 40 a0 e1                                      mov r4, r0
00632ab0  00 20 80 e5                                      str r2, [r0]
00632ab4  50 c1 80 e5                                      str ip, [r0, #0x150]
00632ab8  04 10 81 e2                                      add r1, r1, #4
00632abc  56 f7 ff eb                                      bl #0x63081c
00632ac0  04 00 a0 e1                                      mov r0, r4
00632ac4  f9 6d f3 eb                                      bl #0x30e2b0
00632ac8  04 00 a0 e1                                      mov r0, r4
00632acc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00632ad0  fc 1f 36 00 c8 0e 00 00 d4 37 00 00              .byte 0xfc, 0x1f, 0x36, 0x00, 0xc8, 0x0e, 0x00, 0x00, 0xd4, 0x37, 0x00, 0x00

; FUNCTION 0x00632adc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CGravityForceSceneNode
; alias: _ZTv0_n24_N6glitch7collada15particle_system22CGravityForceSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode()
; decoder-mode: arm
00632adc  00 30 90 e5                                      ldr r3, [r0]
00632ae0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00632ae4  03 00 80 e0                                      add r0, r0, r3
00632ae8  e6 ff ff ea                                      b #0x632a88

; FUNCTION 0x00632aec, declared_size=16, range_size=16, mode=arm
; class-group: glitch::collada::particle_system::CGravityForceSceneNode
; alias: _ZTv0_n12_N6glitch7collada15particle_system22CGravityForceSceneNodeD0Ev
; demangled: virtual thunk to glitch::collada::particle_system::CGravityForceSceneNode::~CGravityForceSceneNode()
; decoder-mode: arm
00632aec  00 30 90 e5                                      ldr r3, [r0]
00632af0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00632af4  03 00 80 e0                                      add r0, r0, r3
00632af8  e2 ff ff ea                                      b #0x632a88
