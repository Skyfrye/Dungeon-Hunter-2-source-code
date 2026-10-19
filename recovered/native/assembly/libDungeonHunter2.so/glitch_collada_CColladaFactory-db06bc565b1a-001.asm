; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003506a4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createMaterialRenderer(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SEffect*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
003506a4  00 00 a0 e3                                      mov r0, #0
003506a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062fefc, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactoryD2Ev
; demangled: glitch::collada::CColladaFactory::~CColladaFactory()
; decoder-mode: arm
0062fefc  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062ff00, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactoryD1Ev
; demangled: glitch::collada::CColladaFactory::~CColladaFactory()
; decoder-mode: arm
0062ff00  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062ff04, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory20getAdditionalEffectsERKNS0_16CColladaDatabaseEPNS0_7SEffectERNS0_11SEffectListE
; demangled: glitch::collada::CColladaFactory::getAdditionalEffects(glitch::collada::CColladaDatabase const&, glitch::collada::SEffect*, glitch::collada::SEffectList&)
; decoder-mode: arm
0062ff04  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062ff08, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory21getVertexBufferConfigERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
; demangled: glitch::collada::CColladaFactory::getVertexBufferConfig(glitch::collada::CColladaDatabase const&, glitch::collada::SGeometry*)
; decoder-mode: arm
0062ff08  00 20 a0 e3                                      mov r2, #0
0062ff0c  04 10 a0 e3                                      mov r1, #4
0062ff10  05 20 c0 e5                                      strb r2, [r0, #5]
0062ff14  00 10 80 e5                                      str r1, [r0]
0062ff18  04 20 c0 e5                                      strb r2, [r0, #4]
0062ff1c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062ff20, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory20getIndexBufferConfigERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
; demangled: glitch::collada::CColladaFactory::getIndexBufferConfig(glitch::collada::CColladaDatabase const&, glitch::collada::SGeometry*)
; decoder-mode: arm
0062ff20  00 20 a0 e3                                      mov r2, #0
0062ff24  04 10 a0 e3                                      mov r1, #4
0062ff28  05 20 c0 e5                                      strb r2, [r0, #5]
0062ff2c  00 10 80 e5                                      str r1, [r0]
0062ff30  04 20 c0 e5                                      strb r2, [r0, #4]
0062ff34  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062ff38, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory20isSharingMeshBuffersERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
; demangled: glitch::collada::CColladaFactory::isSharingMeshBuffers(glitch::collada::CColladaDatabase const&, glitch::collada::SGeometry*)
; decoder-mode: arm
0062ff38  01 00 a0 e3                                      mov r0, #1
0062ff3c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00630008, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory25getExternalLightSceneNodeERKNS0_16CColladaDatabaseERKN5boost13intrusive_ptrIKNS_5video17CMaterialRendererEEEtjPKc
; demangled: glitch::collada::CColladaFactory::getExternalLightSceneNode(glitch::collada::CColladaDatabase const&, boost::intrusive_ptr<glitch::video::CMaterialRenderer const> const&, unsigned short, unsigned int, char const*)
; decoder-mode: arm
00630008  04 00 9d e5                                      ldr r0, [sp, #4]
0063000c  db ff ff ea                                      b #0x62ff80

; FUNCTION 0x00630010, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory25getExternalLightSceneNodeERKNS0_16CColladaDatabaseERKN5boost13intrusive_ptrIKNS_5video9CMaterialEEEtjPKc
; demangled: glitch::collada::CColladaFactory::getExternalLightSceneNode(glitch::collada::CColladaDatabase const&, boost::intrusive_ptr<glitch::video::CMaterial const> const&, unsigned short, unsigned int, char const*)
; decoder-mode: arm
00630010  04 00 9d e5                                      ldr r0, [sp, #4]
00630014  d9 ff ff ea                                      b #0x62ff80

; FUNCTION 0x0063074c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactoryD0Ev
; demangled: glitch::collada::CColladaFactory::~CColladaFactory()
; decoder-mode: arm
0063074c  10 40 2d e9                                      push {r4, lr}
00630750  00 40 a0 e1                                      mov r4, r0
00630754  e9 fd ff eb                                      bl #0x62ff00
00630758  04 00 a0 e1                                      mov r0, r4
0063075c  d3 76 f3 eb                                      bl #0x30e2b0
00630760  04 00 a0 e1                                      mov r0, r4
00630764  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00631138, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory34createParticleSystemDeflectorForceERKNS0_16CColladaDatabaseEPNS0_6SForceE
; demangled: glitch::collada::CColladaFactory::createParticleSystemDeflectorForce(glitch::collada::CColladaDatabase const&, glitch::collada::SForce*)
; decoder-mode: arm
00631138  70 40 2d e9                                      push {r4, r5, r6, lr}
0063113c  5a 0f a0 e3                                      mov r0, #0x168
00631140  01 50 a0 e1                                      mov r5, r1
00631144  00 10 a0 e3                                      mov r1, #0
00631148  02 60 a0 e1                                      mov r6, r2
0063114c  16 0c fc eb                                      bl #0x5341ac
00631150  05 10 a0 e1                                      mov r1, r5
00631154  00 40 a0 e1                                      mov r4, r0
00631158  06 20 a0 e1                                      mov r2, r6
0063115c  bb ff ff eb                                      bl #0x631050
00631160  04 00 a0 e1                                      mov r0, r4
00631164  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00631244, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory29createParticleSystemWindForceERKNS0_16CColladaDatabaseEPNS0_6SForceE
; demangled: glitch::collada::CColladaFactory::createParticleSystemWindForce(glitch::collada::CColladaDatabase const&, glitch::collada::SForce*)
; decoder-mode: arm
00631244  70 40 2d e9                                      push {r4, r5, r6, lr}
00631248  59 0f a0 e3                                      mov r0, #0x164
0063124c  01 50 a0 e1                                      mov r5, r1
00631250  00 10 a0 e3                                      mov r1, #0
00631254  02 60 a0 e1                                      mov r6, r2
00631258  d3 0b fc eb                                      bl #0x5341ac
0063125c  05 10 a0 e1                                      mov r1, r5
00631260  00 40 a0 e1                                      mov r4, r0
00631264  06 20 a0 e1                                      mov r2, r6
00631268  be ff ff eb                                      bl #0x631168
0063126c  04 00 a0 e1                                      mov r0, r4
00631270  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00631274, declared_size=200, range_size=200, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory32createParticleSystemGravityForceERKNS0_16CColladaDatabaseEPNS0_6SForceE
; demangled: glitch::collada::CColladaFactory::createParticleSystemGravityForce(glitch::collada::CColladaDatabase const&, glitch::collada::SForce*)
; decoder-mode: arm
00631274  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00631278  56 0f a0 e3                                      mov r0, #0x158
0063127c  01 70 a0 e1                                      mov r7, r1
00631280  00 10 a0 e3                                      mov r1, #0
00631284  02 60 a0 e1                                      mov r6, r2
00631288  c7 0b fc eb                                      bl #0x5341ac
0063128c  98 50 9f e5                                      ldr r5, [pc, #0x98]
00631290  98 20 9f e5                                      ldr r2, [pc, #0x98]
00631294  98 30 9f e5                                      ldr r3, [pc, #0x98]
00631298  05 50 8f e0                                      add r5, pc, r5
0063129c  02 10 95 e7                                      ldr r1, [r5, r2]
006312a0  03 30 95 e7                                      ldr r3, [r5, r3]
006312a4  01 c0 a0 e3                                      mov ip, #1
006312a8  24 20 91 e5                                      ldr r2, [r1, #0x24]
006312ac  08 30 83 e2                                      add r3, r3, #8
006312b0  54 c1 80 e5                                      str ip, [r0, #0x154]
006312b4  00 20 80 e5                                      str r2, [r0]
006312b8  50 31 80 e5                                      str r3, [r0, #0x150]
006312bc  0c 30 12 e5                                      ldr r3, [r2, #-0xc]
006312c0  28 c0 91 e5                                      ldr ip, [r1, #0x28]
006312c4  07 20 a0 e1                                      mov r2, r7
006312c8  04 10 81 e2                                      add r1, r1, #4
006312cc  03 c0 80 e7                                      str ip, [r0, r3]
006312d0  06 30 a0 e1                                      mov r3, r6
006312d4  00 40 a0 e1                                      mov r4, r0
006312d8  23 ff ff eb                                      bl #0x630f6c
006312dc  54 30 9f e5                                      ldr r3, [pc, #0x54]
006312e0  3c 21 94 e5                                      ldr r2, [r4, #0x13c]
006312e4  24 10 84 e2                                      add r1, r4, #0x24
006312e8  03 30 95 e7                                      ldr r3, [r5, r3]
006312ec  40 11 84 e5                                      str r1, [r4, #0x140]
006312f0  04 00 a0 e1                                      mov r0, r4
006312f4  4a 1f 83 e2                                      add r1, r3, #0x128
006312f8  1c 30 83 e2                                      add r3, r3, #0x1c
006312fc  00 30 84 e5                                      str r3, [r4]
00631300  50 11 84 e5                                      str r1, [r4, #0x150]
00631304  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00631308  00 30 93 e5                                      ldr r3, [r3]
0063130c  44 31 84 e5                                      str r3, [r4, #0x144]
00631310  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00631314  04 30 93 e5                                      ldr r3, [r3, #4]
00631318  48 31 84 e5                                      str r3, [r4, #0x148]
0063131c  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00631320  08 30 93 e5                                      ldr r3, [r3, #8]
00631324  4c 31 84 e5                                      str r3, [r4, #0x14c]
00631328  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0063132c  f8 37 36 00 d4 37 00 00 44 2b 00 00 c8 0e 00 00  .byte 0xf8, 0x37, 0x36, 0x00, 0xd4, 0x37, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xc8, 0x0e, 0x00, 0x00

; FUNCTION 0x0063133c, declared_size=476, range_size=476, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory29createGlitchNewParticleSystemERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_12SGNPSEmitterEPNS_3res6vectorINSA_6StringEEEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createGlitchNewParticleSystem(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SGNPSEmitter*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
0063133c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00631340  66 0f a0 e3                                      mov r0, #0x198
00631344  34 d0 4d e2                                      sub sp, sp, #0x34
00631348  01 70 a0 e1                                      mov r7, r1
0063134c  00 10 a0 e3                                      mov r1, #0
00631350  03 50 a0 e1                                      mov r5, r3
00631354  02 60 a0 e1                                      mov r6, r2
00631358  93 0b fc eb                                      bl #0x5341ac
0063135c  4c c0 9d e5                                      ldr ip, [sp, #0x4c]
00631360  07 10 a0 e1                                      mov r1, r7
00631364  48 30 9d e5                                      ldr r3, [sp, #0x48]
00631368  05 20 a0 e1                                      mov r2, r5
0063136c  00 40 a0 e1                                      mov r4, r0
00631370  00 c0 8d e5                                      str ip, [sp]
00631374  e5 2d 00 eb                                      bl #0x63cb10
00631378  28 70 d5 e5                                      ldrb r7, [r5, #0x28]
0063137c  00 00 57 e3                                      cmp r7, #0
00631380  13 00 00 1a                                      bne #0x6313d4
00631384  00 30 94 e5                                      ldr r3, [r4]
00631388  01 20 a0 e3                                      mov r2, #1
0063138c  06 10 a0 e1                                      mov r1, r6
00631390  04 00 a0 e1                                      mov r0, r4
00631394  0f e0 a0 e1                                      mov lr, pc
00631398  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
0063139c  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
006313a0  00 20 d3 e5                                      ldrb r2, [r3]
006313a4  00 00 52 e3                                      cmp r2, #0
006313a8  06 00 00 0a                                      beq #0x6313c8
006313ac  01 10 d3 e5                                      ldrb r1, [r3, #1]
006313b0  00 00 51 e3                                      cmp r1, #0
006313b4  0f 00 00 0a                                      beq #0x6313f8
006313b8  01 00 51 e3                                      cmp r1, #1
006313bc  42 00 00 0a                                      beq #0x6314cc
006313c0  02 00 51 e3                                      cmp r1, #2
006313c4  14 00 00 0a                                      beq #0x63141c
006313c8  04 00 a0 e1                                      mov r0, r4
006313cc  34 d0 8d e2                                      add sp, sp, #0x34
006313d0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006313d4  01 00 57 e3                                      cmp r7, #1
006313d8  fa ff ff 1a                                      bne #0x6313c8
006313dc  06 10 a0 e1                                      mov r1, r6
006313e0  00 30 94 e5                                      ldr r3, [r4]
006313e4  04 00 a0 e1                                      mov r0, r4
006313e8  00 20 a0 e3                                      mov r2, #0
006313ec  0f e0 a0 e1                                      mov lr, pc
006313f0  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
006313f4  f3 ff ff ea                                      b #0x6313c8
006313f8  78 31 94 e5                                      ldr r3, [r4, #0x178]
006313fc  01 20 a0 e3                                      mov r2, #1
00631400  00 00 93 e5                                      ldr r0, [r3]
00631404  0c 00 10 e5                                      ldr r0, [r0, #-0xc]
00631408  00 30 83 e0                                      add r3, r3, r0
0063140c  05 20 c3 e5                                      strb r2, [r3, #5]
00631410  04 10 c3 e5                                      strb r1, [r3, #4]
00631414  20 20 c3 e5                                      strb r2, [r3, #0x20]
00631418  ea ff ff ea                                      b #0x6313c8
0063141c  03 20 d3 e5                                      ldrb r2, [r3, #3]
00631420  00 00 52 e3                                      cmp r2, #0
00631424  0d 00 00 0a                                      beq #0x631460
00631428  78 01 94 e5                                      ldr r0, [r4, #0x178]
0063142c  08 c0 93 e5                                      ldr ip, [r3, #8]
00631430  07 10 a0 e1                                      mov r1, r7
00631434  00 e0 90 e5                                      ldr lr, [r0]
00631438  18 20 8d e2                                      add r2, sp, #0x18
0063143c  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
00631440  18 c0 8d e5                                      str ip, [sp, #0x18]
00631444  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00631448  0e 00 80 e0                                      add r0, r0, lr
0063144c  1c c0 8d e5                                      str ip, [sp, #0x1c]
00631450  10 30 93 e5                                      ldr r3, [r3, #0x10]
00631454  20 30 8d e5                                      str r3, [sp, #0x20]
00631458  75 fd ff eb                                      bl #0x630a34
0063145c  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
00631460  04 20 d3 e5                                      ldrb r2, [r3, #4]
00631464  00 00 52 e3                                      cmp r2, #0
00631468  0d 00 00 0a                                      beq #0x6314a4
0063146c  78 01 94 e5                                      ldr r0, [r4, #0x178]
00631470  14 c0 93 e5                                      ldr ip, [r3, #0x14]
00631474  01 10 a0 e3                                      mov r1, #1
00631478  00 e0 90 e5                                      ldr lr, [r0]
0063147c  0c 20 8d e2                                      add r2, sp, #0xc
00631480  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
00631484  0c c0 8d e5                                      str ip, [sp, #0xc]
00631488  18 c0 93 e5                                      ldr ip, [r3, #0x18]
0063148c  0e 00 80 e0                                      add r0, r0, lr
00631490  10 c0 8d e5                                      str ip, [sp, #0x10]
00631494  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00631498  14 30 8d e5                                      str r3, [sp, #0x14]
0063149c  64 fd ff eb                                      bl #0x630a34
006314a0  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
006314a4  02 30 d3 e5                                      ldrb r3, [r3, #2]
006314a8  00 00 53 e3                                      cmp r3, #0
006314ac  13 00 00 0a                                      beq #0x631500
006314b0  78 31 94 e5                                      ldr r3, [r4, #0x178]
006314b4  00 20 93 e5                                      ldr r2, [r3]
006314b8  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006314bc  02 30 83 e0                                      add r3, r3, r2
006314c0  01 20 a0 e3                                      mov r2, #1
006314c4  21 20 c3 e5                                      strb r2, [r3, #0x21]
006314c8  be ff ff ea                                      b #0x6313c8
006314cc  78 01 94 e5                                      ldr r0, [r4, #0x178]
006314d0  14 c0 93 e5                                      ldr ip, [r3, #0x14]
006314d4  24 20 8d e2                                      add r2, sp, #0x24
006314d8  00 e0 90 e5                                      ldr lr, [r0]
006314dc  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
006314e0  24 c0 8d e5                                      str ip, [sp, #0x24]
006314e4  18 c0 93 e5                                      ldr ip, [r3, #0x18]
006314e8  0e 00 80 e0                                      add r0, r0, lr
006314ec  28 c0 8d e5                                      str ip, [sp, #0x28]
006314f0  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
006314f4  2c 30 8d e5                                      str r3, [sp, #0x2c]
006314f8  4d fd ff eb                                      bl #0x630a34
006314fc  b1 ff ff ea                                      b #0x6313c8
00631500  78 21 94 e5                                      ldr r2, [r4, #0x178]
00631504  00 10 92 e5                                      ldr r1, [r2]
00631508  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
0063150c  01 20 82 e0                                      add r2, r2, r1
00631510  21 30 c2 e5                                      strb r3, [r2, #0x21]
00631514  ab ff ff ea                                      b #0x6313c8

; FUNCTION 0x00631518, declared_size=72, range_size=72, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory13createCoronasERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_8SCoronasEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createCoronas(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SCoronas*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00631518  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0063151c  83 0f a0 e3                                      mov r0, #0x20c
00631520  0c d0 4d e2                                      sub sp, sp, #0xc
00631524  01 50 a0 e1                                      mov r5, r1
00631528  00 10 a0 e3                                      mov r1, #0
0063152c  02 70 a0 e1                                      mov r7, r2
00631530  03 60 a0 e1                                      mov r6, r3
00631534  1c 0b fc eb                                      bl #0x5341ac
00631538  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0063153c  00 40 a0 e1                                      mov r4, r0
00631540  05 10 a0 e1                                      mov r1, r5
00631544  07 20 a0 e1                                      mov r2, r7
00631548  06 30 a0 e1                                      mov r3, r6
0063154c  00 c0 8d e5                                      str ip, [sp]
00631550  88 d8 02 eb                                      bl #0x6e7778
00631554  04 00 a0 e1                                      mov r0, r4
00631558  0c d0 8d e2                                      add sp, sp, #0xc
0063155c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00631560, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory17createModularSkinERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createModularSkin(glitch::collada::CColladaDatabase const&, glitch::collada::SInstanceModularSkin*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00631560  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00631564  00 10 a0 e3                                      mov r1, #0
00631568  14 d0 4d e2                                      sub sp, sp, #0x14
0063156c  00 50 a0 e1                                      mov r5, r0
00631570  5c 00 a0 e3                                      mov r0, #0x5c
00631574  02 60 a0 e1                                      mov r6, r2
00631578  03 70 a0 e1                                      mov r7, r3
0063157c  0a 0b fc eb                                      bl #0x5341ac
00631580  00 c0 e0 e3                                      mvn ip, #0
00631584  00 c0 8d e5                                      str ip, [sp]
00631588  01 c0 a0 e3                                      mov ip, #1
0063158c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00631590  04 c0 8d e5                                      str ip, [sp, #4]
00631594  06 10 a0 e1                                      mov r1, r6
00631598  00 c0 a0 e3                                      mov ip, #0
0063159c  07 20 a0 e1                                      mov r2, r7
006315a0  00 40 a0 e1                                      mov r4, r0
006315a4  08 c0 8d e5                                      str ip, [sp, #8]
006315a8  dc 5e 00 eb                                      bl #0x649120
006315ac  00 00 54 e3                                      cmp r4, #0
006315b0  00 40 85 e5                                      str r4, [r5]
006315b4  04 30 94 15                                      ldrne r3, [r4, #4]
006315b8  05 00 a0 e1                                      mov r0, r5
006315bc  01 30 83 12                                      addne r3, r3, #1
006315c0  04 30 84 15                                      strne r3, [r4, #4]
006315c4  14 d0 8d e2                                      add sp, sp, #0x14
006315c8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006315cc, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory10createSkinERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createSkin(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
006315cc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006315d0  00 10 a0 e3                                      mov r1, #0
006315d4  0c d0 4d e2                                      sub sp, sp, #0xc
006315d8  00 50 a0 e1                                      mov r5, r0
006315dc  9c 00 a0 e3                                      mov r0, #0x9c
006315e0  02 60 a0 e1                                      mov r6, r2
006315e4  03 70 a0 e1                                      mov r7, r3
006315e8  ef 0a fc eb                                      bl #0x5341ac
006315ec  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006315f0  20 30 9d e5                                      ldr r3, [sp, #0x20]
006315f4  06 10 a0 e1                                      mov r1, r6
006315f8  07 20 a0 e1                                      mov r2, r7
006315fc  00 40 a0 e1                                      mov r4, r0
00631600  00 c0 8d e5                                      str ip, [sp]
00631604  b9 d3 00 eb                                      bl #0x6664f0
00631608  00 00 54 e3                                      cmp r4, #0
0063160c  00 40 85 e5                                      str r4, [r5]
00631610  04 30 94 15                                      ldrne r3, [r4, #4]
00631614  05 00 a0 e1                                      mov r0, r5
00631618  01 30 83 12                                      addne r3, r3, #1
0063161c  04 30 84 15                                      strne r3, [r4, #4]
00631620  0c d0 8d e2                                      add sp, sp, #0xc
00631624  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00631628, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory11createSceneERKNS0_16CColladaDatabaseE
; demangled: glitch::collada::CColladaFactory::createScene(glitch::collada::CColladaDatabase const&)
; decoder-mode: arm
00631628  70 40 2d e9                                      push {r4, r5, r6, lr}
0063162c  71 0f a0 e3                                      mov r0, #0x1c4
00631630  01 50 a0 e1                                      mov r5, r1
00631634  00 10 a0 e3                                      mov r1, #0
00631638  db 0a fc eb                                      bl #0x5341ac
0063163c  05 10 a0 e1                                      mov r1, r5
00631640  00 40 a0 e1                                      mov r4, r0
00631644  3a a8 00 eb                                      bl #0x65b734
00631648  04 00 a0 e1                                      mov r0, r4
0063164c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00631650, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory21createModularSkinNodeERKNS0_16CColladaDatabaseERKN5boost13intrusive_ptrINS0_5IMeshEEEPv
; demangled: glitch::collada::CColladaFactory::createModularSkinNode(glitch::collada::CColladaDatabase const&, boost::intrusive_ptr<glitch::collada::IMesh> const&, void*)
; decoder-mode: arm
00631650  30 40 2d e9                                      push {r4, r5, lr}
00631654  00 30 a0 e3                                      mov r3, #0
00631658  3c d0 4d e2                                      sub sp, sp, #0x3c
0063165c  fe c5 a0 e3                                      mov ip, #0x3f800000
00631660  00 10 a0 e3                                      mov r1, #0
00631664  61 0f a0 e3                                      mov r0, #0x184
00631668  02 50 a0 e1                                      mov r5, r2
0063166c  18 30 8d e5                                      str r3, [sp, #0x18]
00631670  28 c0 8d e5                                      str ip, [sp, #0x28]
00631674  2c 30 8d e5                                      str r3, [sp, #0x2c]
00631678  30 30 8d e5                                      str r3, [sp, #0x30]
0063167c  34 30 8d e5                                      str r3, [sp, #0x34]
00631680  10 30 8d e5                                      str r3, [sp, #0x10]
00631684  14 30 8d e5                                      str r3, [sp, #0x14]
00631688  1c c0 8d e5                                      str ip, [sp, #0x1c]
0063168c  20 c0 8d e5                                      str ip, [sp, #0x20]
00631690  24 c0 8d e5                                      str ip, [sp, #0x24]
00631694  c4 0a fc eb                                      bl #0x5341ac
00631698  2c c0 8d e2                                      add ip, sp, #0x2c
0063169c  00 c0 8d e5                                      str ip, [sp]
006316a0  10 c0 8d e2                                      add ip, sp, #0x10
006316a4  00 40 a0 e1                                      mov r4, r0
006316a8  04 c0 8d e5                                      str ip, [sp, #4]
006316ac  05 10 a0 e1                                      mov r1, r5
006316b0  20 c0 8d e2                                      add ip, sp, #0x20
006316b4  00 20 a0 e3                                      mov r2, #0
006316b8  00 30 e0 e3                                      mvn r3, #0
006316bc  08 c0 8d e5                                      str ip, [sp, #8]
006316c0  88 5f 00 eb                                      bl #0x6494e8
006316c4  04 00 a0 e1                                      mov r0, r4
006316c8  3c d0 8d e2                                      add sp, sp, #0x3c
006316cc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006316d0, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory14createSkinNodeERKNS0_16CColladaDatabaseERKN5boost13intrusive_ptrINS0_5IMeshEEEPv
; demangled: glitch::collada::CColladaFactory::createSkinNode(glitch::collada::CColladaDatabase const&, boost::intrusive_ptr<glitch::collada::IMesh> const&, void*)
; decoder-mode: arm
006316d0  30 40 2d e9                                      push {r4, r5, lr}
006316d4  00 30 a0 e3                                      mov r3, #0
006316d8  3c d0 4d e2                                      sub sp, sp, #0x3c
006316dc  fe c5 a0 e3                                      mov ip, #0x3f800000
006316e0  00 10 a0 e3                                      mov r1, #0
006316e4  61 0f a0 e3                                      mov r0, #0x184
006316e8  02 50 a0 e1                                      mov r5, r2
006316ec  18 30 8d e5                                      str r3, [sp, #0x18]
006316f0  28 c0 8d e5                                      str ip, [sp, #0x28]
006316f4  2c 30 8d e5                                      str r3, [sp, #0x2c]
006316f8  30 30 8d e5                                      str r3, [sp, #0x30]
006316fc  34 30 8d e5                                      str r3, [sp, #0x34]
00631700  10 30 8d e5                                      str r3, [sp, #0x10]
00631704  14 30 8d e5                                      str r3, [sp, #0x14]
00631708  1c c0 8d e5                                      str ip, [sp, #0x1c]
0063170c  20 c0 8d e5                                      str ip, [sp, #0x20]
00631710  24 c0 8d e5                                      str ip, [sp, #0x24]
00631714  a4 0a fc eb                                      bl #0x5341ac
00631718  2c c0 8d e2                                      add ip, sp, #0x2c
0063171c  00 c0 8d e5                                      str ip, [sp]
00631720  10 c0 8d e2                                      add ip, sp, #0x10
00631724  00 40 a0 e1                                      mov r4, r0
00631728  04 c0 8d e5                                      str ip, [sp, #4]
0063172c  05 10 a0 e1                                      mov r1, r5
00631730  20 c0 8d e2                                      add ip, sp, #0x20
00631734  00 20 a0 e3                                      mov r2, #0
00631738  00 30 e0 e3                                      mvn r3, #0
0063173c  08 c0 8d e5                                      str ip, [sp, #8]
00631740  c3 d4 00 eb                                      bl #0x666a54
00631744  04 00 a0 e1                                      mov r0, r4
00631748  3c d0 8d e2                                      add sp, sp, #0x3c
0063174c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00631750, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory14createMeshNodeERKNS0_16CColladaDatabaseERKN5boost13intrusive_ptrINS0_5IMeshEEEPv
; demangled: glitch::collada::CColladaFactory::createMeshNode(glitch::collada::CColladaDatabase const&, boost::intrusive_ptr<glitch::collada::IMesh> const&, void*)
; decoder-mode: arm
00631750  30 40 2d e9                                      push {r4, r5, lr}
00631754  00 30 a0 e3                                      mov r3, #0
00631758  3c d0 4d e2                                      sub sp, sp, #0x3c
0063175c  fe c5 a0 e3                                      mov ip, #0x3f800000
00631760  00 10 a0 e3                                      mov r1, #0
00631764  05 0d a0 e3                                      mov r0, #0x140
00631768  02 50 a0 e1                                      mov r5, r2
0063176c  18 30 8d e5                                      str r3, [sp, #0x18]
00631770  28 c0 8d e5                                      str ip, [sp, #0x28]
00631774  2c 30 8d e5                                      str r3, [sp, #0x2c]
00631778  30 30 8d e5                                      str r3, [sp, #0x30]
0063177c  34 30 8d e5                                      str r3, [sp, #0x34]
00631780  10 30 8d e5                                      str r3, [sp, #0x10]
00631784  14 30 8d e5                                      str r3, [sp, #0x14]
00631788  1c c0 8d e5                                      str ip, [sp, #0x1c]
0063178c  20 c0 8d e5                                      str ip, [sp, #0x20]
00631790  24 c0 8d e5                                      str ip, [sp, #0x24]
00631794  84 0a fc eb                                      bl #0x5341ac
00631798  2c c0 8d e2                                      add ip, sp, #0x2c
0063179c  00 c0 8d e5                                      str ip, [sp]
006317a0  10 c0 8d e2                                      add ip, sp, #0x10
006317a4  00 40 a0 e1                                      mov r4, r0
006317a8  04 c0 8d e5                                      str ip, [sp, #4]
006317ac  05 10 a0 e1                                      mov r1, r5
006317b0  20 c0 8d e2                                      add ip, sp, #0x20
006317b4  00 20 a0 e3                                      mov r2, #0
006317b8  00 30 e0 e3                                      mvn r3, #0
006317bc  08 c0 8d e5                                      str ip, [sp, #8]
006317c0  70 53 00 eb                                      bl #0x646588
006317c4  04 00 a0 e1                                      mov r0, r4
006317c8  3c d0 8d e2                                      add sp, sp, #0x3c
006317cc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006317d0, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory16createCameraNodeERKNS0_16CColladaDatabaseEPNS0_7SCameraE
; demangled: glitch::collada::CColladaFactory::createCameraNode(glitch::collada::CColladaDatabase const&, glitch::collada::SCamera*)
; decoder-mode: arm
006317d0  70 40 2d e9                                      push {r4, r5, r6, lr}
006317d4  3a 0e a0 e3                                      mov r0, #0x3a0
006317d8  01 50 a0 e1                                      mov r5, r1
006317dc  00 10 a0 e3                                      mov r1, #0
006317e0  02 60 a0 e1                                      mov r6, r2
006317e4  70 0a fc eb                                      bl #0x5341ac
006317e8  05 10 a0 e1                                      mov r1, r5
006317ec  00 40 a0 e1                                      mov r4, r0
006317f0  06 20 a0 e1                                      mov r2, r6
006317f4  55 cf 02 eb                                      bl #0x6e5550
006317f8  04 00 a0 e1                                      mov r0, r4
006317fc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00631800, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory10createNodeERKNS0_16CColladaDatabaseEPNS0_5SNodeE
; demangled: glitch::collada::CColladaFactory::createNode(glitch::collada::CColladaDatabase const&, glitch::collada::SNode*)
; decoder-mode: arm
00631800  70 40 2d e9                                      push {r4, r5, r6, lr}
00631804  16 0e a0 e3                                      mov r0, #0x160
00631808  01 50 a0 e1                                      mov r5, r1
0063180c  00 10 a0 e3                                      mov r1, #0
00631810  02 60 a0 e1                                      mov r6, r2
00631814  64 0a fc eb                                      bl #0x5341ac
00631818  05 10 a0 e1                                      mov r1, r5
0063181c  00 40 a0 e1                                      mov r4, r0
00631820  06 20 a0 e1                                      mov r2, r6
00631824  49 ae 00 eb                                      bl #0x65d150
00631828  04 00 a0 e1                                      mov r0, r4
0063182c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00631830, declared_size=152, range_size=152, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory15createBillboardERKNS0_16CColladaDatabaseEPNS0_5SNodeE
; demangled: glitch::collada::CColladaFactory::createBillboard(glitch::collada::CColladaDatabase const&, glitch::collada::SNode*)
; decoder-mode: arm
00631830  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00631834  16 0e a0 e3                                      mov r0, #0x160
00631838  01 70 a0 e1                                      mov r7, r1
0063183c  00 10 a0 e3                                      mov r1, #0
00631840  02 60 a0 e1                                      mov r6, r2
00631844  58 0a fc eb                                      bl #0x5341ac
00631848  68 50 9f e5                                      ldr r5, [pc, #0x68]
0063184c  68 20 9f e5                                      ldr r2, [pc, #0x68]
00631850  68 30 9f e5                                      ldr r3, [pc, #0x68]
00631854  05 50 8f e0                                      add r5, pc, r5
00631858  02 10 95 e7                                      ldr r1, [r5, r2]
0063185c  03 30 95 e7                                      ldr r3, [r5, r3]
00631860  01 c0 a0 e3                                      mov ip, #1
00631864  30 20 91 e5                                      ldr r2, [r1, #0x30]
00631868  08 30 83 e2                                      add r3, r3, #8
0063186c  5c c1 80 e5                                      str ip, [r0, #0x15c]
00631870  00 20 80 e5                                      str r2, [r0]
00631874  58 31 80 e5                                      str r3, [r0, #0x158]
00631878  0c 30 12 e5                                      ldr r3, [r2, #-0xc]
0063187c  34 c0 91 e5                                      ldr ip, [r1, #0x34]
00631880  07 20 a0 e1                                      mov r2, r7
00631884  04 10 81 e2                                      add r1, r1, #4
00631888  03 c0 80 e7                                      str ip, [r0, r3]
0063188c  06 30 a0 e1                                      mov r3, r6
00631890  00 40 a0 e1                                      mov r4, r0
00631894  86 ae 00 eb                                      bl #0x65d2b4
00631898  24 30 9f e5                                      ldr r3, [pc, #0x24]
0063189c  04 00 a0 e1                                      mov r0, r4
006318a0  03 30 95 e7                                      ldr r3, [r5, r3]
006318a4  49 2f 83 e2                                      add r2, r3, #0x124
006318a8  1c 30 83 e2                                      add r3, r3, #0x1c
006318ac  00 30 84 e5                                      str r3, [r4]
006318b0  58 21 84 e5                                      str r2, [r4, #0x158]
006318b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006318b8  3c 32 36 00 a0 0e 00 00 44 2b 00 00 8c 23 00 00  .byte 0x3c, 0x32, 0x36, 0x00, 0xa0, 0x0e, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x8c, 0x23, 0x00, 0x00

; FUNCTION 0x006318c8, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory11createMorphERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createMorph(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
006318c8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006318cc  00 10 a0 e3                                      mov r1, #0
006318d0  0c d0 4d e2                                      sub sp, sp, #0xc
006318d4  00 50 a0 e1                                      mov r5, r0
006318d8  40 00 a0 e3                                      mov r0, #0x40
006318dc  02 60 a0 e1                                      mov r6, r2
006318e0  03 70 a0 e1                                      mov r7, r3
006318e4  30 0a fc eb                                      bl #0x5341ac
006318e8  24 c0 9d e5                                      ldr ip, [sp, #0x24]
006318ec  20 30 9d e5                                      ldr r3, [sp, #0x20]
006318f0  06 10 a0 e1                                      mov r1, r6
006318f4  07 20 a0 e1                                      mov r2, r7
006318f8  00 40 a0 e1                                      mov r4, r0
006318fc  00 c0 8d e5                                      str ip, [sp]
00631900  30 68 00 eb                                      bl #0x64b9c8
00631904  00 00 54 e3                                      cmp r4, #0
00631908  00 40 85 e5                                      str r4, [r5]
0063190c  04 30 94 15                                      ldrne r3, [r4, #4]
00631910  05 00 a0 e1                                      mov r0, r5
00631914  01 30 83 12                                      addne r3, r3, #1
00631918  04 30 84 15                                      strne r3, [r4, #4]
0063191c  0c d0 8d e2                                      add sp, sp, #0xc
00631920  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00631924, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory14createGeometryERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_9SGeometryE
; demangled: glitch::collada::CColladaFactory::createGeometry(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SGeometry*)
; decoder-mode: arm
00631924  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00631928  24 d0 4d e2                                      sub sp, sp, #0x24
0063192c  48 50 9d e5                                      ldr r5, [sp, #0x48]
00631930  18 70 8d e2                                      add r7, sp, #0x18
00631934  01 40 a0 e1                                      mov r4, r1
00631938  02 60 a0 e1                                      mov r6, r2
0063193c  00 a0 a0 e1                                      mov sl, r0
00631940  03 b0 a0 e1                                      mov fp, r3
00631944  07 00 a0 e1                                      mov r0, r7
00631948  05 30 a0 e1                                      mov r3, r5
0063194c  10 80 8d e2                                      add r8, sp, #0x10
00631950  00 c0 91 e5                                      ldr ip, [r1]
00631954  0f e0 a0 e1                                      mov lr, pc
00631958  28 f0 9c e5                                      ldr pc, [ip, #0x28]
0063195c  00 c0 94 e5                                      ldr ip, [r4]
00631960  05 30 a0 e1                                      mov r3, r5
00631964  08 00 a0 e1                                      mov r0, r8
00631968  04 10 a0 e1                                      mov r1, r4
0063196c  06 20 a0 e1                                      mov r2, r6
00631970  0f e0 a0 e1                                      mov lr, pc
00631974  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
00631978  05 20 a0 e1                                      mov r2, r5
0063197c  00 30 94 e5                                      ldr r3, [r4]
00631980  06 10 a0 e1                                      mov r1, r6
00631984  04 00 a0 e1                                      mov r0, r4
00631988  0f e0 a0 e1                                      mov lr, pc
0063198c  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00631990  00 10 a0 e3                                      mov r1, #0
00631994  00 90 a0 e1                                      mov sb, r0
00631998  3c 00 a0 e3                                      mov r0, #0x3c
0063199c  02 0a fc eb                                      bl #0x5341ac
006319a0  05 30 a0 e1                                      mov r3, r5
006319a4  06 10 a0 e1                                      mov r1, r6
006319a8  0b 20 a0 e1                                      mov r2, fp
006319ac  00 40 a0 e1                                      mov r4, r0
006319b0  80 03 8d e8                                      stm sp, {r7, r8, sb}
006319b4  f3 4e 00 eb                                      bl #0x645588
006319b8  00 00 54 e3                                      cmp r4, #0
006319bc  00 40 8a e5                                      str r4, [sl]
006319c0  04 30 94 15                                      ldrne r3, [r4, #4]
006319c4  0a 00 a0 e1                                      mov r0, sl
006319c8  01 30 83 12                                      addne r3, r3, #1
006319cc  04 30 84 15                                      strne r3, [r4, #4]
006319d0  24 d0 8d e2                                      add sp, sp, #0x24
006319d4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00631ac4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory13getEffectNameERKNS0_16CColladaDatabaseEPKcS6_
; demangled: glitch::collada::CColladaFactory::getEffectName(glitch::collada::CColladaDatabase const&, char const*, char const*)
; decoder-mode: arm
00631ac4  70 40 2d e9                                      push {r4, r5, r6, lr}
00631ac8  00 40 a0 e1                                      mov r4, r0
00631acc  10 00 84 e5                                      str r0, [r4, #0x10]
00631ad0  14 00 84 e5                                      str r0, [r4, #0x14]
00631ad4  03 00 a0 e1                                      mov r0, r3
00631ad8  03 50 a0 e1                                      mov r5, r3
00631adc  dc 70 f3 eb                                      bl #0x30de54
00631ae0  05 10 a0 e1                                      mov r1, r5
00631ae4  00 20 85 e0                                      add r2, r5, r0
00631ae8  04 00 a0 e1                                      mov r0, r4
00631aec  40 d1 f3 eb                                      bl #0x325ff4
00631af0  04 00 a0 e1                                      mov r0, r4
00631af4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00631af8, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory11createLightERKNS0_16CColladaDatabaseEPNS0_6SLightE
; demangled: glitch::collada::CColladaFactory::createLight(glitch::collada::CColladaDatabase const&, glitch::collada::SLight*)
; decoder-mode: arm
00631af8  70 40 2d e9                                      push {r4, r5, r6, lr}
00631afc  5b 0f a0 e3                                      mov r0, #0x16c
00631b00  01 50 a0 e1                                      mov r5, r1
00631b04  00 10 a0 e3                                      mov r1, #0
00631b08  02 60 a0 e1                                      mov r6, r2
00631b0c  a6 09 fc eb                                      bl #0x5341ac
00631b10  05 10 a0 e1                                      mov r1, r5
00631b14  00 40 a0 e1                                      mov r4, r0
00631b18  06 20 a0 e1                                      mov r2, r6
00631b1c  72 4a 00 eb                                      bl #0x6444ec
00631b20  04 00 a0 e1                                      mov r0, r4
00631b24  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00631b28, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory14createAnimatorERKNS0_16CColladaDatabaseEPNS0_22SLibraryAnimationClipsE
; demangled: glitch::collada::CColladaFactory::createAnimator(glitch::collada::CColladaDatabase const&, glitch::collada::SLibraryAnimationClips*)
; decoder-mode: arm
00631b28  70 40 2d e9                                      push {r4, r5, r6, lr}
00631b2c  60 00 a0 e3                                      mov r0, #0x60
00631b30  01 50 a0 e1                                      mov r5, r1
00631b34  00 10 a0 e3                                      mov r1, #0
00631b38  02 60 a0 e1                                      mov r6, r2
00631b3c  9a 09 fc eb                                      bl #0x5341ac
00631b40  05 10 a0 e1                                      mov r1, r5
00631b44  00 40 a0 e1                                      mov r4, r0
00631b48  06 20 a0 e1                                      mov r2, r6
00631b4c  21 b0 00 eb                                      bl #0x65dbd8
00631b50  04 00 a0 e1                                      mov r0, r4
00631b54  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006323d0, declared_size=244, range_size=244, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_9SMaterialEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createMaterial(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SMaterial*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
006323d0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006323d4  20 d0 4d e2                                      sub sp, sp, #0x20
006323d8  44 40 9d e5                                      ldr r4, [sp, #0x44]
006323dc  01 70 a0 e1                                      mov r7, r1
006323e0  02 80 a0 e1                                      mov r8, r2
006323e4  00 00 54 e3                                      cmp r4, #0
006323e8  03 a0 a0 e1                                      mov sl, r3
006323ec  00 50 a0 e1                                      mov r5, r0
006323f0  40 60 9d e5                                      ldr r6, [sp, #0x40]
006323f4  08 00 00 0a                                      beq #0x63241c
006323f8  04 10 a0 e1                                      mov r1, r4
006323fc  00 20 96 e5                                      ldr r2, [r6]
00632400  4c a4 00 eb                                      bl #0x65b538
00632404  00 30 95 e5                                      ldr r3, [r5]
00632408  00 00 53 e3                                      cmp r3, #0
0063240c  03 00 00 0a                                      beq #0x632420
00632410  05 00 a0 e1                                      mov r0, r5
00632414  20 d0 8d e2                                      add sp, sp, #0x20
00632418  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0063241c  00 40 80 e5                                      str r4, [r0]
00632420  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00632424  18 10 96 e5                                      ldr r1, [r6, #0x18]
00632428  08 30 96 e5                                      ldr r3, [r6, #8]
0063242c  01 20 82 e2                                      add r2, r2, #1
00632430  1e 00 8d e8                                      stm sp, {r1, r2, r3, r4}
00632434  1c 90 8d e2                                      add sb, sp, #0x1c
00632438  0a 30 a0 e1                                      mov r3, sl
0063243c  07 10 a0 e1                                      mov r1, r7
00632440  00 c0 97 e5                                      ldr ip, [r7]
00632444  09 00 a0 e1                                      mov r0, sb
00632448  08 20 a0 e1                                      mov r2, r8
0063244c  0f e0 a0 e1                                      mov lr, pc
00632450  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
00632454  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00632458  00 00 53 e3                                      cmp r3, #0
0063245c  15 00 00 0a                                      beq #0x6324b8
00632460  18 70 8d e2                                      add r7, sp, #0x18
00632464  0a 20 a0 e1                                      mov r2, sl
00632468  08 10 a0 e1                                      mov r1, r8
0063246c  07 00 a0 e1                                      mov r0, r7
00632470  09 30 a0 e1                                      mov r3, sb
00632474  00 60 8d e5                                      str r6, [sp]
00632478  04 40 8d e5                                      str r4, [sp, #4]
0063247c  19 fe ff eb                                      bl #0x631ce8
00632480  18 30 9d e5                                      ldr r3, [sp, #0x18]
00632484  20 00 8d e2                                      add r0, sp, #0x20
00632488  14 30 8d e5                                      str r3, [sp, #0x14]
0063248c  00 00 53 e3                                      cmp r3, #0
00632490  00 20 93 15                                      ldrne r2, [r3]
00632494  01 20 82 12                                      addne r2, r2, #1
00632498  00 20 83 15                                      strne r2, [r3]
0063249c  14 30 9d 15                                      ldrne r3, [sp, #0x14]
006324a0  00 20 95 e5                                      ldr r2, [r5]
006324a4  00 30 85 e5                                      str r3, [r5]
006324a8  0c 20 20 e5                                      str r2, [r0, #-0xc]!
006324ac  cd 79 f3 eb                                      bl #0x310be8
006324b0  07 00 a0 e1                                      mov r0, r7
006324b4  cb 79 f3 eb                                      bl #0x310be8
006324b8  09 00 a0 e1                                      mov r0, sb
006324bc  7d 7f f4 eb                                      bl #0x3522b8
006324c0  d2 ff ff ea                                      b #0x632410

; FUNCTION 0x00634520, declared_size=1152, range_size=1152, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory32createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb
; demangled: glitch::collada::CColladaFactory::createMaterialVertexAttributeMap(glitch::collada::CColladaDatabase const&, glitch::collada::SInstanceMaterial*, boost::intrusive_ptr<glitch::collada::IMesh> const&, boost::intrusive_ptr<glitch::video::CMaterial> const&, unsigned int, bool)
; decoder-mode: arm
00634520  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00634524  03 40 a0 e1                                      mov r4, r3
00634528  34 30 93 e5                                      ldr r3, [r3, #0x34]
0063452c  4c d0 4d e2                                      sub sp, sp, #0x4c
00634530  18 00 8d e5                                      str r0, [sp, #0x18]
00634534  00 00 53 e3                                      cmp r3, #0
00634538  44 30 8d e5                                      str r3, [sp, #0x44]
0063453c  00 10 93 15                                      ldrne r1, [r3]
00634540  02 60 a0 e1                                      mov r6, r2
00634544  7c 20 dd e5                                      ldrb r2, [sp, #0x7c]
00634548  01 10 81 12                                      addne r1, r1, #1
0063454c  00 10 83 15                                      strne r1, [r3]
00634550  34 30 94 15                                      ldrne r3, [r4, #0x34]
00634554  00 00 53 e3                                      cmp r3, #0
00634558  01 00 00 0a                                      beq #0x634564
0063455c  00 00 52 e3                                      cmp r2, #0
00634560  d1 00 00 0a                                      beq #0x6348ac
00634564  74 30 9d e5                                      ldr r3, [sp, #0x74]
00634568  00 30 93 e5                                      ldr r3, [r3]
0063456c  04 30 93 e5                                      ldr r3, [r3, #4]
00634570  00 00 53 e3                                      cmp r3, #0
00634574  40 30 8d e5                                      str r3, [sp, #0x40]
00634578  00 20 93 15                                      ldrne r2, [r3]
0063457c  01 20 82 12                                      addne r2, r2, #1
00634580  00 20 83 15                                      strne r2, [r3]
00634584  40 30 9d 15                                      ldrne r3, [sp, #0x40]
00634588  04 30 93 e5                                      ldr r3, [r3, #4]
0063458c  03 00 a0 e1                                      mov r0, r3
00634590  00 30 93 e5                                      ldr r3, [r3]
00634594  0f e0 a0 e1                                      mov lr, pc
00634598  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0063459c  07 00 10 e3                                      tst r0, #7
006345a0  1c 70 84 12                                      addne r7, r4, #0x1c
006345a4  02 00 00 1a                                      bne #0x6345b4
006345a8  18 00 10 e3                                      tst r0, #0x18
006345ac  24 70 84 12                                      addne r7, r4, #0x24
006345b0  df 00 00 0a                                      beq #0x634934
006345b4  40 20 8d e2                                      add r2, sp, #0x40
006345b8  3c 50 8d e2                                      add r5, sp, #0x3c
006345bc  02 10 a0 e1                                      mov r1, r2
006345c0  05 00 a0 e1                                      mov r0, r5
006345c4  1c 20 8d e5                                      str r2, [sp, #0x1c]
006345c8  5b ab fe eb                                      bl #0x5df33c
006345cc  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006345d0  00 00 52 e3                                      cmp r2, #0
006345d4  28 20 8d e5                                      str r2, [sp, #0x28]
006345d8  03 00 00 0a                                      beq #0x6345ec
006345dc  00 30 92 e5                                      ldr r3, [r2]
006345e0  01 30 83 e2                                      add r3, r3, #1
006345e4  00 30 82 e5                                      str r3, [r2]
006345e8  28 20 9d e5                                      ldr r2, [sp, #0x28]
006345ec  44 30 9d e5                                      ldr r3, [sp, #0x44]
006345f0  28 00 8d e2                                      add r0, sp, #0x28
006345f4  44 20 8d e5                                      str r2, [sp, #0x44]
006345f8  28 30 8d e5                                      str r3, [sp, #0x28]
006345fc  1a 17 fd eb                                      bl #0x57a26c
00634600  05 00 a0 e1                                      mov r0, r5
00634604  18 17 fd eb                                      bl #0x57a26c
00634608  34 30 94 e5                                      ldr r3, [r4, #0x34]
0063460c  00 00 53 e3                                      cmp r3, #0
00634610  d2 00 00 0a                                      beq #0x634960
00634614  70 30 9d e5                                      ldr r3, [sp, #0x70]
00634618  78 20 9d e5                                      ldr r2, [sp, #0x78]
0063461c  34 00 8d e2                                      add r0, sp, #0x34
00634620  00 30 93 e5                                      ldr r3, [r3]
00634624  03 10 a0 e1                                      mov r1, r3
00634628  00 30 93 e5                                      ldr r3, [r3]
0063462c  0f e0 a0 e1                                      mov lr, pc
00634630  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00634634  34 00 9d e5                                      ldr r0, [sp, #0x34]
00634638  14 30 90 e5                                      ldr r3, [r0, #0x14]
0063463c  00 00 53 e3                                      cmp r3, #0
00634640  38 30 8d e5                                      str r3, [sp, #0x38]
00634644  00 20 93 15                                      ldrne r2, [r3]
00634648  01 20 82 12                                      addne r2, r2, #1
0063464c  00 20 83 15                                      strne r2, [r3]
00634650  34 00 9d 15                                      ldrne r0, [sp, #0x34]
00634654  00 00 50 e3                                      cmp r0, #0
00634658  00 00 00 0a                                      beq #0x634660
0063465c  c8 a3 f3 eb                                      bl #0x31d584
00634660  00 c0 97 e5                                      ldr ip, [r7]
00634664  00 00 5c e3                                      cmp ip, #0
00634668  14 c0 8d e5                                      str ip, [sp, #0x14]
0063466c  38 80 8d d2                                      addle r8, sp, #0x38
00634670  42 00 00 da                                      ble #0x634780
00634674  00 60 a0 e3                                      mov r6, #0
00634678  30 20 8d e2                                      add r2, sp, #0x30
0063467c  10 60 8d e5                                      str r6, [sp, #0x10]
00634680  38 80 8d e2                                      add r8, sp, #0x38
00634684  0c 20 8d e5                                      str r2, [sp, #0xc]
00634688  04 30 97 e5                                      ldr r3, [r7, #4]
0063468c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00634690  06 10 93 e7                                      ldr r1, [r3, r6]
00634694  1e 80 fe eb                                      bl #0x5d4714
00634698  ff 00 50 e3                                      cmp r0, #0xff
0063469c  00 a0 a0 e1                                      mov sl, r0
006346a0  2f 00 00 0a                                      beq #0x634764
006346a4  04 30 97 e5                                      ldr r3, [r7, #4]
006346a8  06 30 83 e0                                      add r3, r3, r6
006346ac  04 90 93 e5                                      ldr sb, [r3, #4]
006346b0  00 00 59 e3                                      cmp sb, #0
006346b4  2a 00 00 da                                      ble #0x634764
006346b8  00 50 a0 e3                                      mov r5, #0
006346bc  05 40 a0 e1                                      mov r4, r5
006346c0  00 10 a0 e3                                      mov r1, #0
006346c4  24 00 a0 e3                                      mov r0, #0x24
006346c8  b7 fe fb eb                                      bl #0x5341ac
006346cc  08 10 a0 e1                                      mov r1, r8
006346d0  00 b0 a0 e1                                      mov fp, r0
006346d4  9f b0 fd eb                                      bl #0x5a0958
006346d8  00 00 5b e3                                      cmp fp, #0
006346dc  30 b0 8d e5                                      str fp, [sp, #0x30]
006346e0  00 30 9b 15                                      ldrne r3, [fp]
006346e4  0b 00 a0 01                                      moveq r0, fp
006346e8  00 c0 a0 e3                                      mov ip, #0
006346ec  01 30 83 12                                      addne r3, r3, #1
006346f0  00 30 8b 15                                      strne r3, [fp]
006346f4  04 30 97 e5                                      ldr r3, [r7, #4]
006346f8  30 00 9d 15                                      ldrne r0, [sp, #0x30]
006346fc  08 10 a0 e1                                      mov r1, r8
00634700  06 30 83 e0                                      add r3, r3, r6
00634704  08 20 93 e5                                      ldr r2, [r3, #8]
00634708  05 20 82 e0                                      add r2, r2, r5
0063470c  0c 00 92 e9                                      ldmib r2, {r2, r3}
00634710  00 c0 8d e5                                      str ip, [sp]
00634714  fb af fd eb                                      bl #0x5a0708
00634718  74 20 ef e6                                      uxtb r2, r4
0063471c  44 00 9d e5                                      ldr r0, [sp, #0x44]
00634720  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00634724  0a 10 a0 e1                                      mov r1, sl
00634728  39 ac fe eb                                      bl #0x5df814
0063472c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00634730  01 40 84 e2                                      add r4, r4, #1
00634734  0c 50 85 e2                                      add r5, r5, #0xc
00634738  00 00 53 e3                                      cmp r3, #0
0063473c  03 00 a0 e1                                      mov r0, r3
00634740  05 00 00 0a                                      beq #0x63475c
00634744  00 20 93 e5                                      ldr r2, [r3]
00634748  01 20 42 e2                                      sub r2, r2, #1
0063474c  00 00 52 e3                                      cmp r2, #0
00634750  00 20 83 e5                                      str r2, [r3]
00634754  00 00 00 1a                                      bne #0x63475c
00634758  d4 66 f3 eb                                      bl #0x30e2b0
0063475c  09 00 54 e1                                      cmp r4, sb
00634760  d6 ff ff 1a                                      bne #0x6346c0
00634764  10 20 9d e5                                      ldr r2, [sp, #0x10]
00634768  14 30 9d e5                                      ldr r3, [sp, #0x14]
0063476c  0c 60 86 e2                                      add r6, r6, #0xc
00634770  01 20 82 e2                                      add r2, r2, #1
00634774  03 00 52 e1                                      cmp r2, r3
00634778  10 20 8d e5                                      str r2, [sp, #0x10]
0063477c  c1 ff ff 1a                                      bne #0x634688
00634780  40 30 9d e5                                      ldr r3, [sp, #0x40]
00634784  00 60 a0 e3                                      mov r6, #0
00634788  2c 60 8d e5                                      str r6, [sp, #0x2c]
0063478c  10 20 d3 e5                                      ldrb r2, [r3, #0x10]
00634790  06 00 52 e1                                      cmp r2, r6
00634794  40 00 00 0a                                      beq #0x63489c
00634798  c5 ae 04 e3                                      movw sl, #0x4ec5
0063479c  0c 80 8d e5                                      str r8, [sp, #0xc]
006347a0  ec a4 4c e3                                      movt sl, #0xc4ec
006347a4  06 10 a0 e1                                      mov r1, r6
006347a8  06 90 a0 e1                                      mov sb, r6
006347ac  2c b0 8d e2                                      add fp, sp, #0x2c
006347b0  02 80 a0 e1                                      mov r8, r2
006347b4  18 30 93 e5                                      ldr r3, [r3, #0x18]
006347b8  06 30 83 e0                                      add r3, r3, r6
006347bc  04 70 d3 e5                                      ldrb r7, [r3, #4]
006347c0  00 00 57 e3                                      cmp r7, #0
006347c4  22 00 00 0a                                      beq #0x634854
006347c8  00 50 a0 e3                                      mov r5, #0
006347cc  05 40 a0 e1                                      mov r4, r5
006347d0  05 00 00 ea                                      b #0x6347ec
006347d4  01 40 84 e2                                      add r4, r4, #1
006347d8  74 40 ef e6                                      uxtb r4, r4
006347dc  07 00 54 e1                                      cmp r4, r7
006347e0  34 50 85 e2                                      add r5, r5, #0x34
006347e4  1a 00 00 0a                                      beq #0x634854
006347e8  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006347ec  44 00 9d e5                                      ldr r0, [sp, #0x44]
006347f0  04 30 90 e5                                      ldr r3, [r0, #4]
006347f4  18 20 93 e5                                      ldr r2, [r3, #0x18]
006347f8  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
006347fc  06 20 82 e0                                      add r2, r2, r6
00634800  08 20 92 e5                                      ldr r2, [r2, #8]
00634804  05 20 82 e0                                      add r2, r2, r5
00634808  02 30 63 e0                                      rsb r3, r3, r2
0063480c  43 31 a0 e1                                      asr r3, r3, #2
00634810  9a 03 03 e0                                      mul r3, sl, r3
00634814  03 31 80 e0                                      add r3, r0, r3, lsl #2
00634818  08 30 93 e5                                      ldr r3, [r3, #8]
0063481c  00 00 53 e3                                      cmp r3, #0
00634820  eb ff ff 1a                                      bne #0x6347d4
00634824  00 00 51 e3                                      cmp r1, #0
00634828  2b 00 00 0a                                      beq #0x6348dc
0063482c  04 20 a0 e1                                      mov r2, r4
00634830  01 40 84 e2                                      add r4, r4, #1
00634834  09 10 a0 e1                                      mov r1, sb
00634838  0b 30 a0 e1                                      mov r3, fp
0063483c  74 40 ef e6                                      uxtb r4, r4
00634840  f3 ab fe eb                                      bl #0x5df814
00634844  07 00 54 e1                                      cmp r4, r7
00634848  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0063484c  34 50 85 e2                                      add r5, r5, #0x34
00634850  e4 ff ff 1a                                      bne #0x6347e8
00634854  01 90 89 e2                                      add sb, sb, #1
00634858  79 90 ef e6                                      uxtb sb, sb
0063485c  08 00 59 e1                                      cmp sb, r8
00634860  0c 60 86 e2                                      add r6, r6, #0xc
00634864  02 00 00 0a                                      beq #0x634874
00634868  40 30 9d e5                                      ldr r3, [sp, #0x40]
0063486c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00634870  cf ff ff ea                                      b #0x6347b4
00634874  00 00 51 e3                                      cmp r1, #0
00634878  0c 80 9d e5                                      ldr r8, [sp, #0xc]
0063487c  06 00 00 0a                                      beq #0x63489c
00634880  00 30 91 e5                                      ldr r3, [r1]
00634884  01 30 43 e2                                      sub r3, r3, #1
00634888  00 00 53 e3                                      cmp r3, #0
0063488c  00 30 81 e5                                      str r3, [r1]
00634890  01 00 00 1a                                      bne #0x63489c
00634894  01 00 a0 e1                                      mov r0, r1
00634898  84 66 f3 eb                                      bl #0x30e2b0
0063489c  08 00 a0 e1                                      mov r0, r8
006348a0  ba a8 f4 eb                                      bl #0x35eb90
006348a4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006348a8  82 76 f4 eb                                      bl #0x3522b8
006348ac  44 30 9d e5                                      ldr r3, [sp, #0x44]
006348b0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006348b4  00 00 53 e3                                      cmp r3, #0
006348b8  00 30 8c e5                                      str r3, [ip]
006348bc  00 20 93 15                                      ldrne r2, [r3]
006348c0  01 20 82 12                                      addne r2, r2, #1
006348c4  00 20 83 15                                      strne r2, [r3]
006348c8  44 00 8d e2                                      add r0, sp, #0x44
006348cc  66 16 fd eb                                      bl #0x57a26c
006348d0  18 00 9d e5                                      ldr r0, [sp, #0x18]
006348d4  4c d0 8d e2                                      add sp, sp, #0x4c
006348d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006348dc  24 00 a0 e3                                      mov r0, #0x24
006348e0  31 fe fb eb                                      bl #0x5341ac
006348e4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006348e8  08 00 8d e5                                      str r0, [sp, #8]
006348ec  19 b0 fd eb                                      bl #0x5a0958
006348f0  08 30 9d e5                                      ldr r3, [sp, #8]
006348f4  00 00 53 e3                                      cmp r3, #0
006348f8  00 20 93 15                                      ldrne r2, [r3]
006348fc  01 20 82 12                                      addne r2, r2, #1
00634900  00 20 83 15                                      strne r2, [r3]
00634904  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00634908  2c 30 8d e5                                      str r3, [sp, #0x2c]
0063490c  00 00 50 e3                                      cmp r0, #0
00634910  05 00 00 0a                                      beq #0x63492c
00634914  00 30 90 e5                                      ldr r3, [r0]
00634918  01 30 43 e2                                      sub r3, r3, #1
0063491c  00 00 53 e3                                      cmp r3, #0
00634920  00 30 80 e5                                      str r3, [r0]
00634924  00 00 00 1a                                      bne #0x63492c
00634928  60 66 f3 eb                                      bl #0x30e2b0
0063492c  44 00 9d e5                                      ldr r0, [sp, #0x44]
00634930  bd ff ff ea                                      b #0x63482c
00634934  60 00 10 e3                                      tst r0, #0x60
00634938  14 70 84 12                                      addne r7, r4, #0x14
0063493c  1c ff ff 1a                                      bne #0x6345b4
00634940  03 0c 10 e2                                      ands r0, r0, #0x300
00634944  2c 70 84 12                                      addne r7, r4, #0x2c
00634948  19 ff ff 1a                                      bne #0x6345b4
0063494c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00634950  00 00 83 e5                                      str r0, [r3]
00634954  40 00 8d e2                                      add r0, sp, #0x40
00634958  56 76 f4 eb                                      bl #0x3522b8
0063495c  d9 ff ff ea                                      b #0x6348c8
00634960  44 20 9d e5                                      ldr r2, [sp, #0x44]
00634964  48 00 8d e2                                      add r0, sp, #0x48
00634968  24 20 8d e5                                      str r2, [sp, #0x24]
0063496c  00 00 52 e3                                      cmp r2, #0
00634970  00 30 92 15                                      ldrne r3, [r2]
00634974  01 30 83 12                                      addne r3, r3, #1
00634978  00 30 82 15                                      strne r3, [r2]
0063497c  34 30 94 15                                      ldrne r3, [r4, #0x34]
00634980  24 20 9d e5                                      ldr r2, [sp, #0x24]
00634984  24 30 20 e5                                      str r3, [r0, #-0x24]!
00634988  34 20 84 e5                                      str r2, [r4, #0x34]
0063498c  36 16 fd eb                                      bl #0x57a26c
00634990  06 00 a0 e1                                      mov r0, r6
00634994  04 10 a0 e1                                      mov r1, r4
00634998  3b 66 ff eb                                      bl #0x60e28c
0063499c  1c ff ff ea                                      b #0x634614

; FUNCTION 0x00634c64, declared_size=2876, range_size=2876, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory20createParticleSystemERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_8SEmitterEPNS_3res6vectorINSA_6StringEEEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createParticleSystem(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SEmitter*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00634c64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00634c68  66 0f a0 e3                                      mov r0, #0x198
00634c6c  6c d0 4d e2                                      sub sp, sp, #0x6c
00634c70  01 80 a0 e1                                      mov r8, r1
00634c74  00 10 a0 e3                                      mov r1, #0
00634c78  03 60 a0 e1                                      mov r6, r3
00634c7c  02 70 a0 e1                                      mov r7, r2
00634c80  49 fd fb eb                                      bl #0x5341ac
00634c84  94 c0 9d e5                                      ldr ip, [sp, #0x94]
00634c88  90 30 9d e5                                      ldr r3, [sp, #0x90]
00634c8c  08 10 a0 e1                                      mov r1, r8
00634c90  06 20 a0 e1                                      mov r2, r6
00634c94  00 40 a0 e1                                      mov r4, r0
00634c98  00 c0 8d e5                                      str ip, [sp]
00634c9c  3c 68 00 eb                                      bl #0x64ed94
00634ca0  50 30 96 e5                                      ldr r3, [r6, #0x50]
00634ca4  e8 5a 9f e5                                      ldr r5, [pc, #0xae8]
00634ca8  00 00 53 e3                                      cmp r3, #0
00634cac  05 50 8f e0                                      add r5, pc, r5
00634cb0  3f 00 00 1a                                      bne #0x634db4
00634cb4  54 30 96 e5                                      ldr r3, [r6, #0x54]
00634cb8  00 30 93 e5                                      ldr r3, [r3]
00634cbc  01 30 43 e2                                      sub r3, r3, #1
00634cc0  06 00 53 e3                                      cmp r3, #6
00634cc4  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00634cc8  36 00 00 ea                                      b #0x634da8
00634ccc  9e 00 00 ea                                      b #0x634f4c
00634cd0  c8 00 00 ea                                      b #0x634ff8
00634cd4  03 00 00 ea                                      b #0x634ce8
00634cd8  02 00 00 ea                                      b #0x634ce8
00634cdc  31 00 00 ea                                      b #0x634da8
00634ce0  30 00 00 ea                                      b #0x634da8
00634ce4  6a 00 00 ea                                      b #0x634e94
00634ce8  00 30 94 e5                                      ldr r3, [r4]
00634cec  01 20 a0 e3                                      mov r2, #1
00634cf0  07 10 a0 e1                                      mov r1, r7
00634cf4  04 00 a0 e1                                      mov r0, r4
00634cf8  0f e0 a0 e1                                      mov lr, pc
00634cfc  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
00634d00  54 30 96 e5                                      ldr r3, [r6, #0x54]
00634d04  04 50 93 e5                                      ldr r5, [r3, #4]
00634d08  08 20 93 e5                                      ldr r2, [r3, #8]
00634d0c  00 00 55 e3                                      cmp r5, #0
00634d10  24 00 00 0a                                      beq #0x634da8
00634d14  02 00 52 e3                                      cmp r2, #2
00634d18  8f 02 00 0a                                      beq #0x63575c
00634d1c  03 00 52 e3                                      cmp r2, #3
00634d20  83 02 00 0a                                      beq #0x635734
00634d24  01 00 52 e3                                      cmp r2, #1
00634d28  1e 00 00 1a                                      bne #0x634da8
00634d2c  02 00 15 e3                                      tst r5, #2
00634d30  0c 00 00 0a                                      beq #0x634d68
00634d34  78 01 94 e5                                      ldr r0, [r4, #0x178]
00634d38  0c c0 93 e5                                      ldr ip, [r3, #0xc]
00634d3c  00 10 a0 e3                                      mov r1, #0
00634d40  00 e0 90 e5                                      ldr lr, [r0]
00634d44  3c 20 8d e2                                      add r2, sp, #0x3c
00634d48  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
00634d4c  3c c0 8d e5                                      str ip, [sp, #0x3c]
00634d50  10 c0 93 e5                                      ldr ip, [r3, #0x10]
00634d54  0e 00 80 e0                                      add r0, r0, lr
00634d58  40 c0 8d e5                                      str ip, [sp, #0x40]
00634d5c  14 30 93 e5                                      ldr r3, [r3, #0x14]
00634d60  44 30 8d e5                                      str r3, [sp, #0x44]
00634d64  10 ef ff eb                                      bl #0x6309ac
00634d68  04 00 15 e3                                      tst r5, #4
00634d6c  0d 00 00 0a                                      beq #0x634da8
00634d70  54 30 96 e5                                      ldr r3, [r6, #0x54]
00634d74  78 01 94 e5                                      ldr r0, [r4, #0x178]
00634d78  01 10 a0 e3                                      mov r1, #1
00634d7c  18 c0 93 e5                                      ldr ip, [r3, #0x18]
00634d80  00 e0 90 e5                                      ldr lr, [r0]
00634d84  30 20 8d e2                                      add r2, sp, #0x30
00634d88  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
00634d8c  30 c0 8d e5                                      str ip, [sp, #0x30]
00634d90  1c c0 93 e5                                      ldr ip, [r3, #0x1c]
00634d94  0e 00 80 e0                                      add r0, r0, lr
00634d98  34 c0 8d e5                                      str ip, [sp, #0x34]
00634d9c  20 30 93 e5                                      ldr r3, [r3, #0x20]
00634da0  38 30 8d e5                                      str r3, [sp, #0x38]
00634da4  00 ef ff eb                                      bl #0x6309ac
00634da8  04 00 a0 e1                                      mov r0, r4
00634dac  6c d0 8d e2                                      add sp, sp, #0x6c
00634db0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00634db4  02 00 53 e3                                      cmp r3, #2
00634db8  fa ff ff 1a                                      bne #0x634da8
00634dbc  54 30 96 e5                                      ldr r3, [r6, #0x54]
00634dc0  08 10 a0 e1                                      mov r1, r8
00634dc4  50 00 8d e2                                      add r0, sp, #0x50
00634dc8  04 30 93 e5                                      ldr r3, [r3, #4]
00634dcc  07 20 a0 e1                                      mov r2, r7
00634dd0  04 30 93 e5                                      ldr r3, [r3, #4]
00634dd4  01 30 83 e2                                      add r3, r3, #1
00634dd8  32 97 ff eb                                      bl #0x61aaa8
00634ddc  50 50 9d e5                                      ldr r5, [sp, #0x50]
00634de0  00 00 55 e3                                      cmp r5, #0
00634de4  05 60 a0 01                                      moveq r6, r5
00634de8  07 00 00 0a                                      beq #0x634e0c
00634dec  04 30 95 e5                                      ldr r3, [r5, #4]
00634df0  05 60 a0 e1                                      mov r6, r5
00634df4  01 30 83 e2                                      add r3, r3, #1
00634df8  04 30 85 e5                                      str r3, [r5, #4]
00634dfc  50 00 9d e5                                      ldr r0, [sp, #0x50]
00634e00  00 00 50 e3                                      cmp r0, #0
00634e04  00 00 00 0a                                      beq #0x634e0c
00634e08  dd a1 f3 eb                                      bl #0x31d584
00634e0c  05 10 a0 e1                                      mov r1, r5
00634e10  4c 00 8d e2                                      add r0, sp, #0x4c
00634e14  00 20 a0 e3                                      mov r2, #0
00634e18  00 30 95 e5                                      ldr r3, [r5]
00634e1c  0f e0 a0 e1                                      mov lr, pc
00634e20  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00634e24  07 10 a0 e1                                      mov r1, r7
00634e28  00 30 94 e5                                      ldr r3, [r4]
00634e2c  04 00 a0 e1                                      mov r0, r4
00634e30  00 20 a0 e3                                      mov r2, #0
00634e34  0f e0 a0 e1                                      mov lr, pc
00634e38  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
00634e3c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00634e40  00 30 94 e5                                      ldr r3, [r4]
00634e44  04 00 a0 e1                                      mov r0, r4
00634e48  00 00 52 e3                                      cmp r2, #0
00634e4c  00 31 93 e5                                      ldr r3, [r3, #0x100]
00634e50  48 20 8d e5                                      str r2, [sp, #0x48]
00634e54  04 10 92 15                                      ldrne r1, [r2, #4]
00634e58  01 10 81 12                                      addne r1, r1, #1
00634e5c  04 10 82 15                                      strne r1, [r2, #4]
00634e60  48 10 8d e2                                      add r1, sp, #0x48
00634e64  33 ff 2f e1                                      blx r3
00634e68  48 00 9d e5                                      ldr r0, [sp, #0x48]
00634e6c  00 00 50 e3                                      cmp r0, #0
00634e70  00 00 00 0a                                      beq #0x634e78
00634e74  c2 a1 f3 eb                                      bl #0x31d584
00634e78  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00634e7c  00 00 50 e3                                      cmp r0, #0
00634e80  00 00 00 0a                                      beq #0x634e88
00634e84  be a1 f3 eb                                      bl #0x31d584
00634e88  06 00 a0 e1                                      mov r0, r6
00634e8c  bc a1 f3 eb                                      bl #0x31d584
00634e90  c4 ff ff ea                                      b #0x634da8
00634e94  06 18 a0 e3                                      mov r1, #0x60000
00634e98  0f c0 a0 e3                                      mov ip, #0xf
00634e9c  03 10 81 e2                                      add r1, r1, #3
00634ea0  fe 35 a0 e3                                      mov r3, #0x3f800000
00634ea4  58 00 8d e2                                      add r0, sp, #0x58
00634ea8  07 20 a0 e1                                      mov r2, r7
00634eac  04 c0 8d e5                                      str ip, [sp, #4]
00634eb0  00 c0 8d e5                                      str ip, [sp]
00634eb4  53 8a 02 eb                                      bl #0x6d7808
00634eb8  58 30 9d e5                                      ldr r3, [sp, #0x58]
00634ebc  4c 00 8d e2                                      add r0, sp, #0x4c
00634ec0  00 20 a0 e3                                      mov r2, #0
00634ec4  03 10 a0 e1                                      mov r1, r3
00634ec8  00 30 93 e5                                      ldr r3, [r3]
00634ecc  0f e0 a0 e1                                      mov lr, pc
00634ed0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00634ed4  07 10 a0 e1                                      mov r1, r7
00634ed8  00 30 94 e5                                      ldr r3, [r4]
00634edc  04 00 a0 e1                                      mov r0, r4
00634ee0  00 20 a0 e3                                      mov r2, #0
00634ee4  0f e0 a0 e1                                      mov lr, pc
00634ee8  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
00634eec  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00634ef0  00 30 94 e5                                      ldr r3, [r4]
00634ef4  04 00 a0 e1                                      mov r0, r4
00634ef8  00 00 52 e3                                      cmp r2, #0
00634efc  00 31 93 e5                                      ldr r3, [r3, #0x100]
00634f00  54 20 8d e5                                      str r2, [sp, #0x54]
00634f04  04 10 92 15                                      ldrne r1, [r2, #4]
00634f08  01 10 81 12                                      addne r1, r1, #1
00634f0c  04 10 82 15                                      strne r1, [r2, #4]
00634f10  54 10 8d e2                                      add r1, sp, #0x54
00634f14  33 ff 2f e1                                      blx r3
00634f18  54 00 9d e5                                      ldr r0, [sp, #0x54]
00634f1c  00 00 50 e3                                      cmp r0, #0
00634f20  00 00 00 0a                                      beq #0x634f28
00634f24  96 a1 f3 eb                                      bl #0x31d584
00634f28  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00634f2c  00 00 50 e3                                      cmp r0, #0
00634f30  00 00 00 0a                                      beq #0x634f38
00634f34  92 a1 f3 eb                                      bl #0x31d584
00634f38  58 00 9d e5                                      ldr r0, [sp, #0x58]
00634f3c  00 00 50 e3                                      cmp r0, #0
00634f40  98 ff ff 0a                                      beq #0x634da8
00634f44  8e a1 f3 eb                                      bl #0x31d584
00634f48  96 ff ff ea                                      b #0x634da8
00634f4c  06 18 a0 e3                                      mov r1, #0x60000
00634f50  03 10 81 e2                                      add r1, r1, #3
00634f54  fe 35 a0 e3                                      mov r3, #0x3f800000
00634f58  4c 00 8d e2                                      add r0, sp, #0x4c
00634f5c  07 20 a0 e1                                      mov r2, r7
00634f60  53 8f 02 eb                                      bl #0x6d8cb4
00634f64  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00634f68  58 00 8d e2                                      add r0, sp, #0x58
00634f6c  00 20 a0 e3                                      mov r2, #0
00634f70  03 10 a0 e1                                      mov r1, r3
00634f74  00 30 93 e5                                      ldr r3, [r3]
00634f78  0f e0 a0 e1                                      mov lr, pc
00634f7c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00634f80  07 10 a0 e1                                      mov r1, r7
00634f84  00 30 94 e5                                      ldr r3, [r4]
00634f88  04 00 a0 e1                                      mov r0, r4
00634f8c  00 20 a0 e3                                      mov r2, #0
00634f90  0f e0 a0 e1                                      mov lr, pc
00634f94  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
00634f98  58 20 9d e5                                      ldr r2, [sp, #0x58]
00634f9c  00 30 94 e5                                      ldr r3, [r4]
00634fa0  04 00 a0 e1                                      mov r0, r4
00634fa4  00 00 52 e3                                      cmp r2, #0
00634fa8  00 31 93 e5                                      ldr r3, [r3, #0x100]
00634fac  64 20 8d e5                                      str r2, [sp, #0x64]
00634fb0  04 10 92 15                                      ldrne r1, [r2, #4]
00634fb4  01 10 81 12                                      addne r1, r1, #1
00634fb8  04 10 82 15                                      strne r1, [r2, #4]
00634fbc  64 10 8d e2                                      add r1, sp, #0x64
00634fc0  33 ff 2f e1                                      blx r3
00634fc4  64 00 9d e5                                      ldr r0, [sp, #0x64]
00634fc8  00 00 50 e3                                      cmp r0, #0
00634fcc  00 00 00 0a                                      beq #0x634fd4
00634fd0  6b a1 f3 eb                                      bl #0x31d584
00634fd4  58 00 9d e5                                      ldr r0, [sp, #0x58]
00634fd8  00 00 50 e3                                      cmp r0, #0
00634fdc  00 00 00 0a                                      beq #0x634fe4
00634fe0  67 a1 f3 eb                                      bl #0x31d584
00634fe4  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00634fe8  00 00 50 e3                                      cmp r0, #0
00634fec  6d ff ff 0a                                      beq #0x634da8
00634ff0  63 a1 f3 eb                                      bl #0x31d584
00634ff4  6b ff ff ea                                      b #0x634da8
00634ff8  98 37 9f e5                                      ldr r3, [pc, #0x798]
00634ffc  48 20 a0 e3                                      mov r2, #0x48
00635000  00 20 8d e5                                      str r2, [sp]
00635004  03 30 8f e0                                      add r3, pc, r3
00635008  04 30 8d e5                                      str r3, [sp, #4]
0063500c  00 30 a0 e3                                      mov r3, #0
00635010  08 30 8d e5                                      str r3, [sp, #8]
00635014  00 c0 97 e5                                      ldr ip, [r7]
00635018  04 30 a0 e3                                      mov r3, #4
0063501c  01 20 a0 e3                                      mov r2, #1
00635020  60 00 8d e2                                      add r0, sp, #0x60
00635024  07 10 a0 e1                                      mov r1, r7
00635028  0f e0 a0 e1                                      mov lr, pc
0063502c  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00635030  60 80 9d e5                                      ldr r8, [sp, #0x60]
00635034  00 10 a0 e3                                      mov r1, #0
00635038  38 00 a0 e3                                      mov r0, #0x38
0063503c  00 00 58 e3                                      cmp r8, #0
00635040  04 30 98 15                                      ldrne r3, [r8, #4]
00635044  01 30 83 12                                      addne r3, r3, #1
00635048  04 30 88 15                                      strne r3, [r8, #4]
0063504c  56 fc fb eb                                      bl #0x5341ac
00635050  44 27 9f e5                                      ldr r2, [pc, #0x744]
00635054  00 30 a0 e3                                      mov r3, #0
00635058  06 18 a0 e3                                      mov r1, #0x60000
0063505c  02 20 95 e7                                      ldr r2, [r5, r2]
00635060  00 60 a0 e1                                      mov r6, r0
00635064  10 30 80 e5                                      str r3, [r0, #0x10]
00635068  08 20 82 e2                                      add r2, r2, #8
0063506c  04 30 80 e5                                      str r3, [r0, #4]
00635070  08 30 80 e5                                      str r3, [r0, #8]
00635074  0c 30 80 e5                                      str r3, [r0, #0xc]
00635078  00 20 80 e5                                      str r2, [r0]
0063507c  03 10 81 e2                                      add r1, r1, #3
00635080  14 00 80 e2                                      add r0, r0, #0x14
00635084  b4 b0 fd eb                                      bl #0x5a135c
00635088  00 00 58 e3                                      cmp r8, #0
0063508c  18 80 86 e5                                      str r8, [r6, #0x18]
00635090  04 30 98 15                                      ldrne r3, [r8, #4]
00635094  24 10 a0 e3                                      mov r1, #0x24
00635098  01 00 a0 e3                                      mov r0, #1
0063509c  01 30 83 12                                      addne r3, r3, #1
006350a0  04 30 88 15                                      strne r3, [r8, #4]
006350a4  04 20 96 e5                                      ldr r2, [r6, #4]
006350a8  20 10 86 e5                                      str r1, [r6, #0x20]
006350ac  18 10 a0 e3                                      mov r1, #0x18
006350b0  00 30 a0 e3                                      mov r3, #0
006350b4  01 20 82 e2                                      add r2, r2, #1
006350b8  28 10 86 e5                                      str r1, [r6, #0x28]
006350bc  00 00 58 e3                                      cmp r8, #0
006350c0  06 10 a0 e3                                      mov r1, #6
006350c4  34 30 c6 e5                                      strb r3, [r6, #0x34]
006350c8  04 20 86 e5                                      str r2, [r6, #4]
006350cc  1c 30 86 e5                                      str r3, [r6, #0x1c]
006350d0  24 30 86 e5                                      str r3, [r6, #0x24]
006350d4  bc 02 c6 e1                                      strh r0, [r6, #0x2c]
006350d8  be 12 c6 e1                                      strh r1, [r6, #0x2e]
006350dc  30 30 86 e5                                      str r3, [r6, #0x30]
006350e0  01 00 00 0a                                      beq #0x6350ec
006350e4  08 00 a0 e1                                      mov r0, r8
006350e8  25 a1 f3 eb                                      bl #0x31d584
006350ec  60 00 9d e5                                      ldr r0, [sp, #0x60]
006350f0  00 00 50 e3                                      cmp r0, #0
006350f4  00 00 00 0a                                      beq #0x6350fc
006350f8  21 a1 f3 eb                                      bl #0x31d584
006350fc  14 20 96 e5                                      ldr r2, [r6, #0x14]
00635100  00 90 a0 e3                                      mov sb, #0
00635104  01 80 a0 e3                                      mov r8, #1
00635108  58 50 8d e2                                      add r5, sp, #0x58
0063510c  14 20 8d e5                                      str r2, [sp, #0x14]
00635110  08 80 8d e5                                      str r8, [sp, #8]
00635114  00 90 8d e5                                      str sb, [sp]
00635118  04 90 8d e5                                      str sb, [sp, #4]
0063511c  00 c0 97 e5                                      ldr ip, [r7]
00635120  04 30 a0 e3                                      mov r3, #4
00635124  05 00 a0 e1                                      mov r0, r5
00635128  07 10 a0 e1                                      mov r1, r7
0063512c  09 20 a0 e1                                      mov r2, sb
00635130  0f e0 a0 e1                                      mov lr, pc
00635134  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00635138  05 10 a0 e1                                      mov r1, r5
0063513c  00 20 e0 e3                                      mvn r2, #0
00635140  14 00 9d e5                                      ldr r0, [sp, #0x14]
00635144  1d b1 fd eb                                      bl #0x5a15c0
00635148  18 30 a0 e3                                      mov r3, #0x18
0063514c  93 00 05 e0                                      mul r5, r3, r0
00635150  09 10 a0 e1                                      mov r1, sb
00635154  05 00 a0 e1                                      mov r0, r5
00635158  58 a0 9d e5                                      ldr sl, [sp, #0x58]
0063515c  11 fc fb eb                                      bl #0x5341a8
00635160  08 30 a0 e1                                      mov r3, r8
00635164  00 20 a0 e1                                      mov r2, r0
00635168  05 10 a0 e1                                      mov r1, r5
0063516c  0a 00 a0 e1                                      mov r0, sl
00635170  cf b2 fd eb                                      bl #0x5a1cb4
00635174  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00635178  04 10 a0 e3                                      mov r1, #4
0063517c  00 50 a0 e3                                      mov r5, #0
00635180  24 00 9c e5                                      ldr r0, [ip, #0x24]
00635184  19 b2 fd eb                                      bl #0x5a19f0
00635188  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0063518c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00635190  14 20 9d e5                                      ldr r2, [sp, #0x14]
00635194  24 e0 8e e2                                      add lr, lr, #0x24
00635198  18 e0 8d e5                                      str lr, [sp, #0x18]
0063519c  04 30 9e e5                                      ldr r3, [lr, #4]
006351a0  14 80 81 e2                                      add r8, r1, #0x14
006351a4  04 10 a0 e3                                      mov r1, #4
006351a8  03 30 80 e0                                      add r3, r0, r3
006351ac  1c 30 8d e5                                      str r3, [sp, #0x1c]
006351b0  14 00 92 e5                                      ldr r0, [r2, #0x14]
006351b4  0d b2 fd eb                                      bl #0x5a19f0
006351b8  04 10 98 e5                                      ldr r1, [r8, #4]
006351bc  bf c4 a0 e3                                      mov ip, #0xbf000000
006351c0  3f 24 a0 e3                                      mov r2, #0x3f000000
006351c4  01 30 80 e0                                      add r3, r0, r1
006351c8  01 c0 80 e7                                      str ip, [r0, r1]
006351cc  04 c0 83 e5                                      str ip, [r3, #4]
006351d0  08 50 83 e5                                      str r5, [r3, #8]
006351d4  be 00 d8 e1                                      ldrh r0, [r8, #0xe]
006351d8  06 e0 a0 e3                                      mov lr, #6
006351dc  bf b4 a0 e3                                      mov fp, #0xbf000000
006351e0  00 10 83 e0                                      add r1, r3, r0
006351e4  00 c0 83 e7                                      str ip, [r3, r0]
006351e8  04 20 81 e5                                      str r2, [r1, #4]
006351ec  08 50 81 e5                                      str r5, [r1, #8]
006351f0  be 00 d8 e1                                      ldrh r0, [r8, #0xe]
006351f4  02 b5 8b e2                                      add fp, fp, #0x800000
006351f8  80 10 83 e0                                      add r1, r3, r0, lsl #1
006351fc  80 20 83 e7                                      str r2, [r3, r0, lsl #1]
00635200  04 20 81 e5                                      str r2, [r1, #4]
00635204  08 50 81 e5                                      str r5, [r1, #8]
00635208  be 00 d8 e1                                      ldrh r0, [r8, #0xe]
0063520c  80 00 80 e0                                      add r0, r0, r0, lsl #1
00635210  00 10 83 e0                                      add r1, r3, r0
00635214  00 20 83 e7                                      str r2, [r3, r0]
00635218  04 c0 81 e5                                      str ip, [r1, #4]
0063521c  08 50 81 e5                                      str r5, [r1, #8]
00635220  be 00 d8 e1                                      ldrh r0, [r8, #0xe]
00635224  00 11 83 e0                                      add r1, r3, r0, lsl #2
00635228  00 c1 83 e7                                      str ip, [r3, r0, lsl #2]
0063522c  04 c0 81 e5                                      str ip, [r1, #4]
00635230  08 50 81 e5                                      str r5, [r1, #8]
00635234  be 00 d8 e1                                      ldrh r0, [r8, #0xe]
00635238  00 01 80 e0                                      add r0, r0, r0, lsl #2
0063523c  00 10 83 e0                                      add r1, r3, r0
00635240  00 c0 83 e7                                      str ip, [r3, r0]
00635244  04 20 81 e5                                      str r2, [r1, #4]
00635248  08 50 81 e5                                      str r5, [r1, #8]
0063524c  be 00 d8 e1                                      ldrh r0, [r8, #0xe]
00635250  9e 00 00 e0                                      mul r0, lr, r0
00635254  00 10 83 e0                                      add r1, r3, r0
00635258  00 20 83 e7                                      str r2, [r3, r0]
0063525c  04 20 81 e5                                      str r2, [r1, #4]
00635260  08 50 81 e5                                      str r5, [r1, #8]
00635264  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
00635268  07 10 a0 e3                                      mov r1, #7
0063526c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00635270  91 0e 0e e0                                      mul lr, r1, lr
00635274  34 a0 80 e2                                      add sl, r0, #0x34
00635278  0e 00 83 e0                                      add r0, r3, lr
0063527c  0e 20 83 e7                                      str r2, [r3, lr]
00635280  04 c0 80 e5                                      str ip, [r0, #4]
00635284  08 50 80 e5                                      str r5, [r0, #8]
00635288  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
0063528c  04 10 a0 e3                                      mov r1, #4
00635290  8e 01 83 e0                                      add r0, r3, lr, lsl #3
00635294  8e c1 83 e7                                      str ip, [r3, lr, lsl #3]
00635298  08 c0 80 e5                                      str ip, [r0, #8]
0063529c  04 50 80 e5                                      str r5, [r0, #4]
006352a0  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
006352a4  8e e1 8e e0                                      add lr, lr, lr, lsl #3
006352a8  0e 00 83 e0                                      add r0, r3, lr
006352ac  0e c0 83 e7                                      str ip, [r3, lr]
006352b0  08 20 80 e5                                      str r2, [r0, #8]
006352b4  04 50 80 e5                                      str r5, [r0, #4]
006352b8  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
006352bc  0a 00 a0 e3                                      mov r0, #0xa
006352c0  90 0e 0e e0                                      mul lr, r0, lr
006352c4  0e 00 83 e0                                      add r0, r3, lr
006352c8  0e 20 83 e7                                      str r2, [r3, lr]
006352cc  08 20 80 e5                                      str r2, [r0, #8]
006352d0  04 50 80 e5                                      str r5, [r0, #4]
006352d4  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
006352d8  0b 00 a0 e3                                      mov r0, #0xb
006352dc  90 0e 0e e0                                      mul lr, r0, lr
006352e0  0e 00 83 e0                                      add r0, r3, lr
006352e4  0e 20 83 e7                                      str r2, [r3, lr]
006352e8  08 c0 80 e5                                      str ip, [r0, #8]
006352ec  04 50 80 e5                                      str r5, [r0, #4]
006352f0  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
006352f4  0c 00 a0 e3                                      mov r0, #0xc
006352f8  90 0e 0e e0                                      mul lr, r0, lr
006352fc  0e 00 83 e0                                      add r0, r3, lr
00635300  0e c0 83 e7                                      str ip, [r3, lr]
00635304  08 c0 80 e5                                      str ip, [r0, #8]
00635308  04 50 80 e5                                      str r5, [r0, #4]
0063530c  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
00635310  0d 00 a0 e3                                      mov r0, #0xd
00635314  90 0e 0e e0                                      mul lr, r0, lr
00635318  0e 00 83 e0                                      add r0, r3, lr
0063531c  0e c0 83 e7                                      str ip, [r3, lr]
00635320  08 20 80 e5                                      str r2, [r0, #8]
00635324  04 50 80 e5                                      str r5, [r0, #4]
00635328  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
0063532c  0e 00 a0 e3                                      mov r0, #0xe
00635330  90 0e 0e e0                                      mul lr, r0, lr
00635334  0e 00 83 e0                                      add r0, r3, lr
00635338  0e 20 83 e7                                      str r2, [r3, lr]
0063533c  08 20 80 e5                                      str r2, [r0, #8]
00635340  04 50 80 e5                                      str r5, [r0, #4]
00635344  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
00635348  0f 00 a0 e3                                      mov r0, #0xf
0063534c  90 0e 0e e0                                      mul lr, r0, lr
00635350  0e 00 83 e0                                      add r0, r3, lr
00635354  0e 20 83 e7                                      str r2, [r3, lr]
00635358  08 c0 80 e5                                      str ip, [r0, #8]
0063535c  04 50 80 e5                                      str r5, [r0, #4]
00635360  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
00635364  0e 02 83 e0                                      add r0, r3, lr, lsl #4
00635368  0e 52 83 e7                                      str r5, [r3, lr, lsl #4]
0063536c  04 c0 80 e5                                      str ip, [r0, #4]
00635370  08 c0 80 e5                                      str ip, [r0, #8]
00635374  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
00635378  0e e2 8e e0                                      add lr, lr, lr, lsl #4
0063537c  0e 00 83 e0                                      add r0, r3, lr
00635380  0e 50 83 e7                                      str r5, [r3, lr]
00635384  04 c0 80 e5                                      str ip, [r0, #4]
00635388  08 20 80 e5                                      str r2, [r0, #8]
0063538c  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
00635390  12 00 a0 e3                                      mov r0, #0x12
00635394  90 0e 0e e0                                      mul lr, r0, lr
00635398  0e 00 83 e0                                      add r0, r3, lr
0063539c  0e 50 83 e7                                      str r5, [r3, lr]
006353a0  08 20 80 e5                                      str r2, [r0, #8]
006353a4  04 20 80 e5                                      str r2, [r0, #4]
006353a8  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
006353ac  13 00 a0 e3                                      mov r0, #0x13
006353b0  90 0e 0e e0                                      mul lr, r0, lr
006353b4  0e 00 83 e0                                      add r0, r3, lr
006353b8  0e 50 83 e7                                      str r5, [r3, lr]
006353bc  08 c0 80 e5                                      str ip, [r0, #8]
006353c0  04 20 80 e5                                      str r2, [r0, #4]
006353c4  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
006353c8  14 00 a0 e3                                      mov r0, #0x14
006353cc  90 0e 0e e0                                      mul lr, r0, lr
006353d0  0e 00 83 e0                                      add r0, r3, lr
006353d4  0e 50 83 e7                                      str r5, [r3, lr]
006353d8  08 c0 80 e5                                      str ip, [r0, #8]
006353dc  04 c0 80 e5                                      str ip, [r0, #4]
006353e0  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
006353e4  15 00 a0 e3                                      mov r0, #0x15
006353e8  90 0e 0e e0                                      mul lr, r0, lr
006353ec  0e 00 83 e0                                      add r0, r3, lr
006353f0  0e 50 83 e7                                      str r5, [r3, lr]
006353f4  04 c0 80 e5                                      str ip, [r0, #4]
006353f8  08 20 80 e5                                      str r2, [r0, #8]
006353fc  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
00635400  16 00 a0 e3                                      mov r0, #0x16
00635404  90 0e 0e e0                                      mul lr, r0, lr
00635408  0e 00 83 e0                                      add r0, r3, lr
0063540c  0e 50 83 e7                                      str r5, [r3, lr]
00635410  08 20 80 e5                                      str r2, [r0, #8]
00635414  04 20 80 e5                                      str r2, [r0, #4]
00635418  be e0 d8 e1                                      ldrh lr, [r8, #0xe]
0063541c  17 00 a0 e3                                      mov r0, #0x17
00635420  90 0e 0e e0                                      mul lr, r0, lr
00635424  0e 00 83 e0                                      add r0, r3, lr
00635428  0e 50 83 e7                                      str r5, [r3, lr]
0063542c  08 c0 80 e5                                      str ip, [r0, #8]
00635430  04 20 80 e5                                      str r2, [r0, #4]
00635434  14 20 9d e5                                      ldr r2, [sp, #0x14]
00635438  34 00 92 e5                                      ldr r0, [r2, #0x34]
0063543c  6b b1 fd eb                                      bl #0x5a19f0
00635440  04 20 9a e5                                      ldr r2, [sl, #4]
00635444  fe c5 a0 e3                                      mov ip, #0x3f800000
00635448  07 10 a0 e1                                      mov r1, r7
0063544c  02 30 80 e0                                      add r3, r0, r2
00635450  02 50 80 e7                                      str r5, [r0, r2]
00635454  08 c0 83 e5                                      str ip, [r3, #8]
00635458  04 50 83 e5                                      str r5, [r3, #4]
0063545c  be 00 da e1                                      ldrh r0, [sl, #0xe]
00635460  09 20 a0 e1                                      mov r2, sb
00635464  00 e0 83 e0                                      add lr, r3, r0
00635468  00 50 83 e7                                      str r5, [r3, r0]
0063546c  08 c0 8e e5                                      str ip, [lr, #8]
00635470  04 50 8e e5                                      str r5, [lr, #4]
00635474  be 70 da e1                                      ldrh r7, [sl, #0xe]
00635478  04 00 a0 e1                                      mov r0, r4
0063547c  87 e0 83 e0                                      add lr, r3, r7, lsl #1
00635480  87 50 83 e7                                      str r5, [r3, r7, lsl #1]
00635484  08 c0 8e e5                                      str ip, [lr, #8]
00635488  04 50 8e e5                                      str r5, [lr, #4]
0063548c  be 70 da e1                                      ldrh r7, [sl, #0xe]
00635490  87 70 87 e0                                      add r7, r7, r7, lsl #1
00635494  07 e0 83 e0                                      add lr, r3, r7
00635498  07 50 83 e7                                      str r5, [r3, r7]
0063549c  08 c0 8e e5                                      str ip, [lr, #8]
006354a0  04 50 8e e5                                      str r5, [lr, #4]
006354a4  be 70 da e1                                      ldrh r7, [sl, #0xe]
006354a8  07 e1 83 e0                                      add lr, r3, r7, lsl #2
006354ac  07 51 83 e7                                      str r5, [r3, r7, lsl #2]
006354b0  08 b0 8e e5                                      str fp, [lr, #8]
006354b4  04 50 8e e5                                      str r5, [lr, #4]
006354b8  be 70 da e1                                      ldrh r7, [sl, #0xe]
006354bc  07 71 87 e0                                      add r7, r7, r7, lsl #2
006354c0  07 e0 83 e0                                      add lr, r3, r7
006354c4  07 50 83 e7                                      str r5, [r3, r7]
006354c8  08 b0 8e e5                                      str fp, [lr, #8]
006354cc  04 50 8e e5                                      str r5, [lr, #4]
006354d0  be 70 da e1                                      ldrh r7, [sl, #0xe]
006354d4  06 e0 a0 e3                                      mov lr, #6
006354d8  9e 07 07 e0                                      mul r7, lr, r7
006354dc  07 e0 83 e0                                      add lr, r3, r7
006354e0  07 50 83 e7                                      str r5, [r3, r7]
006354e4  08 b0 8e e5                                      str fp, [lr, #8]
006354e8  04 50 8e e5                                      str r5, [lr, #4]
006354ec  be 70 da e1                                      ldrh r7, [sl, #0xe]
006354f0  07 e0 a0 e3                                      mov lr, #7
006354f4  9e 07 07 e0                                      mul r7, lr, r7
006354f8  07 e0 83 e0                                      add lr, r3, r7
006354fc  07 50 83 e7                                      str r5, [r3, r7]
00635500  08 b0 8e e5                                      str fp, [lr, #8]
00635504  04 50 8e e5                                      str r5, [lr, #4]
00635508  be 70 da e1                                      ldrh r7, [sl, #0xe]
0063550c  87 e1 83 e0                                      add lr, r3, r7, lsl #3
00635510  87 51 83 e7                                      str r5, [r3, r7, lsl #3]
00635514  04 c0 8e e5                                      str ip, [lr, #4]
00635518  08 50 8e e5                                      str r5, [lr, #8]
0063551c  be 70 da e1                                      ldrh r7, [sl, #0xe]
00635520  87 71 87 e0                                      add r7, r7, r7, lsl #3
00635524  07 e0 83 e0                                      add lr, r3, r7
00635528  07 50 83 e7                                      str r5, [r3, r7]
0063552c  04 c0 8e e5                                      str ip, [lr, #4]
00635530  08 50 8e e5                                      str r5, [lr, #8]
00635534  be 70 da e1                                      ldrh r7, [sl, #0xe]
00635538  0a e0 a0 e3                                      mov lr, #0xa
0063553c  9e 07 07 e0                                      mul r7, lr, r7
00635540  07 e0 83 e0                                      add lr, r3, r7
00635544  07 50 83 e7                                      str r5, [r3, r7]
00635548  04 c0 8e e5                                      str ip, [lr, #4]
0063554c  08 50 8e e5                                      str r5, [lr, #8]
00635550  be 70 da e1                                      ldrh r7, [sl, #0xe]
00635554  0b e0 a0 e3                                      mov lr, #0xb
00635558  9e 07 07 e0                                      mul r7, lr, r7
0063555c  07 e0 83 e0                                      add lr, r3, r7
00635560  07 50 83 e7                                      str r5, [r3, r7]
00635564  04 c0 8e e5                                      str ip, [lr, #4]
00635568  08 50 8e e5                                      str r5, [lr, #8]
0063556c  be 70 da e1                                      ldrh r7, [sl, #0xe]
00635570  0c e0 a0 e3                                      mov lr, #0xc
00635574  9e 07 07 e0                                      mul r7, lr, r7
00635578  07 e0 83 e0                                      add lr, r3, r7
0063557c  07 50 83 e7                                      str r5, [r3, r7]
00635580  04 b0 8e e5                                      str fp, [lr, #4]
00635584  08 50 8e e5                                      str r5, [lr, #8]
00635588  be 70 da e1                                      ldrh r7, [sl, #0xe]
0063558c  0d e0 a0 e3                                      mov lr, #0xd
00635590  9e 07 07 e0                                      mul r7, lr, r7
00635594  07 e0 83 e0                                      add lr, r3, r7
00635598  07 50 83 e7                                      str r5, [r3, r7]
0063559c  04 b0 8e e5                                      str fp, [lr, #4]
006355a0  08 50 8e e5                                      str r5, [lr, #8]
006355a4  be 70 da e1                                      ldrh r7, [sl, #0xe]
006355a8  0e e0 a0 e3                                      mov lr, #0xe
006355ac  9e 07 07 e0                                      mul r7, lr, r7
006355b0  07 e0 83 e0                                      add lr, r3, r7
006355b4  07 50 83 e7                                      str r5, [r3, r7]
006355b8  04 b0 8e e5                                      str fp, [lr, #4]
006355bc  08 50 8e e5                                      str r5, [lr, #8]
006355c0  be 70 da e1                                      ldrh r7, [sl, #0xe]
006355c4  0f e0 a0 e3                                      mov lr, #0xf
006355c8  9e 07 07 e0                                      mul r7, lr, r7
006355cc  07 e0 83 e0                                      add lr, r3, r7
006355d0  07 50 83 e7                                      str r5, [r3, r7]
006355d4  04 b0 8e e5                                      str fp, [lr, #4]
006355d8  08 50 8e e5                                      str r5, [lr, #8]
006355dc  be 70 da e1                                      ldrh r7, [sl, #0xe]
006355e0  07 e2 83 e0                                      add lr, r3, r7, lsl #4
006355e4  07 c2 83 e7                                      str ip, [r3, r7, lsl #4]
006355e8  04 50 8e e5                                      str r5, [lr, #4]
006355ec  08 50 8e e5                                      str r5, [lr, #8]
006355f0  be 70 da e1                                      ldrh r7, [sl, #0xe]
006355f4  07 72 87 e0                                      add r7, r7, r7, lsl #4
006355f8  07 e0 83 e0                                      add lr, r3, r7
006355fc  07 c0 83 e7                                      str ip, [r3, r7]
00635600  08 50 8e e5                                      str r5, [lr, #8]
00635604  04 50 8e e5                                      str r5, [lr, #4]
00635608  be 70 da e1                                      ldrh r7, [sl, #0xe]
0063560c  12 e0 a0 e3                                      mov lr, #0x12
00635610  9e 07 07 e0                                      mul r7, lr, r7
00635614  07 e0 83 e0                                      add lr, r3, r7
00635618  07 c0 83 e7                                      str ip, [r3, r7]
0063561c  08 50 8e e5                                      str r5, [lr, #8]
00635620  04 50 8e e5                                      str r5, [lr, #4]
00635624  be 70 da e1                                      ldrh r7, [sl, #0xe]
00635628  13 e0 a0 e3                                      mov lr, #0x13
0063562c  9e 07 07 e0                                      mul r7, lr, r7
00635630  07 e0 83 e0                                      add lr, r3, r7
00635634  07 c0 83 e7                                      str ip, [r3, r7]
00635638  08 50 8e e5                                      str r5, [lr, #8]
0063563c  04 50 8e e5                                      str r5, [lr, #4]
00635640  be e0 da e1                                      ldrh lr, [sl, #0xe]
00635644  14 c0 a0 e3                                      mov ip, #0x14
00635648  9c 0e 0e e0                                      mul lr, ip, lr
0063564c  0e c0 83 e0                                      add ip, r3, lr
00635650  0e b0 83 e7                                      str fp, [r3, lr]
00635654  08 50 8c e5                                      str r5, [ip, #8]
00635658  04 50 8c e5                                      str r5, [ip, #4]
0063565c  be e0 da e1                                      ldrh lr, [sl, #0xe]
00635660  15 c0 a0 e3                                      mov ip, #0x15
00635664  9c 0e 0e e0                                      mul lr, ip, lr
00635668  0e c0 83 e0                                      add ip, r3, lr
0063566c  0e b0 83 e7                                      str fp, [r3, lr]
00635670  08 50 8c e5                                      str r5, [ip, #8]
00635674  04 50 8c e5                                      str r5, [ip, #4]
00635678  be e0 da e1                                      ldrh lr, [sl, #0xe]
0063567c  16 c0 a0 e3                                      mov ip, #0x16
00635680  9c 0e 0e e0                                      mul lr, ip, lr
00635684  0e c0 83 e0                                      add ip, r3, lr
00635688  0e b0 83 e7                                      str fp, [r3, lr]
0063568c  08 50 8c e5                                      str r5, [ip, #8]
00635690  04 50 8c e5                                      str r5, [ip, #4]
00635694  be e0 da e1                                      ldrh lr, [sl, #0xe]
00635698  17 c0 a0 e3                                      mov ip, #0x17
0063569c  9c 0e 0e e0                                      mul lr, ip, lr
006356a0  0e c0 83 e0                                      add ip, r3, lr
006356a4  0e b0 83 e7                                      str fp, [r3, lr]
006356a8  08 50 8c e5                                      str r5, [ip, #8]
006356ac  04 50 8c e5                                      str r5, [ip, #4]
006356b0  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006356b4  18 30 a0 e3                                      mov r3, #0x18
006356b8  08 30 8e e5                                      str r3, [lr, #8]
006356bc  00 30 94 e5                                      ldr r3, [r4]
006356c0  0f e0 a0 e1                                      mov lr, pc
006356c4  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
006356c8  00 30 94 e5                                      ldr r3, [r4]
006356cc  68 10 8d e2                                      add r1, sp, #0x68
006356d0  04 00 a0 e1                                      mov r0, r4
006356d4  00 31 93 e5                                      ldr r3, [r3, #0x100]
006356d8  0c 60 21 e5                                      str r6, [r1, #-0xc]!
006356dc  04 20 96 e5                                      ldr r2, [r6, #4]
006356e0  01 20 82 e2                                      add r2, r2, #1
006356e4  04 20 86 e5                                      str r2, [r6, #4]
006356e8  33 ff 2f e1                                      blx r3
006356ec  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006356f0  09 00 50 e1                                      cmp r0, sb
006356f4  00 00 00 0a                                      beq #0x6356fc
006356f8  a1 9f f3 eb                                      bl #0x31d584
006356fc  0a 00 a0 e1                                      mov r0, sl
00635700  c4 e9 ff eb                                      bl #0x62fe18
00635704  08 00 a0 e1                                      mov r0, r8
00635708  c2 e9 ff eb                                      bl #0x62fe18
0063570c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00635710  00 00 5c e3                                      cmp ip, #0
00635714  01 00 00 0a                                      beq #0x635720
00635718  18 00 9d e5                                      ldr r0, [sp, #0x18]
0063571c  bd e9 ff eb                                      bl #0x62fe18
00635720  58 00 9d e5                                      ldr r0, [sp, #0x58]
00635724  00 00 50 e3                                      cmp r0, #0
00635728  d6 fd ff 0a                                      beq #0x634e88
0063572c  94 9f f3 eb                                      bl #0x31d584
00635730  d4 fd ff ea                                      b #0x634e88
00635734  78 31 94 e5                                      ldr r3, [r4, #0x178]
00635738  01 20 a0 e3                                      mov r2, #1
0063573c  00 10 93 e5                                      ldr r1, [r3]
00635740  0c 10 11 e5                                      ldr r1, [r1, #-0xc]
00635744  01 30 83 e0                                      add r3, r3, r1
00635748  00 10 a0 e3                                      mov r1, #0
0063574c  05 20 c3 e5                                      strb r2, [r3, #5]
00635750  04 10 c3 e5                                      strb r1, [r3, #4]
00635754  20 20 c3 e5                                      strb r2, [r3, #0x20]
00635758  92 fd ff ea                                      b #0x634da8
0063575c  78 01 94 e5                                      ldr r0, [r4, #0x178]
00635760  18 c0 93 e5                                      ldr ip, [r3, #0x18]
00635764  01 10 a0 e3                                      mov r1, #1
00635768  00 e0 90 e5                                      ldr lr, [r0]
0063576c  24 20 8d e2                                      add r2, sp, #0x24
00635770  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
00635774  24 c0 8d e5                                      str ip, [sp, #0x24]
00635778  1c c0 93 e5                                      ldr ip, [r3, #0x1c]
0063577c  0e 00 80 e0                                      add r0, r0, lr
00635780  28 c0 8d e5                                      str ip, [sp, #0x28]
00635784  20 30 93 e5                                      ldr r3, [r3, #0x20]
00635788  2c 30 8d e5                                      str r3, [sp, #0x2c]
0063578c  86 ec ff eb                                      bl #0x6309ac
00635790  84 fd ff ea                                      b #0x634da8
; mapping-symbol data/literal pool
00635794  e4 fd 35 00 fc 67 36 00 54 0c 00 00              .byte 0xe4, 0xfd, 0x35, 0x00, 0xfc, 0x67, 0x36, 0x00, 0x54, 0x0c, 0x00, 0x00

; FUNCTION 0x00636c8c, declared_size=412, range_size=412, mode=arm
; class-group: glitch::collada::CColladaFactory
; alias: _ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE
; demangled: glitch::collada::CColladaFactory::createMaterialRenderer(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SEffect*, char const*, char const*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00636c8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00636c90  7c 41 9f e5                                      ldr r4, [pc, #0x17c]
00636c94  7c 51 9f e5                                      ldr r5, [pc, #0x17c]
00636c98  3c d0 4d e2                                      sub sp, sp, #0x3c
00636c9c  04 40 8f e0                                      add r4, pc, r4
00636ca0  05 c0 94 e7                                      ldr ip, [r4, r5]
00636ca4  60 90 9d e5                                      ldr sb, [sp, #0x60]
00636ca8  00 70 a0 e1                                      mov r7, r0
00636cac  00 00 9c e5                                      ldr r0, [ip]
00636cb0  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
00636cb4  00 00 59 e3                                      cmp sb, #0
00636cb8  03 80 a0 e1                                      mov r8, r3
00636cbc  34 00 8d e5                                      str r0, [sp, #0x34]
00636cc0  01 60 a0 e1                                      mov r6, r1
00636cc4  02 b0 a0 e1                                      mov fp, r2
00636cc8  64 30 9d e5                                      ldr r3, [sp, #0x64]
00636ccc  68 00 9d e5                                      ldr r0, [sp, #0x68]
00636cd0  08 c0 8d e5                                      str ip, [sp, #8]
00636cd4  43 00 00 0a                                      beq #0x636de8
00636cd8  00 00 8d e5                                      str r0, [sp]
00636cdc  1c a0 8d e2                                      add sl, sp, #0x1c
00636ce0  00 c0 91 e5                                      ldr ip, [r1]
00636ce4  0a 00 a0 e1                                      mov r0, sl
00636ce8  0f e0 a0 e1                                      mov lr, pc
00636cec  14 f0 9c e5                                      ldr pc, [ip, #0x14]
00636cf0  dc 00 98 e5                                      ldr r0, [r8, #0xdc]
00636cf4  30 10 9d e5                                      ldr r1, [sp, #0x30]
00636cf8  f1 8a fe eb                                      bl #0x5d98c4
00636cfc  ff 3f 0f e3                                      movw r3, #0xffff
00636d00  03 00 50 e1                                      cmp r0, r3
00636d04  1e 00 00 0a                                      beq #0x636d84
00636d08  dc 30 98 e5                                      ldr r3, [r8, #0xdc]
00636d0c  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00636d10  18 30 93 e5                                      ldr r3, [r3, #0x18]
00636d14  02 20 63 e0                                      rsb r2, r3, r2
00636d18  c2 01 50 e1                                      cmp r0, r2, asr #3
00636d1c  80 01 83 30                                      addlo r0, r3, r0, lsl #3
00636d20  14 00 00 2a                                      bhs #0x636d78
00636d24  00 30 90 e5                                      ldr r3, [r0]
00636d28  00 00 53 e3                                      cmp r3, #0
00636d2c  00 30 87 e5                                      str r3, [r7]
00636d30  02 00 00 0a                                      beq #0x636d40
00636d34  00 20 93 e5                                      ldr r2, [r3]
00636d38  01 20 82 e2                                      add r2, r2, #1
00636d3c  00 20 83 e5                                      str r2, [r3]
00636d40  30 00 9d e5                                      ldr r0, [sp, #0x30]
00636d44  0a 00 50 e1                                      cmp r0, sl
00636d48  02 00 00 0a                                      beq #0x636d58
00636d4c  00 00 50 e3                                      cmp r0, #0
00636d50  00 00 00 0a                                      beq #0x636d58
00636d54  bd 65 f3 eb                                      bl #0x310450
00636d58  05 30 94 e7                                      ldr r3, [r4, r5]
00636d5c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00636d60  07 00 a0 e1                                      mov r0, r7
00636d64  00 30 93 e5                                      ldr r3, [r3]
00636d68  03 00 52 e1                                      cmp r2, r3
00636d6c  27 00 00 1a                                      bne #0x636e10
00636d70  3c d0 8d e2                                      add sp, sp, #0x3c
00636d74  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00636d78  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00636d7c  03 00 94 e7                                      ldr r0, [r4, r3]
00636d80  e7 ff ff ea                                      b #0x636d24
00636d84  14 30 8d e2                                      add r3, sp, #0x14
00636d88  0b 10 a0 e1                                      mov r1, fp
00636d8c  09 20 a0 e1                                      mov r2, sb
00636d90  03 00 a0 e1                                      mov r0, r3
00636d94  0c 30 8d e5                                      str r3, [sp, #0xc]
00636d98  0e eb ff eb                                      bl #0x6319d8
00636d9c  06 00 a0 e1                                      mov r0, r6
00636da0  09 20 a0 e1                                      mov r2, sb
00636da4  0b 10 a0 e1                                      mov r1, fp
00636da8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00636dac  00 c0 96 e5                                      ldr ip, [r6]
00636db0  0f e0 a0 e1                                      mov lr, pc
00636db4  10 f0 9c e5                                      ldr pc, [ip, #0x10]
00636db8  08 c0 9d e5                                      ldr ip, [sp, #8]
00636dbc  07 00 a0 e1                                      mov r0, r7
00636dc0  0b 10 a0 e1                                      mov r1, fp
00636dc4  04 c0 8d e5                                      str ip, [sp, #4]
00636dc8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00636dcc  08 20 a0 e1                                      mov r2, r8
00636dd0  30 30 9d e5                                      ldr r3, [sp, #0x30]
00636dd4  00 c0 8d e5                                      str ip, [sp]
00636dd8  63 ff ff eb                                      bl #0x636b6c
00636ddc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00636de0  25 eb ff eb                                      bl #0x631a7c
00636de4  d5 ff ff ea                                      b #0x636d40
00636de8  30 10 9f e5                                      ldr r1, [pc, #0x30]
00636dec  03 00 a0 e3                                      mov r0, #3
00636df0  01 10 8f e0                                      add r1, pc, r1
00636df4  8e 50 ff eb                                      bl #0x60b034
00636df8  24 20 9f e5                                      ldr r2, [pc, #0x24]
00636dfc  dc 10 98 e5                                      ldr r1, [r8, #0xdc]
00636e00  07 00 a0 e1                                      mov r0, r7
00636e04  02 20 8f e0                                      add r2, pc, r2
00636e08  c6 9b fe eb                                      bl #0x5ddd28
00636e0c  d1 ff ff ea                                      b #0x636d58
00636e10  3e 5d f3 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00636e14  f4 dd 35 00 ac 40 00 00 dc 30 00 00 68 e2 2a 00  .byte 0xf4, 0xdd, 0x35, 0x00, 0xac, 0x40, 0x00, 0x00, 0xdc, 0x30, 0x00, 0x00, 0x68, 0xe2, 0x2a, 0x00
00636e24  8c e2 2a 00                                      .byte 0x8c, 0xe2, 0x2a, 0x00
