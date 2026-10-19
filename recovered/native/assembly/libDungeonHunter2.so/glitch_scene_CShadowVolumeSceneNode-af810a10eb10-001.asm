; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006fe854, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZNK6glitch5scene22CShadowVolumeSceneNode7getTypeEv
; demangled: glitch::scene::CShadowVolumeSceneNode::getType() const
; decoder-mode: arm
006fe854  73 08 06 e3                                      movw r0, #0x6873
006fe858  64 07 47 e3                                      movt r0, #0x7764
006fe85c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fe938, declared_size=60, range_size=60, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode13setShadowMeshERKN5boost13intrusive_ptrIKNS0_5IMeshEEE
; demangled: glitch::scene::CShadowVolumeSceneNode::setShadowMesh(boost::intrusive_ptr<glitch::scene::IMesh const> const&)
; decoder-mode: arm
006fe938  10 40 2d e9                                      push {r4, lr}
006fe93c  00 30 91 e5                                      ldr r3, [r1]
006fe940  00 40 a0 e1                                      mov r4, r0
006fe944  00 00 53 e3                                      cmp r3, #0
006fe948  04 20 93 15                                      ldrne r2, [r3, #4]
006fe94c  01 20 82 12                                      addne r2, r2, #1
006fe950  04 20 83 15                                      strne r2, [r3, #4]
006fe954  58 01 90 e5                                      ldr r0, [r0, #0x158]
006fe958  58 31 84 e5                                      str r3, [r4, #0x158]
006fe95c  00 00 50 e3                                      cmp r0, #0
006fe960  00 00 00 0a                                      beq #0x6fe968
006fe964  06 7b f0 eb                                      bl #0x31d584
006fe968  01 30 a0 e3                                      mov r3, #1
006fe96c  85 31 c4 e5                                      strb r3, [r4, #0x185]
006fe970  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006fe974, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode4loadEPNS_2io9IReadFileE
; demangled: glitch::scene::CShadowVolumeSceneNode::load(glitch::io::IReadFile*)
; decoder-mode: arm
006fe974  00 00 a0 e3                                      mov r0, #0
006fe978  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fe97c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZNK6glitch5scene22CShadowVolumeSceneNode14getBoundingBoxEv
; demangled: glitch::scene::CShadowVolumeSceneNode::getBoundingBox() const
; decoder-mode: arm
006fe97c  5a 0f 80 e2                                      add r0, r0, #0x168
006fe980  1e ff 2f e1                                      bx lr

; FUNCTION 0x006fe984, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode13SetBiasFactorEf
; demangled: glitch::scene::CShadowVolumeSceneNode::SetBiasFactor(float)
; decoder-mode: arm
006fe984  88 11 80 e5                                      str r1, [r0, #0x188]
006fe988  1e ff 2f e1                                      bx lr

; FUNCTION 0x006feaa0, declared_size=472, range_size=472, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode18getProjectedVertexERKNS_4core8vector3dIfEES6_NS_5video12E_LIGHT_TYPEEb
; demangled: glitch::scene::CShadowVolumeSceneNode::getProjectedVertex(glitch::core::vector3d<float> const&, glitch::core::vector3d<float> const&, glitch::video::E_LIGHT_TYPE, bool)
; decoder-mode: arm
006feaa0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006feaa4  24 d0 4d e2                                      sub sp, sp, #0x24
006feaa8  01 70 a0 e1                                      mov r7, r1
006feaac  48 10 9d e5                                      ldr r1, [sp, #0x48]
006feab0  03 40 a0 e1                                      mov r4, r3
006feab4  00 50 a0 e1                                      mov r5, r0
006feab8  02 00 51 e3                                      cmp r1, #2
006feabc  02 60 a0 e1                                      mov r6, r2
006feac0  4c 30 dd e5                                      ldrb r3, [sp, #0x4c]
006feac4  43 00 00 0a                                      beq #0x6febd8
006feac8  00 00 53 e3                                      cmp r3, #0
006feacc  50 00 00 1a                                      bne #0x6fec14
006fead0  00 90 92 e5                                      ldr sb, [r2]
006fead4  00 00 94 e5                                      ldr r0, [r4]
006fead8  09 10 a0 e1                                      mov r1, sb
006feadc  32 3e f0 eb                                      bl #0x30e3ac
006feae0  04 a0 96 e5                                      ldr sl, [r6, #4]
006feae4  00 b0 a0 e1                                      mov fp, r0
006feae8  04 00 94 e5                                      ldr r0, [r4, #4]
006feaec  0a 10 a0 e1                                      mov r1, sl
006feaf0  2d 3e f0 eb                                      bl #0x30e3ac
006feaf4  00 00 8d e5                                      str r0, [sp]
006feaf8  08 80 96 e5                                      ldr r8, [r6, #8]
006feafc  08 00 94 e5                                      ldr r0, [r4, #8]
006feb00  08 10 a0 e1                                      mov r1, r8
006feb04  28 3e f0 eb                                      bl #0x30e3ac
006feb08  04 00 8d e5                                      str r0, [sp, #4]
006feb0c  80 41 97 e5                                      ldr r4, [r7, #0x180]
006feb10  0b 10 a0 e1                                      mov r1, fp
006feb14  04 00 a0 e1                                      mov r0, r4
006feb18  93 40 f0 eb                                      bl #0x30ed6c
006feb1c  00 10 a0 e1                                      mov r1, r0
006feb20  09 00 a0 e1                                      mov r0, sb
006feb24  20 3e f0 eb                                      bl #0x30e3ac
006feb28  00 00 85 e5                                      str r0, [r5]
006feb2c  00 10 9d e5                                      ldr r1, [sp]
006feb30  04 00 a0 e1                                      mov r0, r4
006feb34  8c 40 f0 eb                                      bl #0x30ed6c
006feb38  00 10 a0 e1                                      mov r1, r0
006feb3c  0a 00 a0 e1                                      mov r0, sl
006feb40  19 3e f0 eb                                      bl #0x30e3ac
006feb44  04 00 85 e5                                      str r0, [r5, #4]
006feb48  04 10 9d e5                                      ldr r1, [sp, #4]
006feb4c  04 00 a0 e1                                      mov r0, r4
006feb50  85 40 f0 eb                                      bl #0x30ed6c
006feb54  00 10 a0 e1                                      mov r1, r0
006feb58  08 00 a0 e1                                      mov r0, r8
006feb5c  12 3e f0 eb                                      bl #0x30e3ac
006feb60  08 00 85 e5                                      str r0, [r5, #8]
006feb64  4c 41 97 e5                                      ldr r4, [r7, #0x14c]
006feb68  50 31 97 e5                                      ldr r3, [r7, #0x150]
006feb6c  03 00 54 e1                                      cmp r4, r3
006feb70  15 00 00 0a                                      beq #0x6febcc
006feb74  00 30 a0 e3                                      mov r3, #0
006feb78  08 80 8d e2                                      add r8, sp, #8
006feb7c  10 30 8d e5                                      str r3, [sp, #0x10]
006feb80  08 30 8d e5                                      str r3, [sp, #8]
006feb84  0c 30 8d e5                                      str r3, [sp, #0xc]
006feb88  04 00 a0 e1                                      mov r0, r4
006feb8c  06 10 a0 e1                                      mov r1, r6
006feb90  05 20 a0 e1                                      mov r2, r5
006feb94  08 30 a0 e1                                      mov r3, r8
006feb98  45 41 f4 eb                                      bl #0x40f0b4
006feb9c  00 00 50 e3                                      cmp r0, #0
006feba0  10 40 84 e2                                      add r4, r4, #0x10
006feba4  05 00 00 0a                                      beq #0x6febc0
006feba8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006febac  10 30 9d e5                                      ldr r3, [sp, #0x10]
006febb0  08 10 9d e5                                      ldr r1, [sp, #8]
006febb4  04 20 85 e5                                      str r2, [r5, #4]
006febb8  08 30 85 e5                                      str r3, [r5, #8]
006febbc  00 10 85 e5                                      str r1, [r5]
006febc0  50 31 97 e5                                      ldr r3, [r7, #0x150]
006febc4  03 00 54 e1                                      cmp r4, r3
006febc8  ee ff ff 1a                                      bne #0x6feb88
006febcc  05 00 a0 e1                                      mov r0, r5
006febd0  24 d0 8d e2                                      add sp, sp, #0x24
006febd4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006febd8  04 00 92 e5                                      ldr r0, [r2, #4]
006febdc  04 10 94 e5                                      ldr r1, [r4, #4]
006febe0  f1 3d f0 eb                                      bl #0x30e3ac
006febe4  08 10 94 e5                                      ldr r1, [r4, #8]
006febe8  00 a0 a0 e1                                      mov sl, r0
006febec  08 00 96 e5                                      ldr r0, [r6, #8]
006febf0  ed 3d f0 eb                                      bl #0x30e3ac
006febf4  00 10 94 e5                                      ldr r1, [r4]
006febf8  00 80 a0 e1                                      mov r8, r0
006febfc  00 00 96 e5                                      ldr r0, [r6]
006fec00  e9 3d f0 eb                                      bl #0x30e3ac
006fec04  04 a0 85 e5                                      str sl, [r5, #4]
006fec08  00 00 85 e5                                      str r0, [r5]
006fec0c  08 80 85 e5                                      str r8, [r5, #8]
006fec10  d3 ff ff ea                                      b #0x6feb64
006fec14  04 10 92 e5                                      ldr r1, [r2, #4]
006fec18  04 00 94 e5                                      ldr r0, [r4, #4]
006fec1c  e2 3d f0 eb                                      bl #0x30e3ac
006fec20  08 10 96 e5                                      ldr r1, [r6, #8]
006fec24  00 a0 a0 e1                                      mov sl, r0
006fec28  08 00 94 e5                                      ldr r0, [r4, #8]
006fec2c  de 3d f0 eb                                      bl #0x30e3ac
006fec30  00 10 96 e5                                      ldr r1, [r6]
006fec34  00 80 a0 e1                                      mov r8, r0
006fec38  00 00 94 e5                                      ldr r0, [r4]
006fec3c  da 3d f0 eb                                      bl #0x30e3ac
006fec40  14 00 8d e5                                      str r0, [sp, #0x14]
006fec44  14 00 8d e2                                      add r0, sp, #0x14
006fec48  18 a0 8d e5                                      str sl, [sp, #0x18]
006fec4c  1c 80 8d e5                                      str r8, [sp, #0x1c]
006fec50  22 7f f1 eb                                      bl #0x35e8e0
006fec54  08 30 90 e5                                      ldr r3, [r0, #8]
006fec58  04 30 8d e5                                      str r3, [sp, #4]
006fec5c  00 b0 90 e5                                      ldr fp, [r0]
006fec60  04 00 90 e5                                      ldr r0, [r0, #4]
006fec64  00 00 8d e5                                      str r0, [sp]
006fec68  00 90 96 e5                                      ldr sb, [r6]
006fec6c  04 a0 96 e5                                      ldr sl, [r6, #4]
006fec70  08 80 96 e5                                      ldr r8, [r6, #8]
006fec74  a4 ff ff ea                                      b #0x6feb0c

; FUNCTION 0x006fec78, declared_size=3280, range_size=3280, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode26createFacingTriangleVolumeERKNS_5video16CPrimitiveStream10SMapBufferIKtEEjRKNS_4core8vector3dIfEENS2_12E_LIGHT_TYPEEPNS1_13SShadowVolumeEb
; demangled: glitch::scene::CShadowVolumeSceneNode::createFacingTriangleVolume(glitch::video::CPrimitiveStream::SMapBuffer<unsigned short const> const&, unsigned int, glitch::core::vector3d<float> const&, glitch::video::E_LIGHT_TYPE, glitch::scene::CShadowVolumeSceneNode::SShadowVolume*, bool)
; decoder-mode: arm
006fec78  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006fec7c  00 50 a0 e1                                      mov r5, r0
006fec80  41 df 4d e2                                      sub sp, sp, #0x104
006fec84  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
006fec88  44 10 8d e5                                      str r1, [sp, #0x44]
006fec8c  30 11 dd e5                                      ldrb r1, [sp, #0x130]
006fec90  00 00 50 e3                                      cmp r0, #0
006fec94  40 20 8d e5                                      str r2, [sp, #0x40]
006fec98  03 b0 a0 e1                                      mov fp, r3
006fec9c  2c 41 9d e5                                      ldr r4, [sp, #0x12c]
006feca0  3c 10 8d e5                                      str r1, [sp, #0x3c]
006feca4  24 03 00 0a                                      beq #0x6ff93c
006feca8  40 20 9d e5                                      ldr r2, [sp, #0x40]
006fecac  06 60 a0 e3                                      mov r6, #6
006fecb0  60 31 95 e5                                      ldr r3, [r5, #0x160]
006fecb4  96 02 06 e0                                      mul r6, r6, r2
006fecb8  03 00 56 e1                                      cmp r6, r3
006fecbc  08 03 00 8a                                      bhi #0x6ff8e4
006fecc0  28 31 9d e5                                      ldr r3, [sp, #0x128]
006fecc4  00 60 9b e5                                      ldr r6, [fp]
006fecc8  04 10 9b e5                                      ldr r1, [fp, #4]
006feccc  08 70 9b e5                                      ldr r7, [fp, #8]
006fecd0  02 00 53 e3                                      cmp r3, #2
006fecd4  d4 60 8d e5                                      str r6, [sp, #0xd4]
006fecd8  d8 10 8d e5                                      str r1, [sp, #0xd8]
006fecdc  dc 70 8d e5                                      str r7, [sp, #0xdc]
006fece0  06 03 00 0a                                      beq #0x6ff900
006fece4  40 70 9d e5                                      ldr r7, [sp, #0x40]
006fece8  10 60 94 e5                                      ldr r6, [r4, #0x10]
006fecec  00 00 57 e3                                      cmp r7, #0
006fecf0  f9 02 00 0a                                      beq #0x6ff8dc
006fecf4  c8 c0 8d e2                                      add ip, sp, #0xc8
006fecf8  d4 e0 8d e2                                      add lr, sp, #0xd4
006fecfc  bc 00 8d e2                                      add r0, sp, #0xbc
006fed00  00 70 a0 e3                                      mov r7, #0
006fed04  50 c0 8d e5                                      str ip, [sp, #0x50]
006fed08  4c e0 8d e5                                      str lr, [sp, #0x4c]
006fed0c  54 00 8d e5                                      str r0, [sp, #0x54]
006fed10  b0 10 8d e2                                      add r1, sp, #0xb0
006fed14  a4 20 8d e2                                      add r2, sp, #0xa4
006fed18  98 30 8d e2                                      add r3, sp, #0x98
006fed1c  8c c0 8d e2                                      add ip, sp, #0x8c
006fed20  e4 e0 8d e2                                      add lr, sp, #0xe4
006fed24  e8 00 8d e2                                      add r0, sp, #0xe8
006fed28  20 70 8d e5                                      str r7, [sp, #0x20]
006fed2c  38 70 8d e5                                      str r7, [sp, #0x38]
006fed30  58 10 8d e5                                      str r1, [sp, #0x58]
006fed34  5c 20 8d e5                                      str r2, [sp, #0x5c]
006fed38  60 30 8d e5                                      str r3, [sp, #0x60]
006fed3c  64 c0 8d e5                                      str ip, [sp, #0x64]
006fed40  68 e0 8d e5                                      str lr, [sp, #0x68]
006fed44  6c 00 8d e5                                      str r0, [sp, #0x6c]
006fed48  24 b0 8d e5                                      str fp, [sp, #0x24]
006fed4c  f2 01 00 ea                                      b #0x6ff51c
006fed50  0c b0 a0 e3                                      mov fp, #0xc
006fed54  9b 08 01 e0                                      mul r1, fp, r8
006fed58  9b 09 02 e0                                      mul r2, fp, sb
006fed5c  01 30 96 e7                                      ldr r3, [r6, r1]
006fed60  01 10 86 e0                                      add r1, r6, r1
006fed64  02 00 96 e7                                      ldr r0, [r6, r2]
006fed68  02 20 86 e0                                      add r2, r6, r2
006fed6c  18 10 8d e5                                      str r1, [sp, #0x18]
006fed70  03 10 a0 e1                                      mov r1, r3
006fed74  10 30 8d e5                                      str r3, [sp, #0x10]
006fed78  14 20 8d e5                                      str r2, [sp, #0x14]
006fed7c  8a 3d f0 eb                                      bl #0x30e3ac
006fed80  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006fed84  1c 00 8d e5                                      str r0, [sp, #0x1c]
006fed88  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006fed8c  04 20 9c e5                                      ldr r2, [ip, #4]
006fed90  00 10 a0 e3                                      mov r1, #0
006fed94  04 00 9e e5                                      ldr r0, [lr, #4]
006fed98  34 10 cd e5                                      strb r1, [sp, #0x34]
006fed9c  02 10 a0 e1                                      mov r1, r2
006feda0  08 20 8d e5                                      str r2, [sp, #8]
006feda4  80 3d f0 eb                                      bl #0x30e3ac
006feda8  18 e0 9d e5                                      ldr lr, [sp, #0x18]
006fedac  28 00 8d e5                                      str r0, [sp, #0x28]
006fedb0  14 10 9d e5                                      ldr r1, [sp, #0x14]
006fedb4  08 c0 9e e5                                      ldr ip, [lr, #8]
006fedb8  9b 0a 0b e0                                      mul fp, fp, sl
006fedbc  08 00 91 e5                                      ldr r0, [r1, #8]
006fedc0  0c 10 a0 e1                                      mov r1, ip
006fedc4  0c c0 8d e5                                      str ip, [sp, #0xc]
006fedc8  77 3d f0 eb                                      bl #0x30e3ac
006fedcc  10 30 9d e5                                      ldr r3, [sp, #0x10]
006fedd0  18 00 8d e5                                      str r0, [sp, #0x18]
006fedd4  0b 00 96 e7                                      ldr r0, [r6, fp]
006fedd8  03 10 a0 e1                                      mov r1, r3
006feddc  72 3d f0 eb                                      bl #0x30e3ac
006fede0  08 20 9d e5                                      ldr r2, [sp, #8]
006fede4  0b b0 86 e0                                      add fp, r6, fp
006fede8  14 00 8d e5                                      str r0, [sp, #0x14]
006fedec  02 10 a0 e1                                      mov r1, r2
006fedf0  04 00 9b e5                                      ldr r0, [fp, #4]
006fedf4  6c 3d f0 eb                                      bl #0x30e3ac
006fedf8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006fedfc  2c 00 8d e5                                      str r0, [sp, #0x2c]
006fee00  08 00 9b e5                                      ldr r0, [fp, #8]
006fee04  0c 10 a0 e1                                      mov r1, ip
006fee08  67 3d f0 eb                                      bl #0x30e3ac
006fee0c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006fee10  00 b0 a0 e1                                      mov fp, r0
006fee14  03 10 a0 e1                                      mov r1, r3
006fee18  24 30 9d e5                                      ldr r3, [sp, #0x24]
006fee1c  00 00 93 e5                                      ldr r0, [r3]
006fee20  61 3d f0 eb                                      bl #0x30e3ac
006fee24  28 e0 9d e5                                      ldr lr, [sp, #0x28]
006fee28  30 00 8d e5                                      str r0, [sp, #0x30]
006fee2c  0b 00 a0 e1                                      mov r0, fp
006fee30  02 11 8e e2                                      add r1, lr, #0x80000000
006fee34  cc 3f f0 eb                                      bl #0x30ed6c
006fee38  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006fee3c  00 30 a0 e1                                      mov r3, r0
006fee40  18 00 9d e5                                      ldr r0, [sp, #0x18]
006fee44  10 30 8d e5                                      str r3, [sp, #0x10]
006fee48  c7 3f f0 eb                                      bl #0x30ed6c
006fee4c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006fee50  00 10 a0 e1                                      mov r1, r0
006fee54  03 00 a0 e1                                      mov r0, r3
006fee58  51 3f f0 eb                                      bl #0x30eba4
006fee5c  00 10 a0 e1                                      mov r1, r0
006fee60  30 00 9d e5                                      ldr r0, [sp, #0x30]
006fee64  c0 3f f0 eb                                      bl #0x30ed6c
006fee68  30 00 8d e5                                      str r0, [sp, #0x30]
006fee6c  08 20 9d e5                                      ldr r2, [sp, #8]
006fee70  02 10 a0 e1                                      mov r1, r2
006fee74  24 20 9d e5                                      ldr r2, [sp, #0x24]
006fee78  04 00 92 e5                                      ldr r0, [r2, #4]
006fee7c  4a 3d f0 eb                                      bl #0x30e3ac
006fee80  18 30 9d e5                                      ldr r3, [sp, #0x18]
006fee84  00 20 a0 e1                                      mov r2, r0
006fee88  14 00 9d e5                                      ldr r0, [sp, #0x14]
006fee8c  02 11 83 e2                                      add r1, r3, #0x80000000
006fee90  08 20 8d e5                                      str r2, [sp, #8]
006fee94  b4 3f f0 eb                                      bl #0x30ed6c
006fee98  0b 10 a0 e1                                      mov r1, fp
006fee9c  00 30 a0 e1                                      mov r3, r0
006feea0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006feea4  10 30 8d e5                                      str r3, [sp, #0x10]
006feea8  af 3f f0 eb                                      bl #0x30ed6c
006feeac  10 30 9d e5                                      ldr r3, [sp, #0x10]
006feeb0  00 10 a0 e1                                      mov r1, r0
006feeb4  03 00 a0 e1                                      mov r0, r3
006feeb8  39 3f f0 eb                                      bl #0x30eba4
006feebc  08 20 9d e5                                      ldr r2, [sp, #8]
006feec0  00 10 a0 e1                                      mov r1, r0
006feec4  02 00 a0 e1                                      mov r0, r2
006feec8  a7 3f f0 eb                                      bl #0x30ed6c
006feecc  00 10 a0 e1                                      mov r1, r0
006feed0  30 00 9d e5                                      ldr r0, [sp, #0x30]
006feed4  32 3f f0 eb                                      bl #0x30eba4
006feed8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006feedc  24 b0 9d e5                                      ldr fp, [sp, #0x24]
006feee0  00 20 a0 e1                                      mov r2, r0
006feee4  0c 10 a0 e1                                      mov r1, ip
006feee8  08 00 9b e5                                      ldr r0, [fp, #8]
006feeec  08 20 8d e5                                      str r2, [sp, #8]
006feef0  2d 3d f0 eb                                      bl #0x30e3ac
006feef4  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006feef8  00 30 a0 e1                                      mov r3, r0
006feefc  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006fef00  02 11 8c e2                                      add r1, ip, #0x80000000
006fef04  10 30 8d e5                                      str r3, [sp, #0x10]
006fef08  97 3f f0 eb                                      bl #0x30ed6c
006fef0c  14 10 9d e5                                      ldr r1, [sp, #0x14]
006fef10  00 b0 a0 e1                                      mov fp, r0
006fef14  28 00 9d e5                                      ldr r0, [sp, #0x28]
006fef18  93 3f f0 eb                                      bl #0x30ed6c
006fef1c  00 10 a0 e1                                      mov r1, r0
006fef20  0b 00 a0 e1                                      mov r0, fp
006fef24  1e 3f f0 eb                                      bl #0x30eba4
006fef28  10 30 9d e5                                      ldr r3, [sp, #0x10]
006fef2c  00 10 a0 e1                                      mov r1, r0
006fef30  03 00 a0 e1                                      mov r0, r3
006fef34  8c 3f f0 eb                                      bl #0x30ed6c
006fef38  08 20 9d e5                                      ldr r2, [sp, #8]
006fef3c  00 10 a0 e1                                      mov r1, r0
006fef40  02 00 a0 e1                                      mov r0, r2
006fef44  16 3f f0 eb                                      bl #0x30eba4
006fef48  00 10 a0 e3                                      mov r1, #0
006fef4c  58 3d f0 eb                                      bl #0x30e4b4
006fef50  00 00 50 e3                                      cmp r0, #0
006fef54  01 00 a0 13                                      movne r0, #1
006fef58  34 00 cd 15                                      strbne r0, [sp, #0x34]
006fef5c  34 30 dd e5                                      ldrb r3, [sp, #0x34]
006fef60  00 00 53 e3                                      cmp r3, #0
006fef64  65 01 00 0a                                      beq #0x6ff500
006fef68  38 20 9d e5                                      ldr r2, [sp, #0x38]
006fef6c  5c 11 95 e5                                      ldr r1, [r5, #0x15c]
006fef70  02 31 a0 e1                                      lsl r3, r2, #2
006fef74  b3 80 81 e1                                      strh r8, [r1, r3]
006fef78  38 b0 9d e5                                      ldr fp, [sp, #0x38]
006fef7c  5c 11 95 e5                                      ldr r1, [r5, #0x15c]
006fef80  01 20 82 e2                                      add r2, r2, #1
006fef84  02 01 a0 e1                                      lsl r0, r2, #2
006fef88  0b 11 81 e0                                      add r1, r1, fp, lsl #2
006fef8c  b2 a0 c1 e1                                      strh sl, [r1, #2]
006fef90  5c c1 95 e5                                      ldr ip, [r5, #0x15c]
006fef94  3c b0 9d e5                                      ldr fp, [sp, #0x3c]
006fef98  01 30 82 e2                                      add r3, r2, #1
006fef9c  b0 a0 8c e1                                      strh sl, [ip, r0]
006fefa0  5c 01 95 e5                                      ldr r0, [r5, #0x15c]
006fefa4  01 c0 83 e2                                      add ip, r3, #1
006fefa8  38 c0 8d e5                                      str ip, [sp, #0x38]
006fefac  02 21 80 e0                                      add r2, r0, r2, lsl #2
006fefb0  b2 90 c2 e1                                      strh sb, [r2, #2]
006fefb4  5c 21 95 e5                                      ldr r2, [r5, #0x15c]
006fefb8  03 11 a0 e1                                      lsl r1, r3, #2
006fefbc  00 00 5b e3                                      cmp fp, #0
006fefc0  b1 90 82 e1                                      strh sb, [r2, r1]
006fefc4  5c 21 95 e5                                      ldr r2, [r5, #0x15c]
006fefc8  03 31 82 e0                                      add r3, r2, r3, lsl #2
006fefcc  b2 80 c3 e1                                      strh r8, [r3, #2]
006fefd0  4a 01 00 0a                                      beq #0x6ff500
006fefd4  10 c0 94 e5                                      ldr ip, [r4, #0x10]
006fefd8  00 00 5c e3                                      cmp ip, #0
006fefdc  47 01 00 0a                                      beq #0x6ff500
006fefe0  14 30 94 e5                                      ldr r3, [r4, #0x14]
006fefe4  00 00 53 e3                                      cmp r3, #0
006fefe8  44 01 00 0a                                      beq #0x6ff500
006fefec  0c b0 a0 e3                                      mov fp, #0xc
006feff0  9b 08 0e e0                                      mul lr, fp, r8
006feff4  01 00 88 e2                                      add r0, r8, #1
006feff8  0e 20 8c e0                                      add r2, ip, lr
006feffc  1c e0 8d e5                                      str lr, [sp, #0x1c]
006ff000  28 e1 9d e5                                      ldr lr, [sp, #0x128]
006ff004  48 00 8d e5                                      str r0, [sp, #0x48]
006ff008  05 10 a0 e1                                      mov r1, r5
006ff00c  50 00 9d e5                                      ldr r0, [sp, #0x50]
006ff010  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006ff014  00 e0 8d e5                                      str lr, [sp]
006ff018  01 e0 a0 e3                                      mov lr, #1
006ff01c  04 e0 8d e5                                      str lr, [sp, #4]
006ff020  0c c0 8d e5                                      str ip, [sp, #0xc]
006ff024  9d fe ff eb                                      bl #0x6feaa0
006ff028  48 00 9d e5                                      ldr r0, [sp, #0x48]
006ff02c  9b 0a 01 e0                                      mul r1, fp, sl
006ff030  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006ff034  14 10 8d e5                                      str r1, [sp, #0x14]
006ff038  9b 00 03 e0                                      mul r3, fp, r0
006ff03c  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
006ff040  03 20 8c e0                                      add r2, ip, r3
006ff044  03 10 8c e7                                      str r1, [ip, r3]
006ff048  01 30 8a e2                                      add r3, sl, #1
006ff04c  28 30 8d e5                                      str r3, [sp, #0x28]
006ff050  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
006ff054  54 00 9d e5                                      ldr r0, [sp, #0x54]
006ff058  05 10 a0 e1                                      mov r1, r5
006ff05c  04 30 82 e5                                      str r3, [r2, #4]
006ff060  d0 c0 9d e5                                      ldr ip, [sp, #0xd0]
006ff064  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006ff068  08 c0 82 e5                                      str ip, [r2, #8]
006ff06c  28 e1 9d e5                                      ldr lr, [sp, #0x128]
006ff070  10 c0 94 e5                                      ldr ip, [r4, #0x10]
006ff074  01 20 a0 e3                                      mov r2, #1
006ff078  00 e0 8d e5                                      str lr, [sp]
006ff07c  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006ff080  04 20 8d e5                                      str r2, [sp, #4]
006ff084  0c c0 8d e5                                      str ip, [sp, #0xc]
006ff088  0e 20 8c e0                                      add r2, ip, lr
006ff08c  83 fe ff eb                                      bl #0x6feaa0
006ff090  28 00 9d e5                                      ldr r0, [sp, #0x28]
006ff094  9b 09 01 e0                                      mul r1, fp, sb
006ff098  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006ff09c  18 10 8d e5                                      str r1, [sp, #0x18]
006ff0a0  9b 00 03 e0                                      mul r3, fp, r0
006ff0a4  bc 10 9d e5                                      ldr r1, [sp, #0xbc]
006ff0a8  03 20 8c e0                                      add r2, ip, r3
006ff0ac  01 e0 a0 e3                                      mov lr, #1
006ff0b0  03 10 8c e7                                      str r1, [ip, r3]
006ff0b4  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
006ff0b8  01 c0 89 e2                                      add ip, sb, #1
006ff0bc  34 c0 8d e5                                      str ip, [sp, #0x34]
006ff0c0  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006ff0c4  04 10 82 e5                                      str r1, [r2, #4]
006ff0c8  c4 c0 9d e5                                      ldr ip, [sp, #0xc4]
006ff0cc  58 00 9d e5                                      ldr r0, [sp, #0x58]
006ff0d0  05 10 a0 e1                                      mov r1, r5
006ff0d4  08 c0 82 e5                                      str ip, [r2, #8]
006ff0d8  10 c0 94 e5                                      ldr ip, [r4, #0x10]
006ff0dc  28 21 9d e5                                      ldr r2, [sp, #0x128]
006ff0e0  04 e0 8d e5                                      str lr, [sp, #4]
006ff0e4  18 e0 9d e5                                      ldr lr, [sp, #0x18]
006ff0e8  00 20 8d e5                                      str r2, [sp]
006ff0ec  0c c0 8d e5                                      str ip, [sp, #0xc]
006ff0f0  0e 20 8c e0                                      add r2, ip, lr
006ff0f4  69 fe ff eb                                      bl #0x6feaa0
006ff0f8  34 00 9d e5                                      ldr r0, [sp, #0x34]
006ff0fc  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006ff100  b0 20 9d e5                                      ldr r2, [sp, #0xb0]
006ff104  9b 00 0b e0                                      mul fp, fp, r0
006ff108  0b 20 8c e7                                      str r2, [ip, fp]
006ff10c  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
006ff110  0b 30 8c e0                                      add r3, ip, fp
006ff114  04 20 83 e5                                      str r2, [r3, #4]
006ff118  b8 20 9d e5                                      ldr r2, [sp, #0xb8]
006ff11c  08 20 83 e5                                      str r2, [r3, #8]
006ff120  10 10 94 e5                                      ldr r1, [r4, #0x10]
006ff124  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006ff128  2c 10 8d e5                                      str r1, [sp, #0x2c]
006ff12c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
006ff130  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
006ff134  03 b0 82 e0                                      add fp, r2, r3
006ff138  04 00 9b e5                                      ldr r0, [fp, #4]
006ff13c  9a 3c f0 eb                                      bl #0x30e3ac
006ff140  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
006ff144  00 30 a0 e1                                      mov r3, r0
006ff148  08 00 9b e5                                      ldr r0, [fp, #8]
006ff14c  10 30 8d e5                                      str r3, [sp, #0x10]
006ff150  95 3c f0 eb                                      bl #0x30e3ac
006ff154  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
006ff158  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006ff15c  00 20 a0 e1                                      mov r2, r0
006ff160  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
006ff164  0c 00 9e e7                                      ldr r0, [lr, ip]
006ff168  08 20 8d e5                                      str r2, [sp, #8]
006ff16c  8e 3c f0 eb                                      bl #0x30e3ac
006ff170  08 20 9d e5                                      ldr r2, [sp, #8]
006ff174  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ff178  a4 00 8d e5                                      str r0, [sp, #0xa4]
006ff17c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
006ff180  ac 20 8d e5                                      str r2, [sp, #0xac]
006ff184  a8 30 8d e5                                      str r3, [sp, #0xa8]
006ff188  d4 7d f1 eb                                      bl #0x35e8e0
006ff18c  04 10 90 e5                                      ldr r1, [r0, #4]
006ff190  00 30 a0 e1                                      mov r3, r0
006ff194  88 01 95 e5                                      ldr r0, [r5, #0x188]
006ff198  10 30 8d e5                                      str r3, [sp, #0x10]
006ff19c  f2 3e f0 eb                                      bl #0x30ed6c
006ff1a0  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ff1a4  00 20 a0 e1                                      mov r2, r0
006ff1a8  88 01 95 e5                                      ldr r0, [r5, #0x188]
006ff1ac  08 10 93 e5                                      ldr r1, [r3, #8]
006ff1b0  08 20 8d e5                                      str r2, [sp, #8]
006ff1b4  ec 3e f0 eb                                      bl #0x30ed6c
006ff1b8  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ff1bc  00 c0 a0 e1                                      mov ip, r0
006ff1c0  88 01 95 e5                                      ldr r0, [r5, #0x188]
006ff1c4  00 10 93 e5                                      ldr r1, [r3]
006ff1c8  0c c0 8d e5                                      str ip, [sp, #0xc]
006ff1cc  e6 3e f0 eb                                      bl #0x30ed6c
006ff1d0  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
006ff1d4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006ff1d8  00 10 a0 e1                                      mov r1, r0
006ff1dc  03 00 9e e7                                      ldr r0, [lr, r3]
006ff1e0  6f 3e f0 eb                                      bl #0x30eba4
006ff1e4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
006ff1e8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006ff1ec  01 00 83 e7                                      str r0, [r3, r1]
006ff1f0  08 20 9d e5                                      ldr r2, [sp, #8]
006ff1f4  04 00 9b e5                                      ldr r0, [fp, #4]
006ff1f8  02 10 a0 e1                                      mov r1, r2
006ff1fc  68 3e f0 eb                                      bl #0x30eba4
006ff200  04 00 8b e5                                      str r0, [fp, #4]
006ff204  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006ff208  08 00 9b e5                                      ldr r0, [fp, #8]
006ff20c  0c 10 a0 e1                                      mov r1, ip
006ff210  63 3e f0 eb                                      bl #0x30eba4
006ff214  08 00 8b e5                                      str r0, [fp, #8]
006ff218  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006ff21c  10 b0 94 e5                                      ldr fp, [r4, #0x10]
006ff220  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
006ff224  1c b0 8d e5                                      str fp, [sp, #0x1c]
006ff228  0c b0 8b e0                                      add fp, fp, ip
006ff22c  04 00 9b e5                                      ldr r0, [fp, #4]
006ff230  5d 3c f0 eb                                      bl #0x30e3ac
006ff234  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
006ff238  00 30 a0 e1                                      mov r3, r0
006ff23c  08 00 9b e5                                      ldr r0, [fp, #8]
006ff240  10 30 8d e5                                      str r3, [sp, #0x10]
006ff244  58 3c f0 eb                                      bl #0x30e3ac
006ff248  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006ff24c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006ff250  00 20 a0 e1                                      mov r2, r0
006ff254  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
006ff258  0e 00 9c e7                                      ldr r0, [ip, lr]
006ff25c  08 20 8d e5                                      str r2, [sp, #8]
006ff260  51 3c f0 eb                                      bl #0x30e3ac
006ff264  08 20 9d e5                                      ldr r2, [sp, #8]
006ff268  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ff26c  98 00 8d e5                                      str r0, [sp, #0x98]
006ff270  60 00 9d e5                                      ldr r0, [sp, #0x60]
006ff274  a0 20 8d e5                                      str r2, [sp, #0xa0]
006ff278  9c 30 8d e5                                      str r3, [sp, #0x9c]
006ff27c  97 7d f1 eb                                      bl #0x35e8e0
006ff280  04 10 90 e5                                      ldr r1, [r0, #4]
006ff284  00 30 a0 e1                                      mov r3, r0
006ff288  88 01 95 e5                                      ldr r0, [r5, #0x188]
006ff28c  10 30 8d e5                                      str r3, [sp, #0x10]
006ff290  b5 3e f0 eb                                      bl #0x30ed6c
006ff294  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ff298  00 20 a0 e1                                      mov r2, r0
006ff29c  88 01 95 e5                                      ldr r0, [r5, #0x188]
006ff2a0  08 10 93 e5                                      ldr r1, [r3, #8]
006ff2a4  08 20 8d e5                                      str r2, [sp, #8]
006ff2a8  af 3e f0 eb                                      bl #0x30ed6c
006ff2ac  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ff2b0  00 c0 a0 e1                                      mov ip, r0
006ff2b4  88 01 95 e5                                      ldr r0, [r5, #0x188]
006ff2b8  00 10 93 e5                                      ldr r1, [r3]
006ff2bc  0c c0 8d e5                                      str ip, [sp, #0xc]
006ff2c0  a9 3e f0 eb                                      bl #0x30ed6c
006ff2c4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006ff2c8  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006ff2cc  00 10 a0 e1                                      mov r1, r0
006ff2d0  0e 00 93 e7                                      ldr r0, [r3, lr]
006ff2d4  32 3e f0 eb                                      bl #0x30eba4
006ff2d8  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006ff2dc  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006ff2e0  0e 00 81 e7                                      str r0, [r1, lr]
006ff2e4  08 20 9d e5                                      ldr r2, [sp, #8]
006ff2e8  04 00 9b e5                                      ldr r0, [fp, #4]
006ff2ec  02 10 a0 e1                                      mov r1, r2
006ff2f0  2b 3e f0 eb                                      bl #0x30eba4
006ff2f4  04 00 8b e5                                      str r0, [fp, #4]
006ff2f8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006ff2fc  08 00 9b e5                                      ldr r0, [fp, #8]
006ff300  0c 10 a0 e1                                      mov r1, ip
006ff304  26 3e f0 eb                                      bl #0x30eba4
006ff308  08 00 8b e5                                      str r0, [fp, #8]
006ff30c  10 20 94 e5                                      ldr r2, [r4, #0x10]
006ff310  18 30 9d e5                                      ldr r3, [sp, #0x18]
006ff314  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
006ff318  14 20 8d e5                                      str r2, [sp, #0x14]
006ff31c  03 b0 82 e0                                      add fp, r2, r3
006ff320  04 00 9b e5                                      ldr r0, [fp, #4]
006ff324  20 3c f0 eb                                      bl #0x30e3ac
006ff328  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
006ff32c  00 30 a0 e1                                      mov r3, r0
006ff330  08 00 9b e5                                      ldr r0, [fp, #8]
006ff334  10 30 8d e5                                      str r3, [sp, #0x10]
006ff338  1b 3c f0 eb                                      bl #0x30e3ac
006ff33c  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006ff340  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006ff344  00 20 a0 e1                                      mov r2, r0
006ff348  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
006ff34c  0c 00 9e e7                                      ldr r0, [lr, ip]
006ff350  08 20 8d e5                                      str r2, [sp, #8]
006ff354  14 3c f0 eb                                      bl #0x30e3ac
006ff358  08 20 9d e5                                      ldr r2, [sp, #8]
006ff35c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ff360  8c 00 8d e5                                      str r0, [sp, #0x8c]
006ff364  64 00 9d e5                                      ldr r0, [sp, #0x64]
006ff368  94 20 8d e5                                      str r2, [sp, #0x94]
006ff36c  90 30 8d e5                                      str r3, [sp, #0x90]
006ff370  5a 7d f1 eb                                      bl #0x35e8e0
006ff374  04 10 90 e5                                      ldr r1, [r0, #4]
006ff378  00 30 a0 e1                                      mov r3, r0
006ff37c  88 01 95 e5                                      ldr r0, [r5, #0x188]
006ff380  10 30 8d e5                                      str r3, [sp, #0x10]
006ff384  78 3e f0 eb                                      bl #0x30ed6c
006ff388  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ff38c  00 20 a0 e1                                      mov r2, r0
006ff390  88 01 95 e5                                      ldr r0, [r5, #0x188]
006ff394  08 10 93 e5                                      ldr r1, [r3, #8]
006ff398  08 20 8d e5                                      str r2, [sp, #8]
006ff39c  72 3e f0 eb                                      bl #0x30ed6c
006ff3a0  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ff3a4  00 c0 a0 e1                                      mov ip, r0
006ff3a8  88 01 95 e5                                      ldr r0, [r5, #0x188]
006ff3ac  00 10 93 e5                                      ldr r1, [r3]
006ff3b0  0c c0 8d e5                                      str ip, [sp, #0xc]
006ff3b4  6c 3e f0 eb                                      bl #0x30ed6c
006ff3b8  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006ff3bc  18 30 9d e5                                      ldr r3, [sp, #0x18]
006ff3c0  00 10 a0 e1                                      mov r1, r0
006ff3c4  03 00 9e e7                                      ldr r0, [lr, r3]
006ff3c8  f5 3d f0 eb                                      bl #0x30eba4
006ff3cc  14 30 9d e5                                      ldr r3, [sp, #0x14]
006ff3d0  18 10 9d e5                                      ldr r1, [sp, #0x18]
006ff3d4  01 00 83 e7                                      str r0, [r3, r1]
006ff3d8  08 20 9d e5                                      ldr r2, [sp, #8]
006ff3dc  04 00 9b e5                                      ldr r0, [fp, #4]
006ff3e0  02 10 a0 e1                                      mov r1, r2
006ff3e4  ee 3d f0 eb                                      bl #0x30eba4
006ff3e8  04 00 8b e5                                      str r0, [fp, #4]
006ff3ec  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006ff3f0  08 00 9b e5                                      ldr r0, [fp, #8]
006ff3f4  0c 10 a0 e1                                      mov r1, ip
006ff3f8  e9 3d f0 eb                                      bl #0x30eba4
006ff3fc  08 00 8b e5                                      str r0, [fp, #8]
006ff400  18 20 94 e5                                      ldr r2, [r4, #0x18]
006ff404  14 10 94 e5                                      ldr r1, [r4, #0x14]
006ff408  82 30 a0 e1                                      lsl r3, r2, #1
006ff40c  b3 80 81 e1                                      strh r8, [r1, r3]
006ff410  14 10 94 e5                                      ldr r1, [r4, #0x14]
006ff414  01 20 82 e2                                      add r2, r2, #1
006ff418  82 30 a0 e1                                      lsl r3, r2, #1
006ff41c  b3 a0 81 e1                                      strh sl, [r1, r3]
006ff420  14 10 94 e5                                      ldr r1, [r4, #0x14]
006ff424  01 20 82 e2                                      add r2, r2, #1
006ff428  82 30 a0 e1                                      lsl r3, r2, #1
006ff42c  b3 90 81 e1                                      strh sb, [r1, r3]
006ff430  14 10 94 e5                                      ldr r1, [r4, #0x14]
006ff434  48 b0 9d e5                                      ldr fp, [sp, #0x48]
006ff438  01 20 82 e2                                      add r2, r2, #1
006ff43c  82 30 a0 e1                                      lsl r3, r2, #1
006ff440  b3 b0 81 e1                                      strh fp, [r1, r3]
006ff444  14 10 94 e5                                      ldr r1, [r4, #0x14]
006ff448  34 c0 9d e5                                      ldr ip, [sp, #0x34]
006ff44c  01 20 82 e2                                      add r2, r2, #1
006ff450  82 30 a0 e1                                      lsl r3, r2, #1
006ff454  b3 c0 81 e1                                      strh ip, [r1, r3]
006ff458  14 10 94 e5                                      ldr r1, [r4, #0x14]
006ff45c  28 00 9d e5                                      ldr r0, [sp, #0x28]
006ff460  01 20 82 e2                                      add r2, r2, #1
006ff464  82 30 a0 e1                                      lsl r3, r2, #1
006ff468  b3 00 81 e1                                      strh r0, [r1, r3]
006ff46c  b6 34 d4 e1                                      ldrh r3, [r4, #0x46]
006ff470  01 20 82 e2                                      add r2, r2, #1
006ff474  18 20 84 e5                                      str r2, [r4, #0x18]
006ff478  03 00 58 e1                                      cmp r8, r3
006ff47c  fc 30 8d e5                                      str r3, [sp, #0xfc]
006ff480  08 30 a0 91                                      movls r3, r8
006ff484  f8 20 8d 92                                      addls r2, sp, #0xf8
006ff488  fc 20 8d 82                                      addhi r2, sp, #0xfc
006ff48c  03 00 5a e1                                      cmp sl, r3
006ff490  f0 90 8d e5                                      str sb, [sp, #0xf0]
006ff494  f8 80 8d e5                                      str r8, [sp, #0xf8]
006ff498  f4 a0 8d e5                                      str sl, [sp, #0xf4]
006ff49c  f4 20 8d 92                                      addls r2, sp, #0xf4
006ff4a0  00 10 92 e5                                      ldr r1, [r2]
006ff4a4  48 30 9d e5                                      ldr r3, [sp, #0x48]
006ff4a8  b8 24 d4 e1                                      ldrh r2, [r4, #0x48]
006ff4ac  01 00 59 e1                                      cmp sb, r1
006ff4b0  01 90 a0 21                                      movhs sb, r1
006ff4b4  b6 94 c4 e1                                      strh sb, [r4, #0x46]
006ff4b8  03 00 52 e1                                      cmp r2, r3
006ff4bc  28 b0 9d e5                                      ldr fp, [sp, #0x28]
006ff4c0  ec 20 8d e5                                      str r2, [sp, #0xec]
006ff4c4  34 00 9d e5                                      ldr r0, [sp, #0x34]
006ff4c8  6c 20 9d 35                                      ldrlo r2, [sp, #0x6c]
006ff4cc  28 10 9d e5                                      ldr r1, [sp, #0x28]
006ff4d0  68 c0 9d e5                                      ldr ip, [sp, #0x68]
006ff4d4  e8 30 8d e5                                      str r3, [sp, #0xe8]
006ff4d8  02 30 a0 21                                      movhs r3, r2
006ff4dc  ec 20 8d 22                                      addhs r2, sp, #0xec
006ff4e0  03 00 5b e1                                      cmp fp, r3
006ff4e4  e4 10 8d e5                                      str r1, [sp, #0xe4]
006ff4e8  0c 20 a0 81                                      movhi r2, ip
006ff4ec  e0 00 8d e5                                      str r0, [sp, #0xe0]
006ff4f0  00 30 92 e5                                      ldr r3, [r2]
006ff4f4  03 00 50 e1                                      cmp r0, r3
006ff4f8  00 30 a0 21                                      movhs r3, r0
006ff4fc  b8 34 c4 e1                                      strh r3, [r4, #0x48]
006ff500  20 10 9d e5                                      ldr r1, [sp, #0x20]
006ff504  40 20 9d e5                                      ldr r2, [sp, #0x40]
006ff508  06 70 87 e2                                      add r7, r7, #6
006ff50c  01 10 81 e2                                      add r1, r1, #1
006ff510  02 00 51 e1                                      cmp r1, r2
006ff514  20 10 8d e5                                      str r1, [sp, #0x20]
006ff518  79 00 00 0a                                      beq #0x6ff704
006ff51c  44 10 9d e5                                      ldr r1, [sp, #0x44]
006ff520  28 21 9d e5                                      ldr r2, [sp, #0x128]
006ff524  04 30 91 e5                                      ldr r3, [r1, #4]
006ff528  02 00 52 e3                                      cmp r2, #2
006ff52c  b7 80 b3 e1                                      ldrh r8, [r3, r7]!
006ff530  b4 90 d3 e1                                      ldrh sb, [r3, #4]
006ff534  b2 a0 d3 e1                                      ldrh sl, [r3, #2]
006ff538  88 80 a0 e1                                      lsl r8, r8, #1
006ff53c  89 90 a0 e1                                      lsl sb, sb, #1
006ff540  8a a0 a0 e1                                      lsl sl, sl, #1
006ff544  78 80 ff e6                                      uxth r8, r8
006ff548  7a a0 ff e6                                      uxth sl, sl
006ff54c  79 90 ff e6                                      uxth sb, sb
006ff550  fe fd ff 1a                                      bne #0x6fed50
006ff554  0c b0 a0 e3                                      mov fp, #0xc
006ff558  9b 08 01 e0                                      mul r1, fp, r8
006ff55c  9b 09 03 e0                                      mul r3, fp, sb
006ff560  01 20 96 e7                                      ldr r2, [r6, r1]
006ff564  01 10 86 e0                                      add r1, r6, r1
006ff568  03 00 96 e7                                      ldr r0, [r6, r3]
006ff56c  03 30 86 e0                                      add r3, r6, r3
006ff570  18 10 8d e5                                      str r1, [sp, #0x18]
006ff574  02 10 a0 e1                                      mov r1, r2
006ff578  08 20 8d e5                                      str r2, [sp, #8]
006ff57c  14 30 8d e5                                      str r3, [sp, #0x14]
006ff580  89 3b f0 eb                                      bl #0x30e3ac
006ff584  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006ff588  1c 00 8d e5                                      str r0, [sp, #0x1c]
006ff58c  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006ff590  04 30 9c e5                                      ldr r3, [ip, #4]
006ff594  00 10 a0 e3                                      mov r1, #0
006ff598  04 00 9e e5                                      ldr r0, [lr, #4]
006ff59c  34 10 cd e5                                      strb r1, [sp, #0x34]
006ff5a0  03 10 a0 e1                                      mov r1, r3
006ff5a4  10 30 8d e5                                      str r3, [sp, #0x10]
006ff5a8  7f 3b f0 eb                                      bl #0x30e3ac
006ff5ac  18 e0 9d e5                                      ldr lr, [sp, #0x18]
006ff5b0  28 00 8d e5                                      str r0, [sp, #0x28]
006ff5b4  14 10 9d e5                                      ldr r1, [sp, #0x14]
006ff5b8  08 c0 9e e5                                      ldr ip, [lr, #8]
006ff5bc  9b 0a 0b e0                                      mul fp, fp, sl
006ff5c0  08 00 91 e5                                      ldr r0, [r1, #8]
006ff5c4  0c 10 a0 e1                                      mov r1, ip
006ff5c8  0c c0 8d e5                                      str ip, [sp, #0xc]
006ff5cc  76 3b f0 eb                                      bl #0x30e3ac
006ff5d0  08 20 9d e5                                      ldr r2, [sp, #8]
006ff5d4  18 00 8d e5                                      str r0, [sp, #0x18]
006ff5d8  0b 00 96 e7                                      ldr r0, [r6, fp]
006ff5dc  02 10 a0 e1                                      mov r1, r2
006ff5e0  71 3b f0 eb                                      bl #0x30e3ac
006ff5e4  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ff5e8  0b b0 86 e0                                      add fp, r6, fp
006ff5ec  14 00 8d e5                                      str r0, [sp, #0x14]
006ff5f0  04 00 9b e5                                      ldr r0, [fp, #4]
006ff5f4  03 10 a0 e1                                      mov r1, r3
006ff5f8  6b 3b f0 eb                                      bl #0x30e3ac
006ff5fc  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006ff600  2c 00 8d e5                                      str r0, [sp, #0x2c]
006ff604  08 00 9b e5                                      ldr r0, [fp, #8]
006ff608  0c 10 a0 e1                                      mov r1, ip
006ff60c  66 3b f0 eb                                      bl #0x30e3ac
006ff610  28 30 9d e5                                      ldr r3, [sp, #0x28]
006ff614  08 00 8d e5                                      str r0, [sp, #8]
006ff618  02 11 83 e2                                      add r1, r3, #0x80000000
006ff61c  d2 3d f0 eb                                      bl #0x30ed6c
006ff620  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006ff624  00 b0 a0 e1                                      mov fp, r0
006ff628  18 00 9d e5                                      ldr r0, [sp, #0x18]
006ff62c  ce 3d f0 eb                                      bl #0x30ed6c
006ff630  00 10 a0 e1                                      mov r1, r0
006ff634  0b 00 a0 e1                                      mov r0, fp
006ff638  59 3d f0 eb                                      bl #0x30eba4
006ff63c  24 b0 9d e5                                      ldr fp, [sp, #0x24]
006ff640  00 10 9b e5                                      ldr r1, [fp]
006ff644  c8 3d f0 eb                                      bl #0x30ed6c
006ff648  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006ff64c  00 30 a0 e1                                      mov r3, r0
006ff650  14 00 9d e5                                      ldr r0, [sp, #0x14]
006ff654  02 11 8c e2                                      add r1, ip, #0x80000000
006ff658  10 30 8d e5                                      str r3, [sp, #0x10]
006ff65c  c2 3d f0 eb                                      bl #0x30ed6c
006ff660  08 20 9d e5                                      ldr r2, [sp, #8]
006ff664  00 b0 a0 e1                                      mov fp, r0
006ff668  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006ff66c  02 10 a0 e1                                      mov r1, r2
006ff670  bd 3d f0 eb                                      bl #0x30ed6c
006ff674  00 10 a0 e1                                      mov r1, r0
006ff678  0b 00 a0 e1                                      mov r0, fp
006ff67c  48 3d f0 eb                                      bl #0x30eba4
006ff680  24 e0 9d e5                                      ldr lr, [sp, #0x24]
006ff684  04 10 9e e5                                      ldr r1, [lr, #4]
006ff688  b7 3d f0 eb                                      bl #0x30ed6c
006ff68c  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ff690  00 10 a0 e1                                      mov r1, r0
006ff694  03 00 a0 e1                                      mov r0, r3
006ff698  41 3d f0 eb                                      bl #0x30eba4
006ff69c  00 30 a0 e1                                      mov r3, r0
006ff6a0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006ff6a4  10 30 8d e5                                      str r3, [sp, #0x10]
006ff6a8  02 11 80 e2                                      add r1, r0, #0x80000000
006ff6ac  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006ff6b0  ad 3d f0 eb                                      bl #0x30ed6c
006ff6b4  14 10 9d e5                                      ldr r1, [sp, #0x14]
006ff6b8  00 b0 a0 e1                                      mov fp, r0
006ff6bc  28 00 9d e5                                      ldr r0, [sp, #0x28]
006ff6c0  a9 3d f0 eb                                      bl #0x30ed6c
006ff6c4  00 10 a0 e1                                      mov r1, r0
006ff6c8  0b 00 a0 e1                                      mov r0, fp
006ff6cc  34 3d f0 eb                                      bl #0x30eba4
006ff6d0  24 20 9d e5                                      ldr r2, [sp, #0x24]
006ff6d4  08 10 92 e5                                      ldr r1, [r2, #8]
006ff6d8  a3 3d f0 eb                                      bl #0x30ed6c
006ff6dc  10 30 9d e5                                      ldr r3, [sp, #0x10]
006ff6e0  00 10 a0 e1                                      mov r1, r0
006ff6e4  03 00 a0 e1                                      mov r0, r3
006ff6e8  2d 3d f0 eb                                      bl #0x30eba4
006ff6ec  00 10 a0 e3                                      mov r1, #0
006ff6f0  6f 3b f0 eb                                      bl #0x30e4b4
006ff6f4  00 00 50 e3                                      cmp r0, #0
006ff6f8  01 30 a0 13                                      movne r3, #1
006ff6fc  34 30 cd 15                                      strbne r3, [sp, #0x34]
006ff700  15 fe ff ea                                      b #0x6fef5c
006ff704  38 30 9d e5                                      ldr r3, [sp, #0x38]
006ff708  00 00 53 e3                                      cmp r3, #0
006ff70c  72 00 00 0a                                      beq #0x6ff8dc
006ff710  02 70 a0 e3                                      mov r7, #2
006ff714  d4 b0 8d e2                                      add fp, sp, #0xd4
006ff718  80 c0 8d e2                                      add ip, sp, #0x80
006ff71c  74 e0 8d e2                                      add lr, sp, #0x74
006ff720  20 70 8d e5                                      str r7, [sp, #0x20]
006ff724  00 a0 a0 e3                                      mov sl, #0
006ff728  18 b0 8d e5                                      str fp, [sp, #0x18]
006ff72c  28 c0 8d e5                                      str ip, [sp, #0x28]
006ff730  1c e0 8d e5                                      str lr, [sp, #0x1c]
006ff734  0c 90 a0 e3                                      mov sb, #0xc
006ff738  05 80 a0 e1                                      mov r8, r5
006ff73c  5c c1 98 e5                                      ldr ip, [r8, #0x15c]
006ff740  20 e0 9d e5                                      ldr lr, [sp, #0x20]
006ff744  0a 31 a0 e1                                      lsl r3, sl, #2
006ff748  10 70 94 e5                                      ldr r7, [r4, #0x10]
006ff74c  b3 60 9c e1                                      ldrh r6, [ip, r3]
006ff750  be 50 9c e1                                      ldrh r5, [ip, lr]
006ff754  28 c1 9d e5                                      ldr ip, [sp, #0x128]
006ff758  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
006ff75c  01 b0 86 e2                                      add fp, r6, #1
006ff760  99 76 22 e0                                      mla r2, sb, r6, r7
006ff764  28 00 9d e5                                      ldr r0, [sp, #0x28]
006ff768  08 10 a0 e1                                      mov r1, r8
006ff76c  18 30 9d e5                                      ldr r3, [sp, #0x18]
006ff770  00 50 8d e8                                      stm sp, {ip, lr}
006ff774  c9 fc ff eb                                      bl #0x6feaa0
006ff778  80 10 9d e5                                      ldr r1, [sp, #0x80]
006ff77c  99 0b 03 e0                                      mul r3, sb, fp
006ff780  01 c0 85 e2                                      add ip, r5, #1
006ff784  03 10 87 e7                                      str r1, [r7, r3]
006ff788  03 20 87 e0                                      add r2, r7, r3
006ff78c  84 30 9d e5                                      ldr r3, [sp, #0x84]
006ff790  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006ff794  99 0c 07 e0                                      mul r7, sb, ip
006ff798  04 30 82 e5                                      str r3, [r2, #4]
006ff79c  88 e0 9d e5                                      ldr lr, [sp, #0x88]
006ff7a0  18 30 9d e5                                      ldr r3, [sp, #0x18]
006ff7a4  24 70 8d e5                                      str r7, [sp, #0x24]
006ff7a8  08 e0 82 e5                                      str lr, [r2, #8]
006ff7ac  10 70 94 e5                                      ldr r7, [r4, #0x10]
006ff7b0  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006ff7b4  28 e1 9d e5                                      ldr lr, [sp, #0x128]
006ff7b8  08 10 a0 e1                                      mov r1, r8
006ff7bc  04 20 8d e5                                      str r2, [sp, #4]
006ff7c0  99 75 22 e0                                      mla r2, sb, r5, r7
006ff7c4  0c c0 8d e5                                      str ip, [sp, #0xc]
006ff7c8  00 e0 8d e5                                      str lr, [sp]
006ff7cc  b3 fc ff eb                                      bl #0x6feaa0
006ff7d0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006ff7d4  24 00 9d e5                                      ldr r0, [sp, #0x24]
006ff7d8  74 20 9d e5                                      ldr r2, [sp, #0x74]
006ff7dc  01 10 8c e2                                      add r1, ip, #1
006ff7e0  14 10 8d e5                                      str r1, [sp, #0x14]
006ff7e4  00 20 87 e7                                      str r2, [r7, r0]
006ff7e8  01 20 8b e2                                      add r2, fp, #1
006ff7ec  2c 20 8d e5                                      str r2, [sp, #0x2c]
006ff7f0  78 20 9d e5                                      ldr r2, [sp, #0x78]
006ff7f4  00 30 87 e0                                      add r3, r7, r0
006ff7f8  01 a0 8a e2                                      add sl, sl, #1
006ff7fc  04 20 83 e5                                      str r2, [r3, #4]
006ff800  20 70 9d e5                                      ldr r7, [sp, #0x20]
006ff804  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
006ff808  7b b0 ff e6                                      uxth fp, fp
006ff80c  04 70 87 e2                                      add r7, r7, #4
006ff810  20 70 8d e5                                      str r7, [sp, #0x20]
006ff814  08 20 83 e5                                      str r2, [r3, #8]
006ff818  10 20 94 e5                                      ldr r2, [r4, #0x10]
006ff81c  75 30 ff e6                                      uxth r3, r5
006ff820  00 00 52 e3                                      cmp r2, #0
006ff824  1b 00 00 0a                                      beq #0x6ff898
006ff828  14 20 94 e5                                      ldr r2, [r4, #0x14]
006ff82c  00 00 52 e3                                      cmp r2, #0
006ff830  18 00 00 0a                                      beq #0x6ff898
006ff834  18 10 94 e5                                      ldr r1, [r4, #0x18]
006ff838  81 00 a0 e1                                      lsl r0, r1, #1
006ff83c  b0 60 82 e1                                      strh r6, [r2, r0]
006ff840  14 70 94 e5                                      ldr r7, [r4, #0x14]
006ff844  01 10 81 e2                                      add r1, r1, #1
006ff848  81 00 a0 e1                                      lsl r0, r1, #1
006ff84c  b0 b0 87 e1                                      strh fp, [r7, r0]
006ff850  14 00 94 e5                                      ldr r0, [r4, #0x14]
006ff854  01 10 81 e2                                      add r1, r1, #1
006ff858  81 20 a0 e1                                      lsl r2, r1, #1
006ff85c  b2 30 80 e1                                      strh r3, [r0, r2]
006ff860  14 00 94 e5                                      ldr r0, [r4, #0x14]
006ff864  01 10 81 e2                                      add r1, r1, #1
006ff868  81 20 a0 e1                                      lsl r2, r1, #1
006ff86c  b2 30 80 e1                                      strh r3, [r0, r2]
006ff870  14 20 94 e5                                      ldr r2, [r4, #0x14]
006ff874  01 10 81 e2                                      add r1, r1, #1
006ff878  81 30 a0 e1                                      lsl r3, r1, #1
006ff87c  b3 b0 82 e1                                      strh fp, [r2, r3]
006ff880  14 20 94 e5                                      ldr r2, [r4, #0x14]
006ff884  01 10 81 e2                                      add r1, r1, #1
006ff888  01 30 81 e2                                      add r3, r1, #1
006ff88c  81 10 a0 e1                                      lsl r1, r1, #1
006ff890  b1 c0 82 e1                                      strh ip, [r2, r1]
006ff894  18 30 84 e5                                      str r3, [r4, #0x18]
006ff898  b6 34 d4 e1                                      ldrh r3, [r4, #0x46]
006ff89c  03 00 55 e1                                      cmp r5, r3
006ff8a0  03 50 a0 21                                      movhs r5, r3
006ff8a4  06 00 55 e1                                      cmp r5, r6
006ff8a8  06 50 a0 21                                      movhs r5, r6
006ff8ac  b6 54 c4 e1                                      strh r5, [r4, #0x46]
006ff8b0  b8 34 d4 e1                                      ldrh r3, [r4, #0x48]
006ff8b4  14 b0 9d e5                                      ldr fp, [sp, #0x14]
006ff8b8  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006ff8bc  38 00 9d e5                                      ldr r0, [sp, #0x38]
006ff8c0  03 00 5b e1                                      cmp fp, r3
006ff8c4  0b 30 a0 21                                      movhs r3, fp
006ff8c8  0c 00 53 e1                                      cmp r3, ip
006ff8cc  0c 30 a0 31                                      movlo r3, ip
006ff8d0  00 00 5a e1                                      cmp sl, r0
006ff8d4  b8 34 c4 e1                                      strh r3, [r4, #0x48]
006ff8d8  97 ff ff 1a                                      bne #0x6ff73c
006ff8dc  41 df 8d e2                                      add sp, sp, #0x104
006ff8e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006ff8e4  f3 39 f0 eb                                      bl #0x30e0b8
006ff8e8  60 61 85 e5                                      str r6, [r5, #0x160]
006ff8ec  86 00 a0 e1                                      lsl r0, r6, #1
006ff8f0  00 10 a0 e3                                      mov r1, #0
006ff8f4  2b d2 f8 eb                                      bl #0x5341a8
006ff8f8  5c 01 85 e5                                      str r0, [r5, #0x15c]
006ff8fc  ef fc ff ea                                      b #0x6fecc0
006ff900  80 81 95 e5                                      ldr r8, [r5, #0x180]
006ff904  08 00 a0 e1                                      mov r0, r8
006ff908  17 3d f0 eb                                      bl #0x30ed6c
006ff90c  07 10 a0 e1                                      mov r1, r7
006ff910  00 a0 a0 e1                                      mov sl, r0
006ff914  08 00 a0 e1                                      mov r0, r8
006ff918  13 3d f0 eb                                      bl #0x30ed6c
006ff91c  06 10 a0 e1                                      mov r1, r6
006ff920  00 70 a0 e1                                      mov r7, r0
006ff924  08 00 a0 e1                                      mov r0, r8
006ff928  0f 3d f0 eb                                      bl #0x30ed6c
006ff92c  d8 a0 8d e5                                      str sl, [sp, #0xd8]
006ff930  d4 00 8d e5                                      str r0, [sp, #0xd4]
006ff934  dc 70 8d e5                                      str r7, [sp, #0xdc]
006ff938  e9 fc ff ea                                      b #0x6fece4
006ff93c  06 60 a0 e3                                      mov r6, #6
006ff940  96 02 06 e0                                      mul r6, r6, r2
006ff944  e7 ff ff ea                                      b #0x6ff8e8

; FUNCTION 0x006ffa1c, declared_size=96, range_size=96, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode4saveEPcbRKNS_4core8CMatrix4IfEE
; demangled: glitch::scene::CShadowVolumeSceneNode::save(char*, bool, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
006ffa1c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006ffa20  00 50 a0 e1                                      mov r5, r0
006ffa24  0c d0 4d e2                                      sub sp, sp, #0xc
006ffa28  01 00 a0 e1                                      mov r0, r1
006ffa2c  00 10 a0 e3                                      mov r1, #0
006ffa30  03 60 a0 e1                                      mov r6, r3
006ffa34  02 70 a0 e1                                      mov r7, r2
006ffa38  6d c4 f9 eb                                      bl #0x570bf4
006ffa3c  00 30 a0 e3                                      mov r3, #0
006ffa40  00 40 a0 e1                                      mov r4, r0
006ffa44  00 30 8d e5                                      str r3, [sp]
006ffa48  00 c0 95 e5                                      ldr ip, [r5]
006ffa4c  07 20 a0 e1                                      mov r2, r7
006ffa50  06 30 a0 e1                                      mov r3, r6
006ffa54  04 10 a0 e1                                      mov r1, r4
006ffa58  05 00 a0 e1                                      mov r0, r5
006ffa5c  0f e0 a0 e1                                      mov lr, pc
006ffa60  04 f1 9c e5                                      ldr pc, [ip, #0x104]
006ffa64  00 50 a0 e1                                      mov r5, r0
006ffa68  04 00 a0 e1                                      mov r0, r4
006ffa6c  c4 76 f0 eb                                      bl #0x31d584
006ffa70  05 00 a0 e1                                      mov r0, r5
006ffa74  0c d0 8d e2                                      add sp, sp, #0xc
006ffa78  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006ffa7c, declared_size=160, range_size=160, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode19onRegisterSceneNodeEv
; demangled: glitch::scene::CShadowVolumeSceneNode::onRegisterSceneNode()
; decoder-mode: arm
006ffa7c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006ffa80  00 40 a0 e1                                      mov r4, r0
006ffa84  10 01 90 e5                                      ldr r0, [r0, #0x110]
006ffa88  1c d0 4d e2                                      sub sp, sp, #0x1c
006ffa8c  18 50 8d e2                                      add r5, sp, #0x18
006ffa90  00 20 90 e5                                      ldr r2, [r0]
006ffa94  00 30 a0 e3                                      mov r3, #0
006ffa98  05 60 a0 e3                                      mov r6, #5
006ffa9c  24 c0 92 e5                                      ldr ip, [r2, #0x24]
006ffaa0  02 71 e0 e3                                      mvn r7, #0x80000000
006ffaa4  04 30 25 e5                                      str r3, [r5, #-4]!
006ffaa8  05 20 a0 e1                                      mov r2, r5
006ffaac  04 30 8d e5                                      str r3, [sp, #4]
006ffab0  04 10 a0 e1                                      mov r1, r4
006ffab4  01 30 a0 e3                                      mov r3, #1
006ffab8  00 60 8d e5                                      str r6, [sp]
006ffabc  08 70 8d e5                                      str r7, [sp, #8]
006ffac0  3c ff 2f e1                                      blx ip
006ffac4  05 00 a0 e1                                      mov r0, r5
006ffac8  46 44 f0 eb                                      bl #0x310be8
006ffacc  30 21 d4 e5                                      ldrb r2, [r4, #0x130]
006ffad0  00 00 52 e3                                      cmp r2, #0
006ffad4  0d 00 00 1a                                      bne #0x6ffb10
006ffad8  10 01 94 e5                                      ldr r0, [r4, #0x110]
006ffadc  18 50 8d e2                                      add r5, sp, #0x18
006ffae0  04 10 a0 e1                                      mov r1, r4
006ffae4  00 c0 90 e5                                      ldr ip, [r0]
006ffae8  02 30 a0 e3                                      mov r3, #2
006ffaec  24 c0 9c e5                                      ldr ip, [ip, #0x24]
006ffaf0  08 20 25 e5                                      str r2, [r5, #-8]!
006ffaf4  04 20 8d e5                                      str r2, [sp, #4]
006ffaf8  00 60 8d e5                                      str r6, [sp]
006ffafc  08 70 8d e5                                      str r7, [sp, #8]
006ffb00  05 20 a0 e1                                      mov r2, r5
006ffb04  3c ff 2f e1                                      blx ip
006ffb08  05 00 a0 e1                                      mov r0, r5
006ffb0c  35 44 f0 eb                                      bl #0x310be8
006ffb10  01 00 a0 e3                                      mov r0, #1
006ffb14  1c d0 8d e2                                      add sp, sp, #0x1c
006ffb18  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x006ffb1c, declared_size=340, range_size=340, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNodeC1EPNS_5video12IVideoDriverERKN5boost13intrusive_ptrIKNS0_5IMeshEEEiNS0_20E_SHADOW_VOLUME_TYPEEf
; demangled: glitch::scene::CShadowVolumeSceneNode::CShadowVolumeSceneNode(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::scene::IMesh const> const&, int, glitch::scene::E_SHADOW_VOLUME_TYPE, float)
; decoder-mode: arm
006ffb1c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ffb20  38 51 9f e5                                      ldr r5, [pc, #0x138]
006ffb24  38 c1 9f e5                                      ldr ip, [pc, #0x138]
006ffb28  38 e1 9f e5                                      ldr lr, [pc, #0x138]
006ffb2c  05 50 8f e0                                      add r5, pc, r5
006ffb30  0c c0 95 e7                                      ldr ip, [r5, ip]
006ffb34  0e e0 95 e7                                      ldr lr, [r5, lr]
006ffb38  01 70 a0 e3                                      mov r7, #1
006ffb3c  24 60 9c e5                                      ldr r6, [ip, #0x24]
006ffb40  08 e0 8e e2                                      add lr, lr, #8
006ffb44  90 71 80 e5                                      str r7, [r0, #0x190]
006ffb48  00 60 80 e5                                      str r6, [r0]
006ffb4c  8c e1 80 e5                                      str lr, [r0, #0x18c]
006ffb50  0c e0 16 e5                                      ldr lr, [r6, #-0xc]
006ffb54  28 80 9c e5                                      ldr r8, [ip, #0x28]
006ffb58  02 70 a0 e1                                      mov r7, r2
006ffb5c  01 60 a0 e1                                      mov r6, r1
006ffb60  0e 80 80 e7                                      str r8, [r0, lr]
006ffb64  04 10 8c e2                                      add r1, ip, #4
006ffb68  03 20 a0 e1                                      mov r2, r3
006ffb6c  00 40 a0 e1                                      mov r4, r0
006ffb70  18 80 9d e5                                      ldr r8, [sp, #0x18]
006ffb74  aa 68 fa eb                                      bl #0x599e24
006ffb78  ec 20 9f e5                                      ldr r2, [pc, #0xec]
006ffb7c  00 30 a0 e3                                      mov r3, #0
006ffb80  54 31 84 e5                                      str r3, [r4, #0x154]
006ffb84  02 20 95 e7                                      ldr r2, [r5, r2]
006ffb88  34 31 84 e5                                      str r3, [r4, #0x134]
006ffb8c  38 31 84 e5                                      str r3, [r4, #0x138]
006ffb90  4d 1f 82 e2                                      add r1, r2, #0x134
006ffb94  1c 20 82 e2                                      add r2, r2, #0x1c
006ffb98  00 20 84 e5                                      str r2, [r4]
006ffb9c  8c 11 84 e5                                      str r1, [r4, #0x18c]
006ffba0  3c 31 84 e5                                      str r3, [r4, #0x13c]
006ffba4  40 31 84 e5                                      str r3, [r4, #0x140]
006ffba8  44 31 84 e5                                      str r3, [r4, #0x144]
006ffbac  48 31 84 e5                                      str r3, [r4, #0x148]
006ffbb0  4c 31 84 e5                                      str r3, [r4, #0x14c]
006ffbb4  50 31 84 e5                                      str r3, [r4, #0x150]
006ffbb8  00 30 97 e5                                      ldr r3, [r7]
006ffbbc  bf 04 a0 e3                                      mov r0, #0xbf000000
006ffbc0  02 05 80 e2                                      add r0, r0, #0x800000
006ffbc4  58 31 84 e5                                      str r3, [r4, #0x158]
006ffbc8  00 00 53 e3                                      cmp r3, #0
006ffbcc  04 20 93 15                                      ldrne r2, [r3, #4]
006ffbd0  00 10 a0 e3                                      mov r1, #0
006ffbd4  01 20 82 12                                      addne r2, r2, #1
006ffbd8  04 20 83 15                                      strne r2, [r3, #4]
006ffbdc  fe 25 a0 e3                                      mov r2, #0x3f800000
006ffbe0  0f 30 18 e2                                      ands r3, r8, #0xf
006ffbe4  01 30 a0 13                                      movne r3, #1
006ffbe8  70 01 84 e5                                      str r0, [r4, #0x170]
006ffbec  7c 21 84 e5                                      str r2, [r4, #0x17c]
006ffbf0  aa 00 18 e3                                      tst r8, #0xaa
006ffbf4  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
006ffbf8  00 e0 a0 03                                      moveq lr, #0
006ffbfc  01 e0 a0 13                                      movne lr, #1
006ffc00  cc 00 18 e3                                      tst r8, #0xcc
006ffc04  00 c0 a0 03                                      moveq ip, #0
006ffc08  01 c0 a0 13                                      movne ip, #1
006ffc0c  87 c1 c4 e5                                      strb ip, [r4, #0x187]
006ffc10  3f c4 a0 e3                                      mov ip, #0x3f000000
006ffc14  85 31 c4 e5                                      strb r3, [r4, #0x185]
006ffc18  86 e1 c4 e5                                      strb lr, [r4, #0x186]
006ffc1c  88 c1 84 e5                                      str ip, [r4, #0x188]
006ffc20  5c 11 84 e5                                      str r1, [r4, #0x15c]
006ffc24  60 11 84 e5                                      str r1, [r4, #0x160]
006ffc28  64 11 84 e5                                      str r1, [r4, #0x164]
006ffc2c  68 01 84 e5                                      str r0, [r4, #0x168]
006ffc30  6c 01 84 e5                                      str r0, [r4, #0x16c]
006ffc34  74 21 84 e5                                      str r2, [r4, #0x174]
006ffc38  78 21 84 e5                                      str r2, [r4, #0x178]
006ffc3c  84 31 c4 e5                                      strb r3, [r4, #0x184]
006ffc40  04 00 a0 e1                                      mov r0, r4
006ffc44  80 51 84 e5                                      str r5, [r4, #0x180]
006ffc48  53 5d fa eb                                      bl #0x59719c
006ffc4c  04 00 a0 e1                                      mov r0, r4
006ffc50  06 10 a0 e1                                      mov r1, r6
006ffc54  89 67 fa eb                                      bl #0x599a80
006ffc58  04 00 a0 e1                                      mov r0, r4
006ffc5c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
006ffc60  64 4f 29 00 3c 36 00 00 44 2b 00 00 18 0c 00 00  .byte 0x64, 0x4f, 0x29, 0x00, 0x3c, 0x36, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x18, 0x0c, 0x00, 0x00

; FUNCTION 0x006ffc70, declared_size=280, range_size=280, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNodeC2EPNS_5video12IVideoDriverERKN5boost13intrusive_ptrIKNS0_5IMeshEEEiNS0_20E_SHADOW_VOLUME_TYPEEf
; demangled: glitch::scene::CShadowVolumeSceneNode::CShadowVolumeSceneNode(glitch::video::IVideoDriver*, boost::intrusive_ptr<glitch::scene::IMesh const> const&, int, glitch::scene::E_SHADOW_VOLUME_TYPE, float)
; decoder-mode: arm
006ffc70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006ffc74  01 40 a0 e1                                      mov r4, r1
006ffc78  02 50 a0 e1                                      mov r5, r2
006ffc7c  04 10 81 e2                                      add r1, r1, #4
006ffc80  18 20 9d e5                                      ldr r2, [sp, #0x18]
006ffc84  00 60 a0 e1                                      mov r6, r0
006ffc88  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
006ffc8c  03 80 a0 e1                                      mov r8, r3
006ffc90  63 68 fa eb                                      bl #0x599e24
006ffc94  00 20 94 e5                                      ldr r2, [r4]
006ffc98  00 30 a0 e3                                      mov r3, #0
006ffc9c  bf 04 a0 e3                                      mov r0, #0xbf000000
006ffca0  00 20 86 e5                                      str r2, [r6]
006ffca4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
006ffca8  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
006ffcac  02 05 80 e2                                      add r0, r0, #0x800000
006ffcb0  02 10 86 e7                                      str r1, [r6, r2]
006ffcb4  00 20 96 e5                                      ldr r2, [r6]
006ffcb8  20 10 94 e5                                      ldr r1, [r4, #0x20]
006ffcbc  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
006ffcc0  02 10 86 e7                                      str r1, [r6, r2]
006ffcc4  54 31 86 e5                                      str r3, [r6, #0x154]
006ffcc8  34 31 86 e5                                      str r3, [r6, #0x134]
006ffccc  38 31 86 e5                                      str r3, [r6, #0x138]
006ffcd0  3c 31 86 e5                                      str r3, [r6, #0x13c]
006ffcd4  40 31 86 e5                                      str r3, [r6, #0x140]
006ffcd8  44 31 86 e5                                      str r3, [r6, #0x144]
006ffcdc  48 31 86 e5                                      str r3, [r6, #0x148]
006ffce0  4c 31 86 e5                                      str r3, [r6, #0x14c]
006ffce4  50 31 86 e5                                      str r3, [r6, #0x150]
006ffce8  00 30 98 e5                                      ldr r3, [r8]
006ffcec  00 10 a0 e3                                      mov r1, #0
006ffcf0  58 31 86 e5                                      str r3, [r6, #0x158]
006ffcf4  00 00 53 e3                                      cmp r3, #0
006ffcf8  04 20 93 15                                      ldrne r2, [r3, #4]
006ffcfc  01 20 82 12                                      addne r2, r2, #1
006ffd00  04 20 83 15                                      strne r2, [r3, #4]
006ffd04  fe 25 a0 e3                                      mov r2, #0x3f800000
006ffd08  0f 30 17 e2                                      ands r3, r7, #0xf
006ffd0c  01 30 a0 13                                      movne r3, #1
006ffd10  7c 21 86 e5                                      str r2, [r6, #0x17c]
006ffd14  70 01 86 e5                                      str r0, [r6, #0x170]
006ffd18  aa 00 17 e3                                      tst r7, #0xaa
006ffd1c  20 40 9d e5                                      ldr r4, [sp, #0x20]
006ffd20  00 e0 a0 03                                      moveq lr, #0
006ffd24  01 e0 a0 13                                      movne lr, #1
006ffd28  cc 00 17 e3                                      tst r7, #0xcc
006ffd2c  00 c0 a0 03                                      moveq ip, #0
006ffd30  01 c0 a0 13                                      movne ip, #1
006ffd34  87 c1 c6 e5                                      strb ip, [r6, #0x187]
006ffd38  3f c4 a0 e3                                      mov ip, #0x3f000000
006ffd3c  85 31 c6 e5                                      strb r3, [r6, #0x185]
006ffd40  86 e1 c6 e5                                      strb lr, [r6, #0x186]
006ffd44  88 c1 86 e5                                      str ip, [r6, #0x188]
006ffd48  5c 11 86 e5                                      str r1, [r6, #0x15c]
006ffd4c  60 11 86 e5                                      str r1, [r6, #0x160]
006ffd50  64 11 86 e5                                      str r1, [r6, #0x164]
006ffd54  80 41 86 e5                                      str r4, [r6, #0x180]
006ffd58  68 01 86 e5                                      str r0, [r6, #0x168]
006ffd5c  6c 01 86 e5                                      str r0, [r6, #0x16c]
006ffd60  74 21 86 e5                                      str r2, [r6, #0x174]
006ffd64  78 21 86 e5                                      str r2, [r6, #0x178]
006ffd68  84 31 c6 e5                                      strb r3, [r6, #0x184]
006ffd6c  06 00 a0 e1                                      mov r0, r6
006ffd70  09 5d fa eb                                      bl #0x59719c
006ffd74  06 00 a0 e1                                      mov r0, r6
006ffd78  05 10 a0 e1                                      mov r1, r5
006ffd7c  3f 67 fa eb                                      bl #0x599a80
006ffd80  06 00 a0 e1                                      mov r0, r6
006ffd84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006ffee4, declared_size=2868, range_size=2868, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode4saveEPNS_2io10IWriteFileEbRKNS_4core8CMatrix4IfEENS_2os8E_ENDIANE
; demangled: glitch::scene::CShadowVolumeSceneNode::save(glitch::io::IWriteFile*, bool, glitch::core::CMatrix4<float> const&, glitch::os::E_ENDIAN)
; decoder-mode: arm
006ffee4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006ffee8  00 40 52 e2                                      subs r4, r2, #0
006ffeec  9c d0 4d e2                                      sub sp, sp, #0x9c
006ffef0  38 10 8d e5                                      str r1, [sp, #0x38]
006ffef4  03 50 a0 e1                                      mov r5, r3
006ffef8  00 80 a0 e1                                      mov r8, r0
006ffefc  02 00 00 1a                                      bne #0x6fff0c
006fff00  04 00 a0 e1                                      mov r0, r4
006fff04  9c d0 8d e2                                      add sp, sp, #0x9c
006fff08  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006fff0c  c0 20 9d e5                                      ldr r2, [sp, #0xc0]
006fff10  00 30 90 e5                                      ldr r3, [r0]
006fff14  01 00 52 e3                                      cmp r2, #1
006fff18  00 20 a0 13                                      movne r2, #0
006fff1c  01 20 a0 03                                      moveq r2, #1
006fff20  1c 20 8d e5                                      str r2, [sp, #0x1c]
006fff24  0f e0 a0 e1                                      mov lr, pc
006fff28  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
006fff2c  53 34 05 e3                                      movw r3, #0x5453
006fff30  53 36 45 e3                                      movt r3, #0x5653
006fff34  38 00 9d e5                                      ldr r0, [sp, #0x38]
006fff38  68 30 8d e5                                      str r3, [sp, #0x68]
006fff3c  00 30 a0 e3                                      mov r3, #0
006fff40  6c 30 cd e5                                      strb r3, [sp, #0x6c]
006fff44  00 30 90 e5                                      ldr r3, [r0]
006fff48  04 20 a0 e3                                      mov r2, #4
006fff4c  68 10 8d e2                                      add r1, sp, #0x68
006fff50  0f e0 a0 e1                                      mov lr, pc
006fff54  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006fff58  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
006fff5c  38 b0 9d e5                                      ldr fp, [sp, #0x38]
006fff60  00 60 a0 e1                                      mov r6, r0
006fff64  00 00 51 e3                                      cmp r1, #0
006fff68  12 30 a0 13                                      movne r3, #0x12
006fff6c  34 22 01 13                                      movwne r2, #0x1234
006fff70  75 20 cd 15                                      strbne r2, [sp, #0x75]
006fff74  74 30 cd 15                                      strbne r3, [sp, #0x74]
006fff78  b4 37 dd 11                                      ldrhne r3, [sp, #0x74]
006fff7c  34 32 01 03                                      movweq r3, #0x1234
006fff80  98 10 8d e2                                      add r1, sp, #0x98
006fff84  b4 29 cd 11                                      strhne r2, [sp, #0x94]
006fff88  b2 30 61 e1                                      strh r3, [r1, #-2]!
006fff8c  02 20 a0 e3                                      mov r2, #2
006fff90  00 30 9b e5                                      ldr r3, [fp]
006fff94  0b 00 a0 e1                                      mov r0, fp
006fff98  0f e0 a0 e1                                      mov lr, pc
006fff9c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006fffa0  61 1f 88 e2                                      add r1, r8, #0x184
006fffa4  00 40 a0 e1                                      mov r4, r0
006fffa8  02 10 81 e2                                      add r1, r1, #2
006fffac  00 30 9b e5                                      ldr r3, [fp]
006fffb0  38 00 9d e5                                      ldr r0, [sp, #0x38]
006fffb4  01 20 a0 e3                                      mov r2, #1
006fffb8  0f e0 a0 e1                                      mov lr, pc
006fffbc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006fffc0  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
006fffc4  00 40 84 e0                                      add r4, r4, r0
006fffc8  06 40 84 e0                                      add r4, r4, r6
006fffcc  00 00 5e e3                                      cmp lr, #0
006fffd0  59 02 00 0a                                      beq #0x70093c
006fffd4  6b 01 d8 e5                                      ldrb r0, [r8, #0x16b]
006fffd8  6a 11 d8 e5                                      ldrb r1, [r8, #0x16a]
006fffdc  69 21 d8 e5                                      ldrb r2, [r8, #0x169]
006fffe0  68 31 d8 e5                                      ldrb r3, [r8, #0x168]
006fffe4  74 00 cd e5                                      strb r0, [sp, #0x74]
006fffe8  75 10 cd e5                                      strb r1, [sp, #0x75]
006fffec  76 20 cd e5                                      strb r2, [sp, #0x76]
006ffff0  77 30 cd e5                                      strb r3, [sp, #0x77]
006ffff4  74 30 9d e5                                      ldr r3, [sp, #0x74]
006ffff8  98 60 8d e2                                      add r6, sp, #0x98
006ffffc  04 20 a0 e3                                      mov r2, #4
00700000  10 30 26 e5                                      str r3, [r6, #-0x10]!
00700004  06 10 a0 e1                                      mov r1, r6
00700008  00 30 9b e5                                      ldr r3, [fp]
0070000c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00700010  0f e0 a0 e1                                      mov lr, pc
00700014  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00700018  6e 11 d8 e5                                      ldrb r1, [r8, #0x16e]
0070001c  6d 21 d8 e5                                      ldrb r2, [r8, #0x16d]
00700020  6c 31 d8 e5                                      ldrb r3, [r8, #0x16c]
00700024  00 70 a0 e1                                      mov r7, r0
00700028  6f 01 d8 e5                                      ldrb r0, [r8, #0x16f]
0070002c  75 10 cd e5                                      strb r1, [sp, #0x75]
00700030  76 20 cd e5                                      strb r2, [sp, #0x76]
00700034  74 00 cd e5                                      strb r0, [sp, #0x74]
00700038  77 30 cd e5                                      strb r3, [sp, #0x77]
0070003c  74 30 9d e5                                      ldr r3, [sp, #0x74]
00700040  06 10 a0 e1                                      mov r1, r6
00700044  04 20 a0 e3                                      mov r2, #4
00700048  88 30 8d e5                                      str r3, [sp, #0x88]
0070004c  00 30 9b e5                                      ldr r3, [fp]
00700050  38 00 9d e5                                      ldr r0, [sp, #0x38]
00700054  0f e0 a0 e1                                      mov lr, pc
00700058  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0070005c  73 c1 d8 e5                                      ldrb ip, [r8, #0x173]
00700060  72 11 d8 e5                                      ldrb r1, [r8, #0x172]
00700064  71 21 d8 e5                                      ldrb r2, [r8, #0x171]
00700068  70 31 d8 e5                                      ldrb r3, [r8, #0x170]
0070006c  74 c0 cd e5                                      strb ip, [sp, #0x74]
00700070  75 10 cd e5                                      strb r1, [sp, #0x75]
00700074  76 20 cd e5                                      strb r2, [sp, #0x76]
00700078  77 30 cd e5                                      strb r3, [sp, #0x77]
0070007c  74 30 9d e5                                      ldr r3, [sp, #0x74]
00700080  00 70 87 e0                                      add r7, r7, r0
00700084  06 10 a0 e1                                      mov r1, r6
00700088  88 30 8d e5                                      str r3, [sp, #0x88]
0070008c  04 20 a0 e3                                      mov r2, #4
00700090  00 30 9b e5                                      ldr r3, [fp]
00700094  38 00 9d e5                                      ldr r0, [sp, #0x38]
00700098  0f e0 a0 e1                                      mov lr, pc
0070009c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007000a0  77 c1 d8 e5                                      ldrb ip, [r8, #0x177]
007000a4  76 11 d8 e5                                      ldrb r1, [r8, #0x176]
007000a8  75 21 d8 e5                                      ldrb r2, [r8, #0x175]
007000ac  74 31 d8 e5                                      ldrb r3, [r8, #0x174]
007000b0  74 c0 cd e5                                      strb ip, [sp, #0x74]
007000b4  75 10 cd e5                                      strb r1, [sp, #0x75]
007000b8  76 20 cd e5                                      strb r2, [sp, #0x76]
007000bc  77 30 cd e5                                      strb r3, [sp, #0x77]
007000c0  74 30 9d e5                                      ldr r3, [sp, #0x74]
007000c4  04 40 87 e0                                      add r4, r7, r4
007000c8  00 40 84 e0                                      add r4, r4, r0
007000cc  88 30 8d e5                                      str r3, [sp, #0x88]
007000d0  06 10 a0 e1                                      mov r1, r6
007000d4  04 20 a0 e3                                      mov r2, #4
007000d8  00 30 9b e5                                      ldr r3, [fp]
007000dc  38 00 9d e5                                      ldr r0, [sp, #0x38]
007000e0  0f e0 a0 e1                                      mov lr, pc
007000e4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007000e8  7b c1 d8 e5                                      ldrb ip, [r8, #0x17b]
007000ec  7a 11 d8 e5                                      ldrb r1, [r8, #0x17a]
007000f0  79 21 d8 e5                                      ldrb r2, [r8, #0x179]
007000f4  78 31 d8 e5                                      ldrb r3, [r8, #0x178]
007000f8  74 c0 cd e5                                      strb ip, [sp, #0x74]
007000fc  75 10 cd e5                                      strb r1, [sp, #0x75]
00700100  76 20 cd e5                                      strb r2, [sp, #0x76]
00700104  77 30 cd e5                                      strb r3, [sp, #0x77]
00700108  74 20 9d e5                                      ldr r2, [sp, #0x74]
0070010c  00 30 9b e5                                      ldr r3, [fp]
00700110  00 40 84 e0                                      add r4, r4, r0
00700114  88 20 8d e5                                      str r2, [sp, #0x88]
00700118  06 10 a0 e1                                      mov r1, r6
0070011c  04 20 a0 e3                                      mov r2, #4
00700120  38 00 9d e5                                      ldr r0, [sp, #0x38]
00700124  0f e0 a0 e1                                      mov lr, pc
00700128  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0070012c  7c 31 d8 e5                                      ldrb r3, [r8, #0x17c]
00700130  7f c1 d8 e5                                      ldrb ip, [r8, #0x17f]
00700134  7e 11 d8 e5                                      ldrb r1, [r8, #0x17e]
00700138  7d 21 d8 e5                                      ldrb r2, [r8, #0x17d]
0070013c  74 c0 cd e5                                      strb ip, [sp, #0x74]
00700140  75 10 cd e5                                      strb r1, [sp, #0x75]
00700144  76 20 cd e5                                      strb r2, [sp, #0x76]
00700148  77 30 cd e5                                      strb r3, [sp, #0x77]
0070014c  74 30 9d e5                                      ldr r3, [sp, #0x74]
00700150  00 40 84 e0                                      add r4, r4, r0
00700154  38 20 9d e5                                      ldr r2, [sp, #0x38]
00700158  88 30 8d e5                                      str r3, [sp, #0x88]
0070015c  06 10 a0 e1                                      mov r1, r6
00700160  00 30 92 e5                                      ldr r3, [r2]
00700164  02 00 a0 e1                                      mov r0, r2
00700168  04 20 a0 e3                                      mov r2, #4
0070016c  0f e0 a0 e1                                      mov lr, pc
00700170  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00700174  64 21 98 e5                                      ldr r2, [r8, #0x164]
00700178  00 30 a0 e3                                      mov r3, #0
0070017c  04 40 80 e0                                      add r4, r0, r4
00700180  03 00 52 e1                                      cmp r2, r3
00700184  4c 40 8d e5                                      str r4, [sp, #0x4c]
00700188  84 30 8d e5                                      str r3, [sp, #0x84]
0070018c  80 30 8d e5                                      str r3, [sp, #0x80]
00700190  02 00 a0 01                                      moveq r0, r2
00700194  0e 00 00 0a                                      beq #0x7001d4
00700198  34 e1 98 e5                                      ldr lr, [r8, #0x134]
0070019c  03 c0 a0 e1                                      mov ip, r3
007001a0  03 10 a0 e1                                      mov r1, r3
007001a4  03 00 8e e0                                      add r0, lr, r3
007001a8  18 40 90 e5                                      ldr r4, [r0, #0x18]
007001ac  01 10 81 e2                                      add r1, r1, #1
007001b0  01 00 52 e1                                      cmp r2, r1
007001b4  04 c0 8c e0                                      add ip, ip, r4
007001b8  80 c0 8d e5                                      str ip, [sp, #0x80]
007001bc  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
007001c0  84 40 9d e5                                      ldr r4, [sp, #0x84]
007001c4  4c 30 83 e2                                      add r3, r3, #0x4c
007001c8  00 00 84 e0                                      add r0, r4, r0
007001cc  84 00 8d e5                                      str r0, [sp, #0x84]
007001d0  f3 ff ff 8a                                      bhi #0x7001a4
007001d4  00 10 a0 e3                                      mov r1, #0
007001d8  80 00 a0 e1                                      lsl r0, r0, #1
007001dc  f1 cf f8 eb                                      bl #0x5341a8
007001e0  84 20 9d e5                                      ldr r2, [sp, #0x84]
007001e4  ff 1f 0f e3                                      movw r1, #0xffff
007001e8  00 00 8d e5                                      str r0, [sp]
007001ec  82 20 a0 e1                                      lsl r2, r2, #1
007001f0  9a 38 f0 eb                                      bl #0x30e460
007001f4  80 00 9d e5                                      ldr r0, [sp, #0x80]
007001f8  00 10 a0 e3                                      mov r1, #0
007001fc  80 00 a0 e1                                      lsl r0, r0, #1
00700200  e8 cf f8 eb                                      bl #0x5341a8
00700204  14 00 8d e5                                      str r0, [sp, #0x14]
00700208  ec 30 98 e5                                      ldr r3, [r8, #0xec]
0070020c  00 20 a0 e3                                      mov r2, #0
00700210  84 20 8d e5                                      str r2, [sp, #0x84]
00700214  02 00 53 e1                                      cmp r3, r2
00700218  5c 20 8d e5                                      str r2, [sp, #0x5c]
0070021c  60 20 8d e5                                      str r2, [sp, #0x60]
00700220  64 20 8d e5                                      str r2, [sp, #0x64]
00700224  00 c0 9d e5                                      ldr ip, [sp]
00700228  05 00 00 0a                                      beq #0x700244
0070022c  03 00 a0 e1                                      mov r0, r3
00700230  00 30 93 e5                                      ldr r3, [r3]
00700234  0f e0 a0 e1                                      mov lr, pc
00700238  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0070023c  00 c0 9d e5                                      ldr ip, [sp]
00700240  00 50 a0 e1                                      mov r5, r0
00700244  64 21 98 e5                                      ldr r2, [r8, #0x164]
00700248  00 00 52 e3                                      cmp r2, #0
0070024c  4b 01 00 0a                                      beq #0x700780
00700250  50 b0 8d e2                                      add fp, sp, #0x50
00700254  34 11 98 e5                                      ldr r1, [r8, #0x134]
00700258  92 e0 8d e2                                      add lr, sp, #0x92
0070025c  18 b0 8d e5                                      str fp, [sp, #0x18]
00700260  3c e0 8d e5                                      str lr, [sp, #0x3c]
00700264  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00700268  00 30 a0 e3                                      mov r3, #0
0070026c  74 00 8d e2                                      add r0, sp, #0x74
00700270  64 b0 8d e2                                      add fp, sp, #0x64
00700274  04 e0 8e e2                                      add lr, lr, #4
00700278  0c 80 8d e5                                      str r8, [sp, #0xc]
0070027c  40 30 8d e5                                      str r3, [sp, #0x40]
00700280  34 30 8d e5                                      str r3, [sp, #0x34]
00700284  2c 30 8d e5                                      str r3, [sp, #0x2c]
00700288  20 00 8d e5                                      str r0, [sp, #0x20]
0070028c  48 b0 8d e5                                      str fp, [sp, #0x48]
00700290  24 e0 8d e5                                      str lr, [sp, #0x24]
00700294  03 80 a0 e1                                      mov r8, r3
00700298  08 00 81 e0                                      add r0, r1, r8
0070029c  18 30 90 e5                                      ldr r3, [r0, #0x18]
007002a0  00 e0 a0 e1                                      mov lr, r0
007002a4  00 00 53 e3                                      cmp r3, #0
007002a8  d5 00 00 0a                                      beq #0x700604
007002ac  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
007002b0  55 15 05 e3                                      movw r1, #0x5555
007002b4  01 17 81 e1                                      orr r1, r1, r1, lsl #14
007002b8  72 20 ff e6                                      uxth r2, r2
007002bc  10 20 8d e5                                      str r2, [sp, #0x10]
007002c0  70 b0 8d e2                                      add fp, sp, #0x70
007002c4  0c 20 a0 e1                                      mov r2, ip
007002c8  30 10 8d e5                                      str r1, [sp, #0x30]
007002cc  03 c0 a0 e1                                      mov ip, r3
007002d0  40 60 9d e5                                      ldr r6, [sp, #0x40]
007002d4  08 30 a0 e1                                      mov r3, r8
007002d8  00 40 a0 e3                                      mov r4, #0
007002dc  44 b0 8d e5                                      str fp, [sp, #0x44]
007002e0  02 80 a0 e1                                      mov r8, r2
007002e4  0a 00 00 ea                                      b #0x700314
007002e8  14 b0 9d e5                                      ldr fp, [sp, #0x14]
007002ec  01 40 84 e2                                      add r4, r4, #1
007002f0  86 20 a0 e1                                      lsl r2, r6, #1
007002f4  0c 00 54 e1                                      cmp r4, ip
007002f8  01 60 86 e2                                      add r6, r6, #1
007002fc  b2 10 8b e1                                      strh r1, [fp, r2]
00700300  76 60 ff e6                                      uxth r6, r6
00700304  b4 00 00 0a                                      beq #0x7005dc
00700308  0c e0 9d e5                                      ldr lr, [sp, #0xc]
0070030c  34 01 9e e5                                      ldr r0, [lr, #0x134]
00700310  03 00 80 e0                                      add r0, r0, r3
00700314  14 10 90 e5                                      ldr r1, [r0, #0x14]
00700318  84 20 a0 e1                                      lsl r2, r4, #1
0070031c  10 e0 9d e5                                      ldr lr, [sp, #0x10]
00700320  b2 20 91 e1                                      ldrh r2, [r1, r2]
00700324  ff bf 0f e3                                      movw fp, #0xffff
00700328  02 20 8e e0                                      add r2, lr, r2
0070032c  72 20 ff e6                                      uxth r2, r2
00700330  82 70 a0 e1                                      lsl r7, r2, #1
00700334  b7 10 98 e1                                      ldrh r1, [r8, r7]
00700338  0b 00 51 e1                                      cmp r1, fp
0070033c  e9 ff ff 1a                                      bne #0x7002e8
00700340  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
00700344  0c 10 a0 e3                                      mov r1, #0xc
00700348  02 20 6e e0                                      rsb r2, lr, r2
0070034c  91 02 02 e0                                      mul r2, r1, r2
00700350  10 10 90 e5                                      ldr r1, [r0, #0x10]
00700354  02 b0 91 e7                                      ldr fp, [r1, r2]
00700358  02 20 81 e0                                      add r2, r1, r2
0070035c  50 b0 8d e5                                      str fp, [sp, #0x50]
00700360  04 90 92 e5                                      ldr sb, [r2, #4]
00700364  0b 00 a0 e1                                      mov r0, fp
00700368  54 90 8d e5                                      str sb, [sp, #0x54]
0070036c  08 a0 92 e5                                      ldr sl, [r2, #8]
00700370  58 a0 8d e5                                      str sl, [sp, #0x58]
00700374  04 10 95 e5                                      ldr r1, [r5, #4]
00700378  04 30 8d e5                                      str r3, [sp, #4]
0070037c  00 c0 8d e5                                      str ip, [sp]
00700380  79 3a f0 eb                                      bl #0x30ed6c
00700384  14 10 95 e5                                      ldr r1, [r5, #0x14]
00700388  00 20 a0 e1                                      mov r2, r0
0070038c  09 00 a0 e1                                      mov r0, sb
00700390  08 20 8d e5                                      str r2, [sp, #8]
00700394  74 3a f0 eb                                      bl #0x30ed6c
00700398  08 20 9d e5                                      ldr r2, [sp, #8]
0070039c  00 10 a0 e1                                      mov r1, r0
007003a0  02 00 a0 e1                                      mov r0, r2
007003a4  fe 39 f0 eb                                      bl #0x30eba4
007003a8  24 10 95 e5                                      ldr r1, [r5, #0x24]
007003ac  00 20 a0 e1                                      mov r2, r0
007003b0  0a 00 a0 e1                                      mov r0, sl
007003b4  08 20 8d e5                                      str r2, [sp, #8]
007003b8  6b 3a f0 eb                                      bl #0x30ed6c
007003bc  08 20 9d e5                                      ldr r2, [sp, #8]
007003c0  00 10 a0 e1                                      mov r1, r0
007003c4  02 00 a0 e1                                      mov r0, r2
007003c8  f5 39 f0 eb                                      bl #0x30eba4
007003cc  34 10 95 e5                                      ldr r1, [r5, #0x34]
007003d0  f3 39 f0 eb                                      bl #0x30eba4
007003d4  28 00 8d e5                                      str r0, [sp, #0x28]
007003d8  08 10 95 e5                                      ldr r1, [r5, #8]
007003dc  0b 00 a0 e1                                      mov r0, fp
007003e0  61 3a f0 eb                                      bl #0x30ed6c
007003e4  18 10 95 e5                                      ldr r1, [r5, #0x18]
007003e8  00 20 a0 e1                                      mov r2, r0
007003ec  09 00 a0 e1                                      mov r0, sb
007003f0  08 20 8d e5                                      str r2, [sp, #8]
007003f4  5c 3a f0 eb                                      bl #0x30ed6c
007003f8  08 20 9d e5                                      ldr r2, [sp, #8]
007003fc  00 10 a0 e1                                      mov r1, r0
00700400  02 00 a0 e1                                      mov r0, r2
00700404  e6 39 f0 eb                                      bl #0x30eba4
00700408  28 10 95 e5                                      ldr r1, [r5, #0x28]
0070040c  00 20 a0 e1                                      mov r2, r0
00700410  0a 00 a0 e1                                      mov r0, sl
00700414  08 20 8d e5                                      str r2, [sp, #8]
00700418  53 3a f0 eb                                      bl #0x30ed6c
0070041c  08 20 9d e5                                      ldr r2, [sp, #8]
00700420  00 10 a0 e1                                      mov r1, r0
00700424  02 00 a0 e1                                      mov r0, r2
00700428  dd 39 f0 eb                                      bl #0x30eba4
0070042c  38 10 95 e5                                      ldr r1, [r5, #0x38]
00700430  db 39 f0 eb                                      bl #0x30eba4
00700434  00 10 95 e5                                      ldr r1, [r5]
00700438  00 20 a0 e1                                      mov r2, r0
0070043c  0b 00 a0 e1                                      mov r0, fp
00700440  08 20 8d e5                                      str r2, [sp, #8]
00700444  48 3a f0 eb                                      bl #0x30ed6c
00700448  10 10 95 e5                                      ldr r1, [r5, #0x10]
0070044c  00 b0 a0 e1                                      mov fp, r0
00700450  09 00 a0 e1                                      mov r0, sb
00700454  44 3a f0 eb                                      bl #0x30ed6c
00700458  00 10 a0 e1                                      mov r1, r0
0070045c  0b 00 a0 e1                                      mov r0, fp
00700460  cf 39 f0 eb                                      bl #0x30eba4
00700464  20 10 95 e5                                      ldr r1, [r5, #0x20]
00700468  00 90 a0 e1                                      mov sb, r0
0070046c  0a 00 a0 e1                                      mov r0, sl
00700470  3d 3a f0 eb                                      bl #0x30ed6c
00700474  00 10 a0 e1                                      mov r1, r0
00700478  09 00 a0 e1                                      mov r0, sb
0070047c  c8 39 f0 eb                                      bl #0x30eba4
00700480  30 10 95 e5                                      ldr r1, [r5, #0x30]
00700484  c6 39 f0 eb                                      bl #0x30eba4
00700488  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0070048c  50 00 8d e5                                      str r0, [sp, #0x50]
00700490  28 b0 9d e5                                      ldr fp, [sp, #0x28]
00700494  08 20 9d e5                                      ldr r2, [sp, #8]
00700498  00 00 51 e3                                      cmp r1, #0
0070049c  54 b0 8d e5                                      str fp, [sp, #0x54]
007004a0  58 20 8d e5                                      str r2, [sp, #0x58]
007004a4  04 30 9d e5                                      ldr r3, [sp, #4]
007004a8  00 c0 9d e5                                      ldr ip, [sp]
007004ac  23 00 00 0a                                      beq #0x700540
007004b0  18 e0 9d e5                                      ldr lr, [sp, #0x18]
007004b4  24 b0 9d e5                                      ldr fp, [sp, #0x24]
007004b8  03 00 de e5                                      ldrb r0, [lr, #3]
007004bc  02 10 de e5                                      ldrb r1, [lr, #2]
007004c0  01 20 de e5                                      ldrb r2, [lr, #1]
007004c4  74 00 cd e5                                      strb r0, [sp, #0x74]
007004c8  24 00 9d e5                                      ldr r0, [sp, #0x24]
007004cc  76 20 cd e5                                      strb r2, [sp, #0x76]
007004d0  75 10 cd e5                                      strb r1, [sp, #0x75]
007004d4  0e 20 a0 e1                                      mov r2, lr
007004d8  08 90 d2 e4                                      ldrb sb, [r2], #8
007004dc  02 e0 d0 e5                                      ldrb lr, [r0, #2]
007004e0  00 10 db e5                                      ldrb r1, [fp]
007004e4  03 a0 d0 e5                                      ldrb sl, [r0, #3]
007004e8  20 b0 9d e5                                      ldr fp, [sp, #0x20]
007004ec  01 00 d0 e5                                      ldrb r0, [r0, #1]
007004f0  77 90 cd e5                                      strb sb, [sp, #0x77]
007004f4  00 90 9b e5                                      ldr sb, [fp]
007004f8  75 e0 cd e5                                      strb lr, [sp, #0x75]
007004fc  74 a0 cd e5                                      strb sl, [sp, #0x74]
00700500  76 00 cd e5                                      strb r0, [sp, #0x76]
00700504  77 10 cd e5                                      strb r1, [sp, #0x77]
00700508  00 10 9b e5                                      ldr r1, [fp]
0070050c  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00700510  50 90 8d e5                                      str sb, [sp, #0x50]
00700514  08 00 de e5                                      ldrb r0, [lr, #8]
00700518  54 10 8d e5                                      str r1, [sp, #0x54]
0070051c  03 10 d2 e5                                      ldrb r1, [r2, #3]
00700520  74 10 cd e5                                      strb r1, [sp, #0x74]
00700524  02 10 d2 e5                                      ldrb r1, [r2, #2]
00700528  75 10 cd e5                                      strb r1, [sp, #0x75]
0070052c  01 20 d2 e5                                      ldrb r2, [r2, #1]
00700530  77 00 cd e5                                      strb r0, [sp, #0x77]
00700534  76 20 cd e5                                      strb r2, [sp, #0x76]
00700538  00 20 9b e5                                      ldr r2, [fp]
0070053c  58 20 8d e5                                      str r2, [sp, #0x58]
00700540  60 20 9d e5                                      ldr r2, [sp, #0x60]
00700544  64 a0 9d e5                                      ldr sl, [sp, #0x64]
00700548  0a 00 52 e1                                      cmp r2, sl
0070054c  37 00 00 0a                                      beq #0x700630
00700550  50 10 9d e5                                      ldr r1, [sp, #0x50]
00700554  00 10 82 e5                                      str r1, [r2]
00700558  54 10 9d e5                                      ldr r1, [sp, #0x54]
0070055c  04 10 82 e5                                      str r1, [r2, #4]
00700560  58 10 9d e5                                      ldr r1, [sp, #0x58]
00700564  08 10 82 e5                                      str r1, [r2, #8]
00700568  60 20 9d e5                                      ldr r2, [sp, #0x60]
0070056c  0c 20 82 e2                                      add r2, r2, #0xc
00700570  60 20 8d e5                                      str r2, [sp, #0x60]
00700574  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00700578  b4 28 dd e1                                      ldrh r2, [sp, #0x84]
0070057c  00 00 51 e3                                      cmp r1, #0
00700580  b2 29 cd e1                                      strh r2, [sp, #0x92]
00700584  07 00 00 0a                                      beq #0x7005a8
00700588  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0070058c  20 b0 9d e5                                      ldr fp, [sp, #0x20]
00700590  01 10 d2 e5                                      ldrb r1, [r2, #1]
00700594  00 20 d2 e5                                      ldrb r2, [r2]
00700598  74 10 cd e5                                      strb r1, [sp, #0x74]
0070059c  75 20 cd e5                                      strb r2, [sp, #0x75]
007005a0  b0 20 db e1                                      ldrh r2, [fp]
007005a4  b2 29 cd e1                                      strh r2, [sp, #0x92]
007005a8  b7 20 88 e1                                      strh r2, [r8, r7]
007005ac  b2 e9 dd e1                                      ldrh lr, [sp, #0x92]
007005b0  14 00 9d e5                                      ldr r0, [sp, #0x14]
007005b4  86 20 a0 e1                                      lsl r2, r6, #1
007005b8  01 40 84 e2                                      add r4, r4, #1
007005bc  b2 e0 80 e1                                      strh lr, [r0, r2]
007005c0  84 20 9d e5                                      ldr r2, [sp, #0x84]
007005c4  01 60 86 e2                                      add r6, r6, #1
007005c8  0c 00 54 e1                                      cmp r4, ip
007005cc  01 20 82 e2                                      add r2, r2, #1
007005d0  84 20 8d e5                                      str r2, [sp, #0x84]
007005d4  76 60 ff e6                                      uxth r6, r6
007005d8  4a ff ff 1a                                      bne #0x700308
007005dc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007005e0  08 c0 a0 e1                                      mov ip, r8
007005e4  03 80 a0 e1                                      mov r8, r3
007005e8  40 30 9d e5                                      ldr r3, [sp, #0x40]
007005ec  34 11 90 e5                                      ldr r1, [r0, #0x134]
007005f0  64 21 90 e5                                      ldr r2, [r0, #0x164]
007005f4  04 40 83 e0                                      add r4, r3, r4
007005f8  74 40 ff e6                                      uxth r4, r4
007005fc  40 40 8d e5                                      str r4, [sp, #0x40]
00700600  08 e0 81 e0                                      add lr, r1, r8
00700604  34 b0 9d e5                                      ldr fp, [sp, #0x34]
00700608  4c 80 88 e2                                      add r8, r8, #0x4c
0070060c  01 b0 8b e2                                      add fp, fp, #1
00700610  34 b0 8d e5                                      str fp, [sp, #0x34]
00700614  0b 00 52 e1                                      cmp r2, fp
00700618  1c 30 9e e5                                      ldr r3, [lr, #0x1c]
0070061c  57 00 00 9a                                      bls #0x700780
00700620  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
00700624  03 e0 8e e0                                      add lr, lr, r3
00700628  2c e0 8d e5                                      str lr, [sp, #0x2c]
0070062c  19 ff ff ea                                      b #0x700298
00700630  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
00700634  30 00 9d e5                                      ldr r0, [sp, #0x30]
00700638  0a 10 61 e0                                      rsb r1, r1, sl
0070063c  41 11 a0 e1                                      asr r1, r1, #2
00700640  01 21 81 e0                                      add r2, r1, r1, lsl #2
00700644  02 22 82 e0                                      add r2, r2, r2, lsl #4
00700648  02 24 82 e0                                      add r2, r2, r2, lsl #8
0070064c  02 28 82 e0                                      add r2, r2, r2, lsl #16
00700650  82 20 81 e0                                      add r2, r1, r2, lsl #1
00700654  01 00 52 e3                                      cmp r2, #1
00700658  02 e0 82 20                                      addhs lr, r2, r2
0070065c  01 e0 82 32                                      addlo lr, r2, #1
00700660  00 00 5e e1                                      cmp lr, r0
00700664  42 00 00 8a                                      bhi #0x700774
00700668  0e 00 52 e1                                      cmp r2, lr
0070066c  40 00 00 8a                                      bhi #0x700774
00700670  0e 10 a0 e1                                      mov r1, lr
00700674  44 20 9d e5                                      ldr r2, [sp, #0x44]
00700678  48 00 9d e5                                      ldr r0, [sp, #0x48]
0070067c  04 30 8d e5                                      str r3, [sp, #4]
00700680  00 c0 8d e5                                      str ip, [sp]
00700684  70 e0 8d e5                                      str lr, [sp, #0x70]
00700688  ba fc ff eb                                      bl #0x6ff978
0070068c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00700690  00 90 a0 e1                                      mov sb, r0
00700694  04 30 9d e5                                      ldr r3, [sp, #4]
00700698  0a a0 62 e0                                      rsb sl, r2, sl
0070069c  4a a1 a0 e1                                      asr sl, sl, #2
007006a0  00 c0 9d e5                                      ldr ip, [sp]
007006a4  0a 11 8a e0                                      add r1, sl, sl, lsl #2
007006a8  01 12 81 e0                                      add r1, r1, r1, lsl #4
007006ac  01 14 81 e0                                      add r1, r1, r1, lsl #8
007006b0  01 18 81 e0                                      add r1, r1, r1, lsl #16
007006b4  81 a0 8a e0                                      add sl, sl, r1, lsl #1
007006b8  00 00 5a e3                                      cmp sl, #0
007006bc  00 20 a0 d1                                      movle r2, r0
007006c0  0d 00 00 da                                      ble #0x7006fc
007006c4  0a 00 a0 e1                                      mov r0, sl
007006c8  09 10 a0 e1                                      mov r1, sb
007006cc  00 e0 92 e5                                      ldr lr, [r2]
007006d0  01 00 50 e2                                      subs r0, r0, #1
007006d4  00 e0 81 e5                                      str lr, [r1]
007006d8  04 e0 92 e5                                      ldr lr, [r2, #4]
007006dc  04 e0 81 e5                                      str lr, [r1, #4]
007006e0  08 e0 92 e5                                      ldr lr, [r2, #8]
007006e4  0c 20 82 e2                                      add r2, r2, #0xc
007006e8  08 e0 81 e5                                      str lr, [r1, #8]
007006ec  0c 10 81 e2                                      add r1, r1, #0xc
007006f0  f5 ff ff 1a                                      bne #0x7006cc
007006f4  0c 20 a0 e3                                      mov r2, #0xc
007006f8  92 9a 22 e0                                      mla r2, r2, sl, sb
007006fc  50 10 9d e5                                      ldr r1, [sp, #0x50]
00700700  48 00 9d e5                                      ldr r0, [sp, #0x48]
00700704  0c a0 82 e2                                      add sl, r2, #0xc
00700708  00 10 82 e5                                      str r1, [r2]
0070070c  54 10 9d e5                                      ldr r1, [sp, #0x54]
00700710  04 10 82 e5                                      str r1, [r2, #4]
00700714  58 10 9d e5                                      ldr r1, [sp, #0x58]
00700718  08 10 82 e5                                      str r1, [r2, #8]
0070071c  5c e0 9d e5                                      ldr lr, [sp, #0x5c]
00700720  64 20 9d e5                                      ldr r2, [sp, #0x64]
00700724  04 30 8d e5                                      str r3, [sp, #4]
00700728  0e 10 a0 e1                                      mov r1, lr
0070072c  02 20 6e e0                                      rsb r2, lr, r2
00700730  42 e1 a0 e1                                      asr lr, r2, #2
00700734  00 c0 8d e5                                      str ip, [sp]
00700738  0e 21 8e e0                                      add r2, lr, lr, lsl #2
0070073c  02 22 82 e0                                      add r2, r2, r2, lsl #4
00700740  02 24 82 e0                                      add r2, r2, r2, lsl #8
00700744  02 28 82 e0                                      add r2, r2, r2, lsl #16
00700748  82 20 8e e0                                      add r2, lr, r2, lsl #1
0070074c  aa fc ff eb                                      bl #0x6ff9fc
00700750  70 20 9d e5                                      ldr r2, [sp, #0x70]
00700754  0c 10 a0 e3                                      mov r1, #0xc
00700758  5c 90 8d e5                                      str sb, [sp, #0x5c]
0070075c  91 92 22 e0                                      mla r2, r1, r2, sb
00700760  60 a0 8d e5                                      str sl, [sp, #0x60]
00700764  64 20 8d e5                                      str r2, [sp, #0x64]
00700768  00 c0 9d e5                                      ldr ip, [sp]
0070076c  04 30 9d e5                                      ldr r3, [sp, #4]
00700770  7f ff ff ea                                      b #0x700574
00700774  55 e5 05 e3                                      movw lr, #0x5555
00700778  0e e7 8e e1                                      orr lr, lr, lr, lsl #14
0070077c  bb ff ff ea                                      b #0x700670
00700780  00 00 5c e3                                      cmp ip, #0
00700784  01 00 00 0a                                      beq #0x700790
00700788  0c 00 a0 e1                                      mov r0, ip
0070078c  49 36 f0 eb                                      bl #0x30e0b8
00700790  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00700794  38 b0 9d e5                                      ldr fp, [sp, #0x38]
00700798  00 00 50 e3                                      cmp r0, #0
0070079c  84 30 dd 15                                      ldrbne r3, [sp, #0x84]
007007a0  87 00 dd 15                                      ldrbne r0, [sp, #0x87]
007007a4  86 10 dd 15                                      ldrbne r1, [sp, #0x86]
007007a8  85 20 dd 15                                      ldrbne r2, [sp, #0x85]
007007ac  74 00 cd 15                                      strbne r0, [sp, #0x74]
007007b0  75 10 cd 15                                      strbne r1, [sp, #0x75]
007007b4  76 20 cd 15                                      strbne r2, [sp, #0x76]
007007b8  77 30 cd 15                                      strbne r3, [sp, #0x77]
007007bc  74 30 9d 15                                      ldrne r3, [sp, #0x74]
007007c0  84 30 9d 05                                      ldreq r3, [sp, #0x84]
007007c4  98 10 8d e2                                      add r1, sp, #0x98
007007c8  04 20 a0 e3                                      mov r2, #4
007007cc  1c 30 21 e5                                      str r3, [r1, #-0x1c]!
007007d0  00 30 9b e5                                      ldr r3, [fp]
007007d4  0b 00 a0 e1                                      mov r0, fp
007007d8  0f e0 a0 e1                                      mov lr, pc
007007dc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007007e0  4c e0 9d e5                                      ldr lr, [sp, #0x4c]
007007e4  84 30 9d e5                                      ldr r3, [sp, #0x84]
007007e8  0c 20 a0 e3                                      mov r2, #0xc
007007ec  00 40 8e e0                                      add r4, lr, r0
007007f0  92 03 02 e0                                      mul r2, r2, r3
007007f4  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
007007f8  00 30 9b e5                                      ldr r3, [fp]
007007fc  38 00 9d e5                                      ldr r0, [sp, #0x38]
00700800  0f e0 a0 e1                                      mov lr, pc
00700804  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00700808  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0070080c  00 40 84 e0                                      add r4, r4, r0
00700810  38 b0 9d e5                                      ldr fp, [sp, #0x38]
00700814  00 00 51 e3                                      cmp r1, #0
00700818  80 30 dd 15                                      ldrbne r3, [sp, #0x80]
0070081c  83 00 dd 15                                      ldrbne r0, [sp, #0x83]
00700820  82 10 dd 15                                      ldrbne r1, [sp, #0x82]
00700824  81 20 dd 15                                      ldrbne r2, [sp, #0x81]
00700828  74 00 cd 15                                      strbne r0, [sp, #0x74]
0070082c  75 10 cd 15                                      strbne r1, [sp, #0x75]
00700830  76 20 cd 15                                      strbne r2, [sp, #0x76]
00700834  77 30 cd 15                                      strbne r3, [sp, #0x77]
00700838  74 30 9d 15                                      ldrne r3, [sp, #0x74]
0070083c  80 30 9d 05                                      ldreq r3, [sp, #0x80]
00700840  98 10 8d e2                                      add r1, sp, #0x98
00700844  04 20 a0 e3                                      mov r2, #4
00700848  20 30 21 e5                                      str r3, [r1, #-0x20]!
0070084c  00 30 9b e5                                      ldr r3, [fp]
00700850  0b 00 a0 e1                                      mov r0, fp
00700854  0f e0 a0 e1                                      mov lr, pc
00700858  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0070085c  80 20 9d e5                                      ldr r2, [sp, #0x80]
00700860  00 40 84 e0                                      add r4, r4, r0
00700864  00 30 9b e5                                      ldr r3, [fp]
00700868  82 20 a0 e1                                      lsl r2, r2, #1
0070086c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00700870  14 10 9d e5                                      ldr r1, [sp, #0x14]
00700874  0f e0 a0 e1                                      mov lr, pc
00700878  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0070087c  14 e0 9d e5                                      ldr lr, [sp, #0x14]
00700880  00 40 84 e0                                      add r4, r4, r0
00700884  00 00 5e e3                                      cmp lr, #0
00700888  01 00 00 0a                                      beq #0x700894
0070088c  0e 00 a0 e1                                      mov r0, lr
00700890  08 36 f0 eb                                      bl #0x30e0b8
00700894  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00700898  38 b0 9d e5                                      ldr fp, [sp, #0x38]
0070089c  00 10 a0 e3                                      mov r1, #0
007008a0  00 00 50 e3                                      cmp r0, #0
007008a4  84 30 9d 15                                      ldrne r3, [sp, #0x84]
007008a8  b4 38 dd 01                                      ldrheq r3, [sp, #0x84]
007008ac  b0 19 cd e1                                      strh r1, [sp, #0x90]
007008b0  53 24 e7 17                                      ubfxne r2, r3, #8, #8
007008b4  74 20 cd 15                                      strbne r2, [sp, #0x74]
007008b8  75 30 cd 15                                      strbne r3, [sp, #0x75]
007008bc  bc 38 cd 11                                      strhne r3, [sp, #0x8c]
007008c0  b4 37 dd 11                                      ldrhne r3, [sp, #0x74]
007008c4  90 10 8d e2                                      add r1, sp, #0x90
007008c8  02 20 a0 e3                                      mov r2, #2
007008cc  be 38 cd e1                                      strh r3, [sp, #0x8e]
007008d0  00 30 9b e5                                      ldr r3, [fp]
007008d4  0b 00 a0 e1                                      mov r0, fp
007008d8  0f e0 a0 e1                                      mov lr, pc
007008dc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007008e0  00 30 9b e5                                      ldr r3, [fp]
007008e4  00 40 84 e0                                      add r4, r4, r0
007008e8  8e 10 8d e2                                      add r1, sp, #0x8e
007008ec  38 00 9d e5                                      ldr r0, [sp, #0x38]
007008f0  02 20 a0 e3                                      mov r2, #2
007008f4  0f e0 a0 e1                                      mov lr, pc
007008f8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007008fc  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00700900  00 40 84 e0                                      add r4, r4, r0
00700904  00 00 53 e3                                      cmp r3, #0
00700908  7c fd ff 0a                                      beq #0x6fff00
0070090c  64 20 9d e5                                      ldr r2, [sp, #0x64]
00700910  03 10 a0 e1                                      mov r1, r3
00700914  64 00 8d e2                                      add r0, sp, #0x64
00700918  02 30 63 e0                                      rsb r3, r3, r2
0070091c  43 31 a0 e1                                      asr r3, r3, #2
00700920  03 21 83 e0                                      add r2, r3, r3, lsl #2
00700924  02 22 82 e0                                      add r2, r2, r2, lsl #4
00700928  02 24 82 e0                                      add r2, r2, r2, lsl #8
0070092c  02 28 82 e0                                      add r2, r2, r2, lsl #16
00700930  82 20 83 e0                                      add r2, r3, r2, lsl #1
00700934  30 fc ff eb                                      bl #0x6ff9fc
00700938  70 fd ff ea                                      b #0x6fff00
0070093c  68 31 98 e5                                      ldr r3, [r8, #0x168]
00700940  38 00 9d e5                                      ldr r0, [sp, #0x38]
00700944  98 60 8d e2                                      add r6, sp, #0x98
00700948  10 30 26 e5                                      str r3, [r6, #-0x10]!
0070094c  04 20 a0 e3                                      mov r2, #4
00700950  06 10 a0 e1                                      mov r1, r6
00700954  00 30 90 e5                                      ldr r3, [r0]
00700958  0f e0 a0 e1                                      mov lr, pc
0070095c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00700960  6c 31 98 e5                                      ldr r3, [r8, #0x16c]
00700964  38 b0 9d e5                                      ldr fp, [sp, #0x38]
00700968  00 90 a0 e1                                      mov sb, r0
0070096c  88 30 8d e5                                      str r3, [sp, #0x88]
00700970  00 30 9b e5                                      ldr r3, [fp]
00700974  06 10 a0 e1                                      mov r1, r6
00700978  04 20 a0 e3                                      mov r2, #4
0070097c  0b 00 a0 e1                                      mov r0, fp
00700980  0f e0 a0 e1                                      mov lr, pc
00700984  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00700988  70 31 98 e5                                      ldr r3, [r8, #0x170]
0070098c  38 e0 9d e5                                      ldr lr, [sp, #0x38]
00700990  00 b0 a0 e1                                      mov fp, r0
00700994  88 30 8d e5                                      str r3, [sp, #0x88]
00700998  00 30 9e e5                                      ldr r3, [lr]
0070099c  0e 00 a0 e1                                      mov r0, lr
007009a0  06 10 a0 e1                                      mov r1, r6
007009a4  04 20 a0 e3                                      mov r2, #4
007009a8  0f e0 a0 e1                                      mov lr, pc
007009ac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007009b0  74 31 98 e5                                      ldr r3, [r8, #0x174]
007009b4  00 a0 a0 e1                                      mov sl, r0
007009b8  38 00 9d e5                                      ldr r0, [sp, #0x38]
007009bc  88 30 8d e5                                      str r3, [sp, #0x88]
007009c0  06 10 a0 e1                                      mov r1, r6
007009c4  04 20 a0 e3                                      mov r2, #4
007009c8  00 30 90 e5                                      ldr r3, [r0]
007009cc  0f e0 a0 e1                                      mov lr, pc
007009d0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007009d4  38 10 9d e5                                      ldr r1, [sp, #0x38]
007009d8  78 21 98 e5                                      ldr r2, [r8, #0x178]
007009dc  00 70 a0 e1                                      mov r7, r0
007009e0  00 30 91 e5                                      ldr r3, [r1]
007009e4  01 00 a0 e1                                      mov r0, r1
007009e8  88 20 8d e5                                      str r2, [sp, #0x88]
007009ec  06 10 a0 e1                                      mov r1, r6
007009f0  04 20 a0 e3                                      mov r2, #4
007009f4  0f e0 a0 e1                                      mov lr, pc
007009f8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007009fc  09 70 87 e0                                      add r7, r7, sb
00700a00  04 40 87 e0                                      add r4, r7, r4
00700a04  00 40 84 e0                                      add r4, r4, r0
00700a08  0b 40 84 e0                                      add r4, r4, fp
00700a0c  7c 31 98 e5                                      ldr r3, [r8, #0x17c]
00700a10  0a 40 84 e0                                      add r4, r4, sl
00700a14  ce fd ff ea                                      b #0x700154

; FUNCTION 0x00700ad4, declared_size=528, range_size=528, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode6renderEPv
; demangled: glitch::scene::CShadowVolumeSceneNode::render(void*)
; decoder-mode: arm
00700ad4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00700ad8  10 21 90 e5                                      ldr r2, [r0, #0x110]
00700adc  64 31 90 e5                                      ldr r3, [r0, #0x164]
00700ae0  ec 41 9f e5                                      ldr r4, [pc, #0x1ec]
00700ae4  14 60 92 e5                                      ldr r6, [r2, #0x14]
00700ae8  14 d0 4d e2                                      sub sp, sp, #0x14
00700aec  00 50 a0 e1                                      mov r5, r0
00700af0  00 00 53 e3                                      cmp r3, #0
00700af4  00 00 56 13                                      cmpne r6, #0
00700af8  01 70 a0 e1                                      mov r7, r1
00700afc  04 40 8f e0                                      add r4, pc, r4
00700b00  01 00 00 1a                                      bne #0x700b0c
00700b04  14 d0 8d e2                                      add sp, sp, #0x14
00700b08  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00700b0c  ec 30 90 e5                                      ldr r3, [r0, #0xec]
00700b10  00 20 96 e5                                      ldr r2, [r6]
00700b14  03 00 a0 e1                                      mov r0, r3
00700b18  00 30 93 e5                                      ldr r3, [r3]
00700b1c  6c 80 92 e5                                      ldr r8, [r2, #0x6c]
00700b20  0f e0 a0 e1                                      mov lr, pc
00700b24  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00700b28  01 10 a0 e3                                      mov r1, #1
00700b2c  00 20 a0 e1                                      mov r2, r0
00700b30  06 00 a0 e1                                      mov r0, r6
00700b34  38 ff 2f e1                                      blx r8
00700b38  01 00 57 e3                                      cmp r7, #1
00700b3c  3e 00 00 0a                                      beq #0x700c3c
00700b40  02 00 57 e3                                      cmp r7, #2
00700b44  47 00 00 0a                                      beq #0x700c68
00700b48  88 71 9f e5                                      ldr r7, [pc, #0x188]
00700b4c  07 30 94 e7                                      ldr r3, [r4, r7]
00700b50  00 00 93 e5                                      ldr r0, [r3]
00700b54  00 00 50 e3                                      cmp r0, #0
00700b58  ff 20 a0 03                                      moveq r2, #0xff
00700b5c  01 00 00 0a                                      beq #0x700b68
00700b60  73 14 fb eb                                      bl #0x5c5d34
00700b64  00 20 a0 e1                                      mov r2, r0
00700b68  00 30 a0 e3                                      mov r3, #0
00700b6c  07 10 94 e7                                      ldr r1, [r4, r7]
00700b70  06 00 a0 e1                                      mov r0, r6
00700b74  fb b1 fa eb                                      bl #0x5ad368
00700b78  64 31 95 e5                                      ldr r3, [r5, #0x164]
00700b7c  00 00 53 e3                                      cmp r3, #0
00700b80  df ff ff 0a                                      beq #0x700b04
00700b84  00 40 a0 e3                                      mov r4, #0
00700b88  04 70 a0 e1                                      mov r7, r4
00700b8c  0c a0 8d e2                                      add sl, sp, #0xc
00700b90  08 90 8d e2                                      add sb, sp, #8
00700b94  04 80 a0 e1                                      mov r8, r4
00700b98  34 21 95 e5                                      ldr r2, [r5, #0x134]
00700b9c  06 00 a0 e1                                      mov r0, r6
00700ba0  0a 10 a0 e1                                      mov r1, sl
00700ba4  04 c0 82 e0                                      add ip, r2, r4
00700ba8  20 c0 9c e5                                      ldr ip, [ip, #0x20]
00700bac  08 30 a0 e1                                      mov r3, r8
00700bb0  01 70 87 e2                                      add r7, r7, #1
00700bb4  00 00 5c e3                                      cmp ip, #0
00700bb8  0c c0 8d e5                                      str ip, [sp, #0xc]
00700bbc  00 20 9c 15                                      ldrne r2, [ip]
00700bc0  01 20 82 12                                      addne r2, r2, #1
00700bc4  00 20 8c 15                                      strne r2, [ip]
00700bc8  34 21 95 15                                      ldrne r2, [r5, #0x134]
00700bcc  00 c0 96 e5                                      ldr ip, [r6]
00700bd0  04 20 82 e0                                      add r2, r2, r4
00700bd4  58 c0 9c e5                                      ldr ip, [ip, #0x58]
00700bd8  2c 20 82 e2                                      add r2, r2, #0x2c
00700bdc  08 80 8d e5                                      str r8, [sp, #8]
00700be0  00 90 8d e5                                      str sb, [sp]
00700be4  3c ff 2f e1                                      blx ip
00700be8  08 00 9d e5                                      ldr r0, [sp, #8]
00700bec  4c 40 84 e2                                      add r4, r4, #0x4c
00700bf0  00 00 50 e3                                      cmp r0, #0
00700bf4  00 00 00 0a                                      beq #0x700bfc
00700bf8  61 72 f0 eb                                      bl #0x31d584
00700bfc  0c b0 9d e5                                      ldr fp, [sp, #0xc]
00700c00  00 00 5b e3                                      cmp fp, #0
00700c04  08 00 00 0a                                      beq #0x700c2c
00700c08  00 30 9b e5                                      ldr r3, [fp]
00700c0c  01 30 43 e2                                      sub r3, r3, #1
00700c10  00 00 53 e3                                      cmp r3, #0
00700c14  00 30 8b e5                                      str r3, [fp]
00700c18  03 00 00 1a                                      bne #0x700c2c
00700c1c  0b 00 a0 e1                                      mov r0, fp
00700c20  7d 7f fa eb                                      bl #0x5a0a1c
00700c24  0b 00 a0 e1                                      mov r0, fp
00700c28  a0 35 f0 eb                                      bl #0x30e2b0
00700c2c  64 31 95 e5                                      ldr r3, [r5, #0x164]
00700c30  07 00 53 e1                                      cmp r3, r7
00700c34  d7 ff ff 8a                                      bhi #0x700b98
00700c38  b1 ff ff ea                                      b #0x700b04
00700c3c  86 31 d5 e5                                      ldrb r3, [r5, #0x186]
00700c40  00 00 53 e3                                      cmp r3, #0
00700c44  12 00 00 0a                                      beq #0x700c94
00700c48  88 70 9f e5                                      ldr r7, [pc, #0x88]
00700c4c  88 20 9f e5                                      ldr r2, [pc, #0x88]
00700c50  07 30 94 e7                                      ldr r3, [r4, r7]
00700c54  02 20 94 e7                                      ldr r2, [r4, r2]
00700c58  00 30 93 e5                                      ldr r3, [r3]
00700c5c  00 20 d2 e5                                      ldrb r2, [r2]
00700c60  08 20 c3 e5                                      strb r2, [r3, #8]
00700c64  b8 ff ff ea                                      b #0x700b4c
00700c68  86 31 d5 e5                                      ldrb r3, [r5, #0x186]
00700c6c  00 00 53 e3                                      cmp r3, #0
00700c70  0f 00 00 0a                                      beq #0x700cb4
00700c74  5c 70 9f e5                                      ldr r7, [pc, #0x5c]
00700c78  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00700c7c  07 30 94 e7                                      ldr r3, [r4, r7]
00700c80  02 20 94 e7                                      ldr r2, [r4, r2]
00700c84  00 30 93 e5                                      ldr r3, [r3]
00700c88  01 20 d2 e5                                      ldrb r2, [r2, #1]
00700c8c  08 20 c3 e5                                      strb r2, [r3, #8]
00700c90  ad ff ff ea                                      b #0x700b4c
00700c94  3c 70 9f e5                                      ldr r7, [pc, #0x3c]
00700c98  40 20 9f e5                                      ldr r2, [pc, #0x40]
00700c9c  07 30 94 e7                                      ldr r3, [r4, r7]
00700ca0  02 20 94 e7                                      ldr r2, [r4, r2]
00700ca4  00 30 93 e5                                      ldr r3, [r3]
00700ca8  00 20 d2 e5                                      ldrb r2, [r2]
00700cac  08 20 c3 e5                                      strb r2, [r3, #8]
00700cb0  a5 ff ff ea                                      b #0x700b4c
00700cb4  1c 70 9f e5                                      ldr r7, [pc, #0x1c]
00700cb8  20 20 9f e5                                      ldr r2, [pc, #0x20]
00700cbc  07 30 94 e7                                      ldr r3, [r4, r7]
00700cc0  02 20 94 e7                                      ldr r2, [r4, r2]
00700cc4  00 30 93 e5                                      ldr r3, [r3]
00700cc8  01 20 d2 e5                                      ldrb r2, [r2, #1]
00700ccc  08 20 c3 e5                                      strb r2, [r3, #8]
00700cd0  9d ff ff ea                                      b #0x700b4c
; mapping-symbol data/literal pool
00700cd4  94 3f 29 00 04 24 00 00 6c 09 00 00 d8 3d 00 00  .byte 0x94, 0x3f, 0x29, 0x00, 0x04, 0x24, 0x00, 0x00, 0x6c, 0x09, 0x00, 0x00, 0xd8, 0x3d, 0x00, 0x00

; FUNCTION 0x00700fd4, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNodeD1Ev
; demangled: glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode()
; decoder-mode: arm
00700fd4  70 40 2d e9                                      push {r4, r5, r6, lr}
00700fd8  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
00700fdc  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
00700fe0  00 40 a0 e1                                      mov r4, r0
00700fe4  05 50 8f e0                                      add r5, pc, r5
00700fe8  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
00700fec  03 30 95 e7                                      ldr r3, [r5, r3]
00700ff0  08 d0 4d e2                                      sub sp, sp, #8
00700ff4  00 00 50 e3                                      cmp r0, #0
00700ff8  4d 2f 83 e2                                      add r2, r3, #0x134
00700ffc  1c 30 83 e2                                      add r3, r3, #0x1c
00701000  00 30 84 e5                                      str r3, [r4]
00701004  8c 21 84 e5                                      str r2, [r4, #0x18c]
00701008  00 00 00 0a                                      beq #0x701010
0070100c  29 34 f0 eb                                      bl #0x30e0b8
00701010  34 11 94 e5                                      ldr r1, [r4, #0x134]
00701014  38 21 94 e5                                      ldr r2, [r4, #0x138]
00701018  4d 6f 84 e2                                      add r6, r4, #0x134
0070101c  02 00 51 e1                                      cmp r1, r2
00701020  02 00 00 0a                                      beq #0x701030
00701024  06 00 a0 e1                                      mov r0, r6
00701028  04 30 8d e2                                      add r3, sp, #4
0070102c  c2 ff ff eb                                      bl #0x700f3c
00701030  04 00 a0 e1                                      mov r0, r4
00701034  7a 62 fa eb                                      bl #0x599a24
00701038  58 01 94 e5                                      ldr r0, [r4, #0x158]
0070103c  00 00 50 e3                                      cmp r0, #0
00701040  00 00 00 0a                                      beq #0x701048
00701044  4e 71 f0 eb                                      bl #0x31d584
00701048  4c 01 94 e5                                      ldr r0, [r4, #0x14c]
0070104c  00 00 50 e3                                      cmp r0, #0
00701050  00 00 00 0a                                      beq #0x701058
00701054  fd 3c f0 eb                                      bl #0x310450
00701058  05 0d 84 e2                                      add r0, r4, #0x140
0070105c  79 fb ff eb                                      bl #0x6ffe48
00701060  06 00 a0 e1                                      mov r0, r6
00701064  a3 ff ff eb                                      bl #0x700ef8
00701068  20 10 9f e5                                      ldr r1, [pc, #0x20]
0070106c  04 00 a0 e1                                      mov r0, r4
00701070  01 10 95 e7                                      ldr r1, [r5, r1]
00701074  04 10 81 e2                                      add r1, r1, #4
00701078  24 63 fa eb                                      bl #0x599d10
0070107c  04 00 a0 e1                                      mov r0, r4
00701080  08 d0 8d e2                                      add sp, sp, #8
00701084  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00701088  ac 3a 29 00 18 0c 00 00 3c 36 00 00              .byte 0xac, 0x3a, 0x29, 0x00, 0x18, 0x0c, 0x00, 0x00, 0x3c, 0x36, 0x00, 0x00

; FUNCTION 0x00701094, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNodeD0Ev
; demangled: glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode()
; decoder-mode: arm
00701094  10 40 2d e9                                      push {r4, lr}
00701098  00 40 a0 e1                                      mov r4, r0
0070109c  cc ff ff eb                                      bl #0x700fd4
007010a0  04 00 a0 e1                                      mov r0, r4
007010a4  81 34 f0 eb                                      bl #0x30e2b0
007010a8  04 00 a0 e1                                      mov r0, r4
007010ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007010b0, declared_size=180, range_size=180, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNodeD2Ev
; demangled: glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode()
; decoder-mode: arm
007010b0  70 40 2d e9                                      push {r4, r5, r6, lr}
007010b4  00 30 91 e5                                      ldr r3, [r1]
007010b8  00 40 a0 e1                                      mov r4, r0
007010bc  08 d0 4d e2                                      sub sp, sp, #8
007010c0  00 30 80 e5                                      str r3, [r0]
007010c4  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
007010c8  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
007010cc  01 50 a0 e1                                      mov r5, r1
007010d0  03 20 80 e7                                      str r2, [r0, r3]
007010d4  00 30 90 e5                                      ldr r3, [r0]
007010d8  20 20 91 e5                                      ldr r2, [r1, #0x20]
007010dc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
007010e0  03 20 80 e7                                      str r2, [r0, r3]
007010e4  5c 01 90 e5                                      ldr r0, [r0, #0x15c]
007010e8  00 00 50 e3                                      cmp r0, #0
007010ec  00 00 00 0a                                      beq #0x7010f4
007010f0  f0 33 f0 eb                                      bl #0x30e0b8
007010f4  34 11 94 e5                                      ldr r1, [r4, #0x134]
007010f8  38 21 94 e5                                      ldr r2, [r4, #0x138]
007010fc  4d 6f 84 e2                                      add r6, r4, #0x134
00701100  02 00 51 e1                                      cmp r1, r2
00701104  02 00 00 0a                                      beq #0x701114
00701108  06 00 a0 e1                                      mov r0, r6
0070110c  04 30 8d e2                                      add r3, sp, #4
00701110  89 ff ff eb                                      bl #0x700f3c
00701114  04 00 a0 e1                                      mov r0, r4
00701118  41 62 fa eb                                      bl #0x599a24
0070111c  58 01 94 e5                                      ldr r0, [r4, #0x158]
00701120  00 00 50 e3                                      cmp r0, #0
00701124  00 00 00 0a                                      beq #0x70112c
00701128  15 71 f0 eb                                      bl #0x31d584
0070112c  4c 01 94 e5                                      ldr r0, [r4, #0x14c]
00701130  00 00 50 e3                                      cmp r0, #0
00701134  00 00 00 0a                                      beq #0x70113c
00701138  c4 3c f0 eb                                      bl #0x310450
0070113c  05 0d 84 e2                                      add r0, r4, #0x140
00701140  40 fb ff eb                                      bl #0x6ffe48
00701144  06 00 a0 e1                                      mov r0, r6
00701148  6a ff ff eb                                      bl #0x700ef8
0070114c  04 00 a0 e1                                      mov r0, r4
00701150  04 10 85 e2                                      add r1, r5, #4
00701154  ed 62 fa eb                                      bl #0x599d10
00701158  04 00 a0 e1                                      mov r0, r4
0070115c  08 d0 8d e2                                      add sp, sp, #8
00701160  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00701998, declared_size=2244, range_size=2244, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode22createSilhouetteVolumeERKN5boost13intrusive_ptrIKNS0_11CMeshBufferEEERKNS_5video16CPrimitiveStream10SMapBufferIKtEEjRKNS_4core8vector3dIfEENS9_12E_LIGHT_TYPEEPNS1_13SShadowVolumeEb
; demangled: glitch::scene::CShadowVolumeSceneNode::createSilhouetteVolume(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&, glitch::video::CPrimitiveStream::SMapBuffer<unsigned short const> const&, unsigned int, glitch::core::vector3d<float> const&, glitch::video::E_LIGHT_TYPE, glitch::scene::CShadowVolumeSceneNode::SShadowVolume*, bool)
; decoder-mode: arm
00701998  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0070199c  fc d0 4d e2                                      sub sp, sp, #0xfc
007019a0  28 41 9d e5                                      ldr r4, [sp, #0x128]
007019a4  1c 00 8d e5                                      str r0, [sp, #0x1c]
007019a8  2c 01 dd e5                                      ldrb r0, [sp, #0x12c]
007019ac  00 70 94 e5                                      ldr r7, [r4]
007019b0  01 80 a0 e1                                      mov r8, r1
007019b4  20 51 9d e5                                      ldr r5, [sp, #0x120]
007019b8  00 00 57 e3                                      cmp r7, #0
007019bc  20 00 8d e5                                      str r0, [sp, #0x20]
007019c0  18 02 00 0a                                      beq #0x702228
007019c4  00 60 95 e5                                      ldr r6, [r5]
007019c8  04 00 94 e5                                      ldr r0, [r4, #4]
007019cc  06 10 a0 e1                                      mov r1, r6
007019d0  6d 31 f0 eb                                      bl #0x30df8c
007019d4  00 00 50 e3                                      cmp r0, #0
007019d8  e8 01 00 1a                                      bne #0x702180
007019dc  18 30 97 e5                                      ldr r3, [r7, #0x18]
007019e0  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
007019e4  07 00 a0 e1                                      mov r0, r7
007019e8  cc 10 8d e2                                      add r1, sp, #0xcc
007019ec  02 00 53 e1                                      cmp r3, r2
007019f0  1c 30 87 15                                      strne r3, [r7, #0x1c]
007019f4  00 60 95 15                                      ldrne r6, [r5]
007019f8  04 c0 95 e5                                      ldr ip, [r5, #4]
007019fc  08 e0 95 e5                                      ldr lr, [r5, #8]
00701a00  00 00 94 15                                      ldrne r0, [r4]
00701a04  08 30 a0 e1                                      mov r3, r8
00701a08  24 21 9d e5                                      ldr r2, [sp, #0x124]
00701a0c  cc 60 8d e5                                      str r6, [sp, #0xcc]
00701a10  d0 c0 8d e5                                      str ip, [sp, #0xd0]
00701a14  d4 e0 8d e5                                      str lr, [sp, #0xd4]
00701a18  4e fe ff eb                                      bl #0x701358
00701a1c  00 30 95 e5                                      ldr r3, [r5]
00701a20  00 70 94 e5                                      ldr r7, [r4]
00701a24  04 30 84 e5                                      str r3, [r4, #4]
00701a28  04 30 95 e5                                      ldr r3, [r5, #4]
00701a2c  08 30 84 e5                                      str r3, [r4, #8]
00701a30  08 30 95 e5                                      ldr r3, [r5, #8]
00701a34  0c 30 84 e5                                      str r3, [r4, #0xc]
00701a38  24 01 9d e5                                      ldr r0, [sp, #0x124]
00701a3c  00 60 95 e5                                      ldr r6, [r5]
00701a40  04 10 95 e5                                      ldr r1, [r5, #4]
00701a44  08 80 95 e5                                      ldr r8, [r5, #8]
00701a48  02 00 50 e3                                      cmp r0, #2
00701a4c  c0 60 8d e5                                      str r6, [sp, #0xc0]
00701a50  c4 10 8d e5                                      str r1, [sp, #0xc4]
00701a54  c8 80 8d e5                                      str r8, [sp, #0xc8]
00701a58  e2 01 00 0a                                      beq #0x7021e8
00701a5c  20 30 9d e5                                      ldr r3, [sp, #0x20]
00701a60  00 00 53 e3                                      cmp r3, #0
00701a64  5b 01 00 0a                                      beq #0x701fd8
00701a68  14 c0 97 e5                                      ldr ip, [r7, #0x14]
00701a6c  30 c0 8d e5                                      str ip, [sp, #0x30]
00701a70  00 00 5c e3                                      cmp ip, #0
00701a74  10 60 97 e5                                      ldr r6, [r7, #0x10]
00701a78  56 01 00 0a                                      beq #0x701fd8
00701a7c  b4 00 8d e2                                      add r0, sp, #0xb4
00701a80  c0 10 8d e2                                      add r1, sp, #0xc0
00701a84  a8 20 8d e2                                      add r2, sp, #0xa8
00701a88  9c 30 8d e2                                      add r3, sp, #0x9c
00701a8c  40 00 8d e5                                      str r0, [sp, #0x40]
00701a90  38 10 8d e5                                      str r1, [sp, #0x38]
00701a94  44 20 8d e5                                      str r2, [sp, #0x44]
00701a98  48 30 8d e5                                      str r3, [sp, #0x48]
00701a9c  90 c0 8d e2                                      add ip, sp, #0x90
00701aa0  84 00 8d e2                                      add r0, sp, #0x84
00701aa4  78 10 8d e2                                      add r1, sp, #0x78
00701aa8  dc 20 8d e2                                      add r2, sp, #0xdc
00701aac  e0 30 8d e2                                      add r3, sp, #0xe0
00701ab0  00 50 a0 e3                                      mov r5, #0
00701ab4  4c c0 8d e5                                      str ip, [sp, #0x4c]
00701ab8  50 00 8d e5                                      str r0, [sp, #0x50]
00701abc  54 10 8d e5                                      str r1, [sp, #0x54]
00701ac0  58 20 8d e5                                      str r2, [sp, #0x58]
00701ac4  5c 30 8d e5                                      str r3, [sp, #0x5c]
00701ac8  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
00701acc  04 00 00 ea                                      b #0x701ae4
00701ad0  30 30 9d e5                                      ldr r3, [sp, #0x30]
00701ad4  01 50 85 e2                                      add r5, r5, #1
00701ad8  06 60 86 e2                                      add r6, r6, #6
00701adc  03 00 55 e1                                      cmp r5, r3
00701ae0  3c 01 00 0a                                      beq #0x701fd8
00701ae4  24 30 97 e5                                      ldr r3, [r7, #0x24]
00701ae8  05 30 d3 e7                                      ldrb r3, [r3, r5]
00701aec  00 00 53 e3                                      cmp r3, #0
00701af0  f6 ff ff 0a                                      beq #0x701ad0
00701af4  b0 a0 d6 e1                                      ldrh sl, [r6]
00701af8  b2 c0 d6 e1                                      ldrh ip, [r6, #2]
00701afc  b4 e0 d6 e1                                      ldrh lr, [r6, #4]
00701b00  8a a0 a0 e1                                      lsl sl, sl, #1
00701b04  0c 70 a0 e3                                      mov r7, #0xc
00701b08  7a a0 ff e6                                      uxth sl, sl
00701b0c  8c c0 a0 e1                                      lsl ip, ip, #1
00701b10  10 b0 94 e5                                      ldr fp, [r4, #0x10]
00701b14  97 0a 09 e0                                      mul sb, r7, sl
00701b18  7c c0 ff e6                                      uxth ip, ip
00701b1c  24 c0 8d e5                                      str ip, [sp, #0x24]
00701b20  8e e0 a0 e1                                      lsl lr, lr, #1
00701b24  24 c1 9d e5                                      ldr ip, [sp, #0x124]
00701b28  01 00 8a e2                                      add r0, sl, #1
00701b2c  7e e0 ff e6                                      uxth lr, lr
00701b30  09 20 8b e0                                      add r2, fp, sb
00701b34  34 00 8d e5                                      str r0, [sp, #0x34]
00701b38  08 10 a0 e1                                      mov r1, r8
00701b3c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00701b40  38 30 9d e5                                      ldr r3, [sp, #0x38]
00701b44  14 e0 8d e5                                      str lr, [sp, #0x14]
00701b48  01 e0 a0 e3                                      mov lr, #1
00701b4c  00 50 8d e8                                      stm sp, {ip, lr}
00701b50  d2 f3 ff eb                                      bl #0x6feaa0
00701b54  24 10 9d e5                                      ldr r1, [sp, #0x24]
00701b58  34 00 9d e5                                      ldr r0, [sp, #0x34]
00701b5c  01 50 85 e2                                      add r5, r5, #1
00701b60  97 01 01 e0                                      mul r1, r7, r1
00701b64  97 00 03 e0                                      mul r3, r7, r0
00701b68  18 10 8d e5                                      str r1, [sp, #0x18]
00701b6c  b4 10 9d e5                                      ldr r1, [sp, #0xb4]
00701b70  03 20 8b e0                                      add r2, fp, r3
00701b74  06 60 86 e2                                      add r6, r6, #6
00701b78  03 10 8b e7                                      str r1, [fp, r3]
00701b7c  24 30 9d e5                                      ldr r3, [sp, #0x24]
00701b80  44 00 9d e5                                      ldr r0, [sp, #0x44]
00701b84  08 10 a0 e1                                      mov r1, r8
00701b88  01 c0 83 e2                                      add ip, r3, #1
00701b8c  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
00701b90  04 30 82 e5                                      str r3, [r2, #4]
00701b94  bc e0 9d e5                                      ldr lr, [sp, #0xbc]
00701b98  38 30 9d e5                                      ldr r3, [sp, #0x38]
00701b9c  08 e0 82 e5                                      str lr, [r2, #8]
00701ba0  24 e1 9d e5                                      ldr lr, [sp, #0x124]
00701ba4  10 b0 94 e5                                      ldr fp, [r4, #0x10]
00701ba8  01 20 a0 e3                                      mov r2, #1
00701bac  00 e0 8d e5                                      str lr, [sp]
00701bb0  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00701bb4  04 10 8d e9                                      stmib sp, {r2, ip}
00701bb8  0e 20 8b e0                                      add r2, fp, lr
00701bbc  b7 f3 ff eb                                      bl #0x6feaa0
00701bc0  08 c0 9d e5                                      ldr ip, [sp, #8]
00701bc4  14 00 9d e5                                      ldr r0, [sp, #0x14]
00701bc8  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
00701bcc  97 0c 03 e0                                      mul r3, r7, ip
00701bd0  97 00 00 e0                                      mul r0, r7, r0
00701bd4  03 20 8b e0                                      add r2, fp, r3
00701bd8  28 00 8d e5                                      str r0, [sp, #0x28]
00701bdc  03 10 8b e7                                      str r1, [fp, r3]
00701be0  14 10 9d e5                                      ldr r1, [sp, #0x14]
00701be4  38 30 9d e5                                      ldr r3, [sp, #0x38]
00701be8  01 10 81 e2                                      add r1, r1, #1
00701bec  2c 10 8d e5                                      str r1, [sp, #0x2c]
00701bf0  ac 10 9d e5                                      ldr r1, [sp, #0xac]
00701bf4  04 10 82 e5                                      str r1, [r2, #4]
00701bf8  b0 e0 9d e5                                      ldr lr, [sp, #0xb0]
00701bfc  48 00 9d e5                                      ldr r0, [sp, #0x48]
00701c00  08 10 a0 e1                                      mov r1, r8
00701c04  08 e0 82 e5                                      str lr, [r2, #8]
00701c08  24 e1 9d e5                                      ldr lr, [sp, #0x124]
00701c0c  10 b0 94 e5                                      ldr fp, [r4, #0x10]
00701c10  01 20 a0 e3                                      mov r2, #1
00701c14  00 e0 8d e5                                      str lr, [sp]
00701c18  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00701c1c  04 10 8d e9                                      stmib sp, {r2, ip}
00701c20  0e 20 8b e0                                      add r2, fp, lr
00701c24  9d f3 ff eb                                      bl #0x6feaa0
00701c28  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00701c2c  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
00701c30  97 00 07 e0                                      mul r7, r7, r0
00701c34  07 20 8b e7                                      str r2, [fp, r7]
00701c38  a0 20 9d e5                                      ldr r2, [sp, #0xa0]
00701c3c  07 30 8b e0                                      add r3, fp, r7
00701c40  04 20 83 e5                                      str r2, [r3, #4]
00701c44  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
00701c48  08 20 83 e5                                      str r2, [r3, #8]
00701c4c  10 b0 94 e5                                      ldr fp, [r4, #0x10]
00701c50  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
00701c54  09 70 8b e0                                      add r7, fp, sb
00701c58  04 00 97 e5                                      ldr r0, [r7, #4]
00701c5c  d2 31 f0 eb                                      bl #0x30e3ac
00701c60  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
00701c64  00 30 a0 e1                                      mov r3, r0
00701c68  08 00 97 e5                                      ldr r0, [r7, #8]
00701c6c  0c 30 8d e5                                      str r3, [sp, #0xc]
00701c70  cd 31 f0 eb                                      bl #0x30e3ac
00701c74  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
00701c78  00 20 a0 e1                                      mov r2, r0
00701c7c  09 00 9b e7                                      ldr r0, [fp, sb]
00701c80  10 20 8d e5                                      str r2, [sp, #0x10]
00701c84  c8 31 f0 eb                                      bl #0x30e3ac
00701c88  10 20 9d e5                                      ldr r2, [sp, #0x10]
00701c8c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00701c90  90 00 8d e5                                      str r0, [sp, #0x90]
00701c94  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
00701c98  98 20 8d e5                                      str r2, [sp, #0x98]
00701c9c  94 30 8d e5                                      str r3, [sp, #0x94]
00701ca0  0e 73 f1 eb                                      bl #0x35e8e0
00701ca4  04 10 90 e5                                      ldr r1, [r0, #4]
00701ca8  00 30 a0 e1                                      mov r3, r0
00701cac  88 01 98 e5                                      ldr r0, [r8, #0x188]
00701cb0  0c 30 8d e5                                      str r3, [sp, #0xc]
00701cb4  2c 34 f0 eb                                      bl #0x30ed6c
00701cb8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00701cbc  00 20 a0 e1                                      mov r2, r0
00701cc0  88 01 98 e5                                      ldr r0, [r8, #0x188]
00701cc4  08 10 93 e5                                      ldr r1, [r3, #8]
00701cc8  10 20 8d e5                                      str r2, [sp, #0x10]
00701ccc  26 34 f0 eb                                      bl #0x30ed6c
00701cd0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00701cd4  3c 00 8d e5                                      str r0, [sp, #0x3c]
00701cd8  88 01 98 e5                                      ldr r0, [r8, #0x188]
00701cdc  00 10 93 e5                                      ldr r1, [r3]
00701ce0  21 34 f0 eb                                      bl #0x30ed6c
00701ce4  00 10 a0 e1                                      mov r1, r0
00701ce8  09 00 9b e7                                      ldr r0, [fp, sb]
00701cec  ac 33 f0 eb                                      bl #0x30eba4
00701cf0  09 00 8b e7                                      str r0, [fp, sb]
00701cf4  10 20 9d e5                                      ldr r2, [sp, #0x10]
00701cf8  04 00 97 e5                                      ldr r0, [r7, #4]
00701cfc  02 10 a0 e1                                      mov r1, r2
00701d00  a7 33 f0 eb                                      bl #0x30eba4
00701d04  04 00 87 e5                                      str r0, [r7, #4]
00701d08  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00701d0c  08 00 97 e5                                      ldr r0, [r7, #8]
00701d10  a3 33 f0 eb                                      bl #0x30eba4
00701d14  08 00 87 e5                                      str r0, [r7, #8]
00701d18  18 20 9d e5                                      ldr r2, [sp, #0x18]
00701d1c  10 90 94 e5                                      ldr sb, [r4, #0x10]
00701d20  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
00701d24  02 70 89 e0                                      add r7, sb, r2
00701d28  04 00 97 e5                                      ldr r0, [r7, #4]
00701d2c  9e 31 f0 eb                                      bl #0x30e3ac
00701d30  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
00701d34  00 b0 a0 e1                                      mov fp, r0
00701d38  08 00 97 e5                                      ldr r0, [r7, #8]
00701d3c  9a 31 f0 eb                                      bl #0x30e3ac
00701d40  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00701d44  00 30 a0 e1                                      mov r3, r0
00701d48  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
00701d4c  0e 00 99 e7                                      ldr r0, [sb, lr]
00701d50  0c 30 8d e5                                      str r3, [sp, #0xc]
00701d54  94 31 f0 eb                                      bl #0x30e3ac
00701d58  84 00 8d e5                                      str r0, [sp, #0x84]
00701d5c  50 00 9d e5                                      ldr r0, [sp, #0x50]
00701d60  88 b0 8d e5                                      str fp, [sp, #0x88]
00701d64  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00701d68  8c 30 8d e5                                      str r3, [sp, #0x8c]
00701d6c  db 72 f1 eb                                      bl #0x35e8e0
00701d70  04 10 90 e5                                      ldr r1, [r0, #4]
00701d74  00 b0 a0 e1                                      mov fp, r0
00701d78  88 01 98 e5                                      ldr r0, [r8, #0x188]
00701d7c  fa 33 f0 eb                                      bl #0x30ed6c
00701d80  08 10 9b e5                                      ldr r1, [fp, #8]
00701d84  00 30 a0 e1                                      mov r3, r0
00701d88  88 01 98 e5                                      ldr r0, [r8, #0x188]
00701d8c  0c 30 8d e5                                      str r3, [sp, #0xc]
00701d90  f5 33 f0 eb                                      bl #0x30ed6c
00701d94  00 10 9b e5                                      ldr r1, [fp]
00701d98  00 20 a0 e1                                      mov r2, r0
00701d9c  88 01 98 e5                                      ldr r0, [r8, #0x188]
00701da0  10 20 8d e5                                      str r2, [sp, #0x10]
00701da4  f0 33 f0 eb                                      bl #0x30ed6c
00701da8  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00701dac  00 10 a0 e1                                      mov r1, r0
00701db0  0e 00 99 e7                                      ldr r0, [sb, lr]
00701db4  7a 33 f0 eb                                      bl #0x30eba4
00701db8  18 10 9d e5                                      ldr r1, [sp, #0x18]
00701dbc  01 00 89 e7                                      str r0, [sb, r1]
00701dc0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00701dc4  04 00 97 e5                                      ldr r0, [r7, #4]
00701dc8  03 10 a0 e1                                      mov r1, r3
00701dcc  74 33 f0 eb                                      bl #0x30eba4
00701dd0  04 00 87 e5                                      str r0, [r7, #4]
00701dd4  10 20 9d e5                                      ldr r2, [sp, #0x10]
00701dd8  08 00 97 e5                                      ldr r0, [r7, #8]
00701ddc  02 10 a0 e1                                      mov r1, r2
00701de0  6f 33 f0 eb                                      bl #0x30eba4
00701de4  08 00 87 e5                                      str r0, [r7, #8]
00701de8  28 20 9d e5                                      ldr r2, [sp, #0x28]
00701dec  10 90 94 e5                                      ldr sb, [r4, #0x10]
00701df0  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
00701df4  02 70 89 e0                                      add r7, sb, r2
00701df8  04 00 97 e5                                      ldr r0, [r7, #4]
00701dfc  6a 31 f0 eb                                      bl #0x30e3ac
00701e00  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
00701e04  00 b0 a0 e1                                      mov fp, r0
00701e08  08 00 97 e5                                      ldr r0, [r7, #8]
00701e0c  66 31 f0 eb                                      bl #0x30e3ac
00701e10  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00701e14  00 30 a0 e1                                      mov r3, r0
00701e18  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
00701e1c  0e 00 99 e7                                      ldr r0, [sb, lr]
00701e20  0c 30 8d e5                                      str r3, [sp, #0xc]
00701e24  60 31 f0 eb                                      bl #0x30e3ac
00701e28  78 00 8d e5                                      str r0, [sp, #0x78]
00701e2c  54 00 9d e5                                      ldr r0, [sp, #0x54]
00701e30  7c b0 8d e5                                      str fp, [sp, #0x7c]
00701e34  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00701e38  80 30 8d e5                                      str r3, [sp, #0x80]
00701e3c  a7 72 f1 eb                                      bl #0x35e8e0
00701e40  04 10 90 e5                                      ldr r1, [r0, #4]
00701e44  00 b0 a0 e1                                      mov fp, r0
00701e48  88 01 98 e5                                      ldr r0, [r8, #0x188]
00701e4c  c6 33 f0 eb                                      bl #0x30ed6c
00701e50  08 10 9b e5                                      ldr r1, [fp, #8]
00701e54  00 30 a0 e1                                      mov r3, r0
00701e58  88 01 98 e5                                      ldr r0, [r8, #0x188]
00701e5c  0c 30 8d e5                                      str r3, [sp, #0xc]
00701e60  c1 33 f0 eb                                      bl #0x30ed6c
00701e64  00 10 9b e5                                      ldr r1, [fp]
00701e68  00 20 a0 e1                                      mov r2, r0
00701e6c  88 01 98 e5                                      ldr r0, [r8, #0x188]
00701e70  10 20 8d e5                                      str r2, [sp, #0x10]
00701e74  bc 33 f0 eb                                      bl #0x30ed6c
00701e78  28 e0 9d e5                                      ldr lr, [sp, #0x28]
00701e7c  00 10 a0 e1                                      mov r1, r0
00701e80  0e 00 99 e7                                      ldr r0, [sb, lr]
00701e84  46 33 f0 eb                                      bl #0x30eba4
00701e88  28 10 9d e5                                      ldr r1, [sp, #0x28]
00701e8c  01 00 89 e7                                      str r0, [sb, r1]
00701e90  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00701e94  04 00 97 e5                                      ldr r0, [r7, #4]
00701e98  03 10 a0 e1                                      mov r1, r3
00701e9c  40 33 f0 eb                                      bl #0x30eba4
00701ea0  04 00 87 e5                                      str r0, [r7, #4]
00701ea4  10 20 9d e5                                      ldr r2, [sp, #0x10]
00701ea8  08 00 97 e5                                      ldr r0, [r7, #8]
00701eac  02 10 a0 e1                                      mov r1, r2
00701eb0  3b 33 f0 eb                                      bl #0x30eba4
00701eb4  08 00 87 e5                                      str r0, [r7, #8]
00701eb8  18 30 94 e5                                      ldr r3, [r4, #0x18]
00701ebc  14 10 94 e5                                      ldr r1, [r4, #0x14]
00701ec0  83 20 a0 e1                                      lsl r2, r3, #1
00701ec4  b2 a0 81 e1                                      strh sl, [r1, r2]
00701ec8  14 20 94 e5                                      ldr r2, [r4, #0x14]
00701ecc  24 00 9d e5                                      ldr r0, [sp, #0x24]
00701ed0  01 30 83 e2                                      add r3, r3, #1
00701ed4  83 10 a0 e1                                      lsl r1, r3, #1
00701ed8  b1 00 82 e1                                      strh r0, [r2, r1]
00701edc  14 20 94 e5                                      ldr r2, [r4, #0x14]
00701ee0  14 00 9d e5                                      ldr r0, [sp, #0x14]
00701ee4  01 30 83 e2                                      add r3, r3, #1
00701ee8  83 10 a0 e1                                      lsl r1, r3, #1
00701eec  b1 00 82 e1                                      strh r0, [r2, r1]
00701ef0  14 20 94 e5                                      ldr r2, [r4, #0x14]
00701ef4  34 00 9d e5                                      ldr r0, [sp, #0x34]
00701ef8  01 30 83 e2                                      add r3, r3, #1
00701efc  83 10 a0 e1                                      lsl r1, r3, #1
00701f00  b1 00 82 e1                                      strh r0, [r2, r1]
00701f04  14 20 94 e5                                      ldr r2, [r4, #0x14]
00701f08  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00701f0c  01 30 83 e2                                      add r3, r3, #1
00701f10  83 10 a0 e1                                      lsl r1, r3, #1
00701f14  b1 00 82 e1                                      strh r0, [r2, r1]
00701f18  14 20 94 e5                                      ldr r2, [r4, #0x14]
00701f1c  08 c0 9d e5                                      ldr ip, [sp, #8]
00701f20  01 30 83 e2                                      add r3, r3, #1
00701f24  83 10 a0 e1                                      lsl r1, r3, #1
00701f28  01 30 83 e2                                      add r3, r3, #1
00701f2c  b1 c0 82 e1                                      strh ip, [r2, r1]
00701f30  18 30 84 e5                                      str r3, [r4, #0x18]
00701f34  b6 24 d4 e1                                      ldrh r2, [r4, #0x46]
00701f38  24 10 9d e5                                      ldr r1, [sp, #0x24]
00701f3c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00701f40  02 00 5a e1                                      cmp sl, r2
00701f44  ec 10 8d e5                                      str r1, [sp, #0xec]
00701f48  14 10 9d e5                                      ldr r1, [sp, #0x14]
00701f4c  f4 20 8d e5                                      str r2, [sp, #0xf4]
00701f50  0a 20 a0 91                                      movls r2, sl
00701f54  f0 30 8d 92                                      addls r3, sp, #0xf0
00701f58  f4 30 8d 82                                      addhi r3, sp, #0xf4
00701f5c  02 00 50 e1                                      cmp r0, r2
00701f60  e8 10 8d e5                                      str r1, [sp, #0xe8]
00701f64  f0 a0 8d e5                                      str sl, [sp, #0xf0]
00701f68  ec 30 8d 92                                      addls r3, sp, #0xec
00701f6c  00 20 93 e5                                      ldr r2, [r3]
00701f70  34 10 9d e5                                      ldr r1, [sp, #0x34]
00701f74  b8 34 d4 e1                                      ldrh r3, [r4, #0x48]
00701f78  14 00 9d e5                                      ldr r0, [sp, #0x14]
00701f7c  02 00 50 e1                                      cmp r0, r2
00701f80  00 20 a0 31                                      movlo r2, r0
00701f84  01 00 53 e1                                      cmp r3, r1
00701f88  b6 24 c4 e1                                      strh r2, [r4, #0x46]
00701f8c  e0 10 8d e5                                      str r1, [sp, #0xe0]
00701f90  03 10 a0 21                                      movhs r1, r3
00701f94  e4 30 8d e5                                      str r3, [sp, #0xe4]
00701f98  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00701f9c  5c 30 9d 35                                      ldrlo r3, [sp, #0x5c]
00701fa0  e4 30 8d 22                                      addhs r3, sp, #0xe4
00701fa4  01 00 5c e1                                      cmp ip, r1
00701fa8  58 10 9d e5                                      ldr r1, [sp, #0x58]
00701fac  dc c0 8d e5                                      str ip, [sp, #0xdc]
00701fb0  d8 20 8d e5                                      str r2, [sp, #0xd8]
00701fb4  01 30 a0 81                                      movhi r3, r1
00701fb8  00 30 93 e5                                      ldr r3, [r3]
00701fbc  00 70 94 e5                                      ldr r7, [r4]
00701fc0  03 00 52 e1                                      cmp r2, r3
00701fc4  02 30 a0 21                                      movhs r3, r2
00701fc8  b8 34 c4 e1                                      strh r3, [r4, #0x48]
00701fcc  30 30 9d e5                                      ldr r3, [sp, #0x30]
00701fd0  03 00 55 e1                                      cmp r5, r3
00701fd4  c2 fe ff 1a                                      bne #0x701ae4
00701fd8  1c c0 97 e5                                      ldr ip, [r7, #0x1c]
00701fdc  24 c0 8d e5                                      str ip, [sp, #0x24]
00701fe0  18 50 97 e5                                      ldr r5, [r7, #0x18]
00701fe4  0c 00 55 e1                                      cmp r5, ip
00701fe8  62 00 00 0a                                      beq #0x702178
00701fec  c0 e0 8d e2                                      add lr, sp, #0xc0
00701ff0  6c 00 8d e2                                      add r0, sp, #0x6c
00701ff4  60 10 8d e2                                      add r1, sp, #0x60
00701ff8  14 e0 8d e5                                      str lr, [sp, #0x14]
00701ffc  18 00 8d e5                                      str r0, [sp, #0x18]
00702000  28 10 8d e5                                      str r1, [sp, #0x28]
00702004  0c a0 a0 e3                                      mov sl, #0xc
00702008  b0 70 d5 e1                                      ldrh r7, [r5]
0070200c  10 80 94 e5                                      ldr r8, [r4, #0x10]
00702010  24 c1 9d e5                                      ldr ip, [sp, #0x124]
00702014  20 e0 9d e5                                      ldr lr, [sp, #0x20]
00702018  87 70 a0 e1                                      lsl r7, r7, #1
0070201c  01 90 87 e2                                      add sb, r7, #1
00702020  9a 87 22 e0                                      mla r2, sl, r7, r8
00702024  18 00 9d e5                                      ldr r0, [sp, #0x18]
00702028  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0070202c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00702030  b2 60 d5 e1                                      ldrh r6, [r5, #2]
00702034  00 50 8d e8                                      stm sp, {ip, lr}
00702038  98 f2 ff eb                                      bl #0x6feaa0
0070203c  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
00702040  9a 09 03 e0                                      mul r3, sl, sb
00702044  86 60 a0 e1                                      lsl r6, r6, #1
00702048  03 10 88 e7                                      str r1, [r8, r3]
0070204c  03 20 88 e0                                      add r2, r8, r3
00702050  70 30 9d e5                                      ldr r3, [sp, #0x70]
00702054  28 00 9d e5                                      ldr r0, [sp, #0x28]
00702058  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0070205c  04 30 82 e5                                      str r3, [r2, #4]
00702060  74 e0 9d e5                                      ldr lr, [sp, #0x74]
00702064  14 30 9d e5                                      ldr r3, [sp, #0x14]
00702068  01 b0 86 e2                                      add fp, r6, #1
0070206c  08 e0 82 e5                                      str lr, [r2, #8]
00702070  10 80 94 e5                                      ldr r8, [r4, #0x10]
00702074  24 21 9d e5                                      ldr r2, [sp, #0x124]
00702078  9a 0b 0c e0                                      mul ip, sl, fp
0070207c  20 e0 9d e5                                      ldr lr, [sp, #0x20]
00702080  00 20 8d e5                                      str r2, [sp]
00702084  9a 86 22 e0                                      mla r2, sl, r6, r8
00702088  08 c0 8d e5                                      str ip, [sp, #8]
0070208c  04 e0 8d e5                                      str lr, [sp, #4]
00702090  82 f2 ff eb                                      bl #0x6feaa0
00702094  08 c0 9d e5                                      ldr ip, [sp, #8]
00702098  60 10 9d e5                                      ldr r1, [sp, #0x60]
0070209c  01 20 89 e2                                      add r2, sb, #1
007020a0  0c 30 88 e0                                      add r3, r8, ip
007020a4  0c 10 88 e7                                      str r1, [r8, ip]
007020a8  64 10 9d e5                                      ldr r1, [sp, #0x64]
007020ac  01 00 8b e2                                      add r0, fp, #1
007020b0  04 50 85 e2                                      add r5, r5, #4
007020b4  04 10 83 e5                                      str r1, [r3, #4]
007020b8  68 c0 9d e5                                      ldr ip, [sp, #0x68]
007020bc  79 90 ff e6                                      uxth sb, sb
007020c0  76 10 ff e6                                      uxth r1, r6
007020c4  08 c0 83 e5                                      str ip, [r3, #8]
007020c8  10 30 94 e5                                      ldr r3, [r4, #0x10]
007020cc  00 00 53 e3                                      cmp r3, #0
007020d0  19 00 00 0a                                      beq #0x70213c
007020d4  18 30 94 e5                                      ldr r3, [r4, #0x18]
007020d8  14 80 94 e5                                      ldr r8, [r4, #0x14]
007020dc  83 c0 a0 e1                                      lsl ip, r3, #1
007020e0  bc 70 88 e1                                      strh r7, [r8, ip]
007020e4  14 80 94 e5                                      ldr r8, [r4, #0x14]
007020e8  01 30 83 e2                                      add r3, r3, #1
007020ec  83 c0 a0 e1                                      lsl ip, r3, #1
007020f0  bc 90 88 e1                                      strh sb, [r8, ip]
007020f4  14 80 94 e5                                      ldr r8, [r4, #0x14]
007020f8  01 30 83 e2                                      add r3, r3, #1
007020fc  83 c0 a0 e1                                      lsl ip, r3, #1
00702100  bc 10 88 e1                                      strh r1, [r8, ip]
00702104  14 80 94 e5                                      ldr r8, [r4, #0x14]
00702108  01 30 83 e2                                      add r3, r3, #1
0070210c  83 c0 a0 e1                                      lsl ip, r3, #1
00702110  bc 10 88 e1                                      strh r1, [r8, ip]
00702114  14 10 94 e5                                      ldr r1, [r4, #0x14]
00702118  01 30 83 e2                                      add r3, r3, #1
0070211c  83 c0 a0 e1                                      lsl ip, r3, #1
00702120  bc 90 81 e1                                      strh sb, [r1, ip]
00702124  14 10 94 e5                                      ldr r1, [r4, #0x14]
00702128  01 30 83 e2                                      add r3, r3, #1
0070212c  01 c0 83 e2                                      add ip, r3, #1
00702130  83 30 a0 e1                                      lsl r3, r3, #1
00702134  b3 b0 81 e1                                      strh fp, [r1, r3]
00702138  18 c0 84 e5                                      str ip, [r4, #0x18]
0070213c  00 00 52 e1                                      cmp r2, r0
00702140  00 20 a0 31                                      movlo r2, r0
00702144  b6 14 d4 e1                                      ldrh r1, [r4, #0x46]
00702148  24 00 9d e5                                      ldr r0, [sp, #0x24]
0070214c  b8 34 d4 e1                                      ldrh r3, [r4, #0x48]
00702150  06 00 57 e1                                      cmp r7, r6
00702154  07 60 a0 31                                      movlo r6, r7
00702158  01 00 56 e1                                      cmp r6, r1
0070215c  01 60 a0 21                                      movhs r6, r1
00702160  03 00 52 e1                                      cmp r2, r3
00702164  03 20 a0 31                                      movlo r2, r3
00702168  00 00 55 e1                                      cmp r5, r0
0070216c  b6 64 c4 e1                                      strh r6, [r4, #0x46]
00702170  b8 24 c4 e1                                      strh r2, [r4, #0x48]
00702174  a3 ff ff 1a                                      bne #0x702008
00702178  fc d0 8d e2                                      add sp, sp, #0xfc
0070217c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00702180  08 00 94 e5                                      ldr r0, [r4, #8]
00702184  04 10 95 e5                                      ldr r1, [r5, #4]
00702188  7f 2f f0 eb                                      bl #0x30df8c
0070218c  00 00 50 e3                                      cmp r0, #0
00702190  11 fe ff 0a                                      beq #0x7019dc
00702194  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00702198  08 10 95 e5                                      ldr r1, [r5, #8]
0070219c  7a 2f f0 eb                                      bl #0x30df8c
007021a0  00 00 50 e3                                      cmp r0, #0
007021a4  0c fe ff 0a                                      beq #0x7019dc
007021a8  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007021ac  85 31 d1 e5                                      ldrb r3, [r1, #0x185]
007021b0  00 00 53 e3                                      cmp r3, #0
007021b4  08 fe ff 1a                                      bne #0x7019dc
007021b8  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
007021bc  84 31 dc e5                                      ldrb r3, [ip, #0x184]
007021c0  00 00 53 e3                                      cmp r3, #0
007021c4  04 fe ff 0a                                      beq #0x7019dc
007021c8  24 01 9d e5                                      ldr r0, [sp, #0x124]
007021cc  04 10 95 e5                                      ldr r1, [r5, #4]
007021d0  08 80 95 e5                                      ldr r8, [r5, #8]
007021d4  02 00 50 e3                                      cmp r0, #2
007021d8  c0 60 8d e5                                      str r6, [sp, #0xc0]
007021dc  c4 10 8d e5                                      str r1, [sp, #0xc4]
007021e0  c8 80 8d e5                                      str r8, [sp, #0xc8]
007021e4  1c fe ff 1a                                      bne #0x701a5c
007021e8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007021ec  80 61 92 e5                                      ldr r6, [r2, #0x180]
007021f0  06 00 a0 e1                                      mov r0, r6
007021f4  dc 32 f0 eb                                      bl #0x30ed6c
007021f8  08 10 a0 e1                                      mov r1, r8
007021fc  00 a0 a0 e1                                      mov sl, r0
00702200  06 00 a0 e1                                      mov r0, r6
00702204  d8 32 f0 eb                                      bl #0x30ed6c
00702208  00 10 95 e5                                      ldr r1, [r5]
0070220c  00 80 a0 e1                                      mov r8, r0
00702210  06 00 a0 e1                                      mov r0, r6
00702214  d4 32 f0 eb                                      bl #0x30ed6c
00702218  c4 a0 8d e5                                      str sl, [sp, #0xc4]
0070221c  c0 00 8d e5                                      str r0, [sp, #0xc0]
00702220  c8 80 8d e5                                      str r8, [sp, #0xc8]
00702224  0c fe ff ea                                      b #0x701a5c
00702228  07 10 a0 e1                                      mov r1, r7
0070222c  28 00 a0 e3                                      mov r0, #0x28
00702230  dd c7 f8 eb                                      bl #0x5341ac
00702234  08 10 a0 e1                                      mov r1, r8
00702238  00 60 a0 e1                                      mov r6, r0
0070223c  ed f6 ff eb                                      bl #0x6ffdf8
00702240  00 60 84 e5                                      str r6, [r4]
00702244  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00702248  06 00 a0 e1                                      mov r0, r6
0070224c  84 11 d2 e5                                      ldrb r1, [r2, #0x184]
00702250  1d 06 00 eb                                      bl #0x703acc
00702254  00 70 94 e5                                      ldr r7, [r4]
00702258  d9 fd ff ea                                      b #0x7019c4

; FUNCTION 0x0070225c, declared_size=1912, range_size=1912, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode18createShadowVolumeERKN5boost13intrusive_ptrIKNS0_11CMeshBufferEEERKNS_4core8vector3dIfEENS_5video12E_LIGHT_TYPEE
; demangled: glitch::scene::CShadowVolumeSceneNode::createShadowVolume(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&, glitch::core::vector3d<float> const&, glitch::video::E_LIGHT_TYPE)
; decoder-mode: arm
0070225c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00702260  00 70 91 e5                                      ldr r7, [r1]
00702264  9c d0 4d e2                                      sub sp, sp, #0x9c
00702268  00 50 a0 e1                                      mov r5, r0
0070226c  18 00 87 e2                                      add r0, r7, #0x18
00702270  84 00 8d e5                                      str r0, [sp, #0x84]
00702274  18 00 97 e5                                      ldr r0, [r7, #0x18]
00702278  01 60 a0 e1                                      mov r6, r1
0070227c  01 10 a0 e3                                      mov r1, #1
00702280  18 20 8d e5                                      str r2, [sp, #0x18]
00702284  1c 30 8d e5                                      str r3, [sp, #0x1c]
00702288  13 7e fa eb                                      bl #0x5a1adc
0070228c  34 21 95 e5                                      ldr r2, [r5, #0x134]
00702290  38 31 95 e5                                      ldr r3, [r5, #0x138]
00702294  1c c0 97 e5                                      ldr ip, [r7, #0x1c]
00702298  00 10 96 e5                                      ldr r1, [r6]
0070229c  03 30 62 e0                                      rsb r3, r2, r3
007022a0  43 31 a0 e1                                      asr r3, r3, #2
007022a4  0c 00 80 e0                                      add r0, r0, ip
007022a8  83 30 83 e0                                      add r3, r3, r3, lsl #1
007022ac  88 00 8d e5                                      str r0, [sp, #0x88]
007022b0  83 31 83 e0                                      add r3, r3, r3, lsl #3
007022b4  20 80 91 e5                                      ldr r8, [r1, #0x20]
007022b8  83 c4 a0 e1                                      lsl ip, r3, #9
007022bc  ab 0a 0a e3                                      movw r0, #0xaaab
007022c0  0c 30 63 e0                                      rsb r3, r3, ip
007022c4  aa 0a 4a e3                                      movt r0, #0xaaaa
007022c8  64 c1 95 e5                                      ldr ip, [r5, #0x164]
007022cc  90 e8 88 e0                                      umull lr, r8, r0, r8
007022d0  03 39 83 e0                                      add r3, r3, r3, lsl #18
007022d4  00 30 63 e2                                      rsb r3, r3, #0
007022d8  03 00 5c e1                                      cmp ip, r3
007022dc  a8 80 a0 e1                                      lsr r8, r8, #1
007022e0  a6 00 00 2a                                      bhs #0x702580
007022e4  14 70 91 e5                                      ldr r7, [r1, #0x14]
007022e8  4c 40 a0 e3                                      mov r4, #0x4c
007022ec  94 2c 24 e0                                      mla r4, r4, ip, r2
007022f0  00 00 57 e3                                      cmp r7, #0
007022f4  00 30 97 15                                      ldrne r3, [r7]
007022f8  1c a0 94 e5                                      ldr sl, [r4, #0x1c]
007022fc  08 90 97 e5                                      ldr sb, [r7, #8]
00702300  01 30 83 12                                      addne r3, r3, #1
00702304  00 30 87 15                                      strne r3, [r7]
00702308  00 30 97 e5                                      ldr r3, [r7]
0070230c  01 30 43 e2                                      sub r3, r3, #1
00702310  00 00 53 e3                                      cmp r3, #0
00702314  00 30 87 e5                                      str r3, [r7]
00702318  f3 00 00 0a                                      beq #0x7026ec
0070231c  89 00 5a e1                                      cmp sl, sb, lsl #1
00702320  00 20 a0 23                                      movhs r2, #0
00702324  18 20 84 25                                      strhs r2, [r4, #0x18]
00702328  f7 00 00 3a                                      blo #0x70270c
0070232c  64 31 95 e5                                      ldr r3, [r5, #0x164]
00702330  01 30 83 e2                                      add r3, r3, #1
00702334  64 31 85 e5                                      str r3, [r5, #0x164]
00702338  84 31 d5 e5                                      ldrb r3, [r5, #0x184]
0070233c  00 00 53 e3                                      cmp r3, #0
00702340  02 00 00 0a                                      beq #0x702350
00702344  85 31 d5 e5                                      ldrb r3, [r5, #0x185]
00702348  00 00 53 e3                                      cmp r3, #0
0070234c  d3 00 00 0a                                      beq #0x7026a0
00702350  00 30 96 e5                                      ldr r3, [r6]
00702354  01 10 a0 e3                                      mov r1, #1
00702358  14 70 93 e5                                      ldr r7, [r3, #0x14]
0070235c  00 00 57 e3                                      cmp r7, #0
00702360  00 30 97 15                                      ldrne r3, [r7]
00702364  14 00 97 e5                                      ldr r0, [r7, #0x14]
00702368  14 b0 87 e2                                      add fp, r7, #0x14
0070236c  01 30 83 12                                      addne r3, r3, #1
00702370  00 30 87 15                                      strne r3, [r7]
00702374  d8 7d fa eb                                      bl #0x5a1adc
00702378  04 a0 9b e5                                      ldr sl, [fp, #4]
0070237c  00 00 57 e3                                      cmp r7, #0
00702380  0a a0 80 e0                                      add sl, r0, sl
00702384  04 00 00 0a                                      beq #0x70239c
00702388  00 30 97 e5                                      ldr r3, [r7]
0070238c  01 30 43 e2                                      sub r3, r3, #1
00702390  00 00 53 e3                                      cmp r3, #0
00702394  00 30 87 e5                                      str r3, [r7]
00702398  c3 00 00 0a                                      beq #0x7026ac
0070239c  00 30 96 e5                                      ldr r3, [r6]
007023a0  14 30 93 e5                                      ldr r3, [r3, #0x14]
007023a4  00 00 53 e3                                      cmp r3, #0
007023a8  00 20 93 15                                      ldrne r2, [r3]
007023ac  08 90 93 e5                                      ldr sb, [r3, #8]
007023b0  01 20 82 12                                      addne r2, r2, #1
007023b4  00 20 83 15                                      strne r2, [r3]
007023b8  00 20 93 e5                                      ldr r2, [r3]
007023bc  01 20 42 e2                                      sub r2, r2, #1
007023c0  00 00 52 e3                                      cmp r2, #0
007023c4  00 20 83 e5                                      str r2, [r3]
007023c8  05 00 00 1a                                      bne #0x7023e4
007023cc  03 00 a0 e1                                      mov r0, r3
007023d0  14 30 8d e5                                      str r3, [sp, #0x14]
007023d4  90 79 fa eb                                      bl #0x5a0a1c
007023d8  14 30 9d e5                                      ldr r3, [sp, #0x14]
007023dc  03 00 a0 e1                                      mov r0, r3
007023e0  b2 2f f0 eb                                      bl #0x30e2b0
007023e4  00 00 59 e3                                      cmp sb, #0
007023e8  12 00 00 0a                                      beq #0x702438
007023ec  00 30 a0 e3                                      mov r3, #0
007023f0  be 00 db e1                                      ldrh r0, [fp, #0xe]
007023f4  03 20 a0 e1                                      mov r2, r3
007023f8  00 00 00 ea                                      b #0x702400
007023fc  be 00 db e1                                      ldrh r0, [fp, #0xe]
00702400  92 00 00 e0                                      mul r0, r2, r0
00702404  10 c0 94 e5                                      ldr ip, [r4, #0x10]
00702408  00 e0 9a e7                                      ldr lr, [sl, r0]
0070240c  00 00 8a e0                                      add r0, sl, r0
00702410  03 10 8c e0                                      add r1, ip, r3
00702414  03 e0 8c e7                                      str lr, [ip, r3]
00702418  04 c0 90 e5                                      ldr ip, [r0, #4]
0070241c  01 20 82 e2                                      add r2, r2, #1
00702420  09 00 52 e1                                      cmp r2, sb
00702424  04 c0 81 e5                                      str ip, [r1, #4]
00702428  08 00 90 e5                                      ldr r0, [r0, #8]
0070242c  18 30 83 e2                                      add r3, r3, #0x18
00702430  08 00 81 e5                                      str r0, [r1, #8]
00702434  f0 ff ff 1a                                      bne #0x7023fc
00702438  00 00 5a e3                                      cmp sl, #0
0070243c  08 00 00 0a                                      beq #0x702464
00702440  14 70 97 e5                                      ldr r7, [r7, #0x14]
00702444  13 30 d7 e5                                      ldrb r3, [r7, #0x13]
00702448  1f 20 03 e2                                      and r2, r3, #0x1f
0070244c  01 00 52 e3                                      cmp r2, #1
00702450  9a 00 00 9a                                      bls #0x7026c0
00702454  01 20 42 e2                                      sub r2, r2, #1
00702458  1f 30 c3 e3                                      bic r3, r3, #0x1f
0070245c  03 30 82 e1                                      orr r3, r2, r3
00702460  13 30 c7 e5                                      strb r3, [r7, #0x13]
00702464  87 31 d5 e5                                      ldrb r3, [r5, #0x187]
00702468  00 00 53 e3                                      cmp r3, #0
0070246c  36 00 00 1a                                      bne #0x70254c
00702470  86 c1 d5 e5                                      ldrb ip, [r5, #0x186]
00702474  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00702478  08 20 a0 e1                                      mov r2, r8
0070247c  18 30 9d e5                                      ldr r3, [sp, #0x18]
00702480  05 00 a0 e1                                      mov r0, r5
00702484  84 10 8d e2                                      add r1, sp, #0x84
00702488  00 e0 8d e5                                      str lr, [sp]
0070248c  10 10 8d e9                                      stmib sp, {r4, ip}
00702490  f8 f1 ff eb                                      bl #0x6fec78
00702494  20 30 94 e5                                      ldr r3, [r4, #0x20]
00702498  00 00 53 e3                                      cmp r3, #0
0070249c  de 00 00 0a                                      beq #0x70281c
007024a0  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
007024a4  08 10 93 e5                                      ldr r1, [r3, #8]
007024a8  01 00 52 e1                                      cmp r2, r1
007024ac  08 20 83 15                                      strne r2, [r3, #8]
007024b0  24 30 94 e5                                      ldr r3, [r4, #0x24]
007024b4  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
007024b8  04 00 52 e3                                      cmp r2, #4
007024bc  04 00 00 0a                                      beq #0x7024d4
007024c0  08 20 93 e5                                      ldr r2, [r3, #8]
007024c4  00 00 52 e3                                      cmp r2, #0
007024c8  12 20 d3 15                                      ldrbne r2, [r3, #0x12]
007024cc  02 20 82 13                                      orrne r2, r2, #2
007024d0  12 20 c3 15                                      strbne r2, [r3, #0x12]
007024d4  b8 24 d4 e1                                      ldrh r2, [r4, #0x48]
007024d8  b6 04 d4 e1                                      ldrh r0, [r4, #0x46]
007024dc  18 10 94 e5                                      ldr r1, [r4, #0x18]
007024e0  28 30 94 e5                                      ldr r3, [r4, #0x28]
007024e4  38 00 84 e5                                      str r0, [r4, #0x38]
007024e8  34 10 84 e5                                      str r1, [r4, #0x34]
007024ec  3c 20 84 e5                                      str r2, [r4, #0x3c]
007024f0  11 20 d3 e5                                      ldrb r2, [r3, #0x11]
007024f4  04 00 52 e3                                      cmp r2, #4
007024f8  04 00 00 0a                                      beq #0x702510
007024fc  08 20 93 e5                                      ldr r2, [r3, #8]
00702500  00 00 52 e3                                      cmp r2, #0
00702504  12 20 d3 15                                      ldrbne r2, [r3, #0x12]
00702508  02 20 82 13                                      orrne r2, r2, #2
0070250c  12 20 c3 15                                      strbne r2, [r3, #0x12]
00702510  88 30 9d e5                                      ldr r3, [sp, #0x88]
00702514  00 00 53 e3                                      cmp r3, #0
00702518  09 00 00 0a                                      beq #0x702544
0070251c  84 30 9d e5                                      ldr r3, [sp, #0x84]
00702520  00 40 93 e5                                      ldr r4, [r3]
00702524  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00702528  1f 20 03 e2                                      and r2, r3, #0x1f
0070252c  01 00 52 e3                                      cmp r2, #1
00702530  54 00 00 9a                                      bls #0x702688
00702534  01 20 42 e2                                      sub r2, r2, #1
00702538  1f 30 c3 e3                                      bic r3, r3, #0x1f
0070253c  03 30 82 e1                                      orr r3, r2, r3
00702540  13 30 c4 e5                                      strb r3, [r4, #0x13]
00702544  9c d0 8d e2                                      add sp, sp, #0x9c
00702548  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0070254c  18 e0 9d e5                                      ldr lr, [sp, #0x18]
00702550  86 c1 d5 e5                                      ldrb ip, [r5, #0x186]
00702554  06 10 a0 e1                                      mov r1, r6
00702558  00 e0 8d e5                                      str lr, [sp]
0070255c  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
00702560  08 30 a0 e1                                      mov r3, r8
00702564  05 00 a0 e1                                      mov r0, r5
00702568  84 20 8d e2                                      add r2, sp, #0x84
0070256c  04 e0 8d e5                                      str lr, [sp, #4]
00702570  0c c0 8d e5                                      str ip, [sp, #0xc]
00702574  08 40 8d e5                                      str r4, [sp, #8]
00702578  06 fd ff eb                                      bl #0x701998
0070257c  c4 ff ff ea                                      b #0x702494
00702580  20 40 8d e2                                      add r4, sp, #0x20
00702584  04 00 a0 e1                                      mov r0, r4
00702588  cf f0 ff eb                                      bl #0x6fe8cc
0070258c  04 10 a0 e1                                      mov r1, r4
00702590  4d 0f 85 e2                                      add r0, r5, #0x134
00702594  f2 fa ff eb                                      bl #0x701164
00702598  04 00 a0 e1                                      mov r0, r4
0070259c  28 fa ff eb                                      bl #0x700e44
007025a0  34 31 95 e5                                      ldr r3, [r5, #0x134]
007025a4  38 41 95 e5                                      ldr r4, [r5, #0x138]
007025a8  00 20 96 e5                                      ldr r2, [r6]
007025ac  04 40 63 e0                                      rsb r4, r3, r4
007025b0  44 41 a0 e1                                      asr r4, r4, #2
007025b4  14 a0 92 e5                                      ldr sl, [r2, #0x14]
007025b8  84 40 84 e0                                      add r4, r4, r4, lsl #1
007025bc  84 41 84 e0                                      add r4, r4, r4, lsl #3
007025c0  00 00 5a e3                                      cmp sl, #0
007025c4  84 24 a0 e1                                      lsl r2, r4, #9
007025c8  02 40 64 e0                                      rsb r4, r4, r2
007025cc  04 49 84 e0                                      add r4, r4, r4, lsl #18
007025d0  04 40 e0 e1                                      mvn r4, r4
007025d4  4c 20 a0 e3                                      mov r2, #0x4c
007025d8  92 34 24 e0                                      mla r4, r2, r4, r3
007025dc  00 30 9a 15                                      ldrne r3, [sl]
007025e0  08 70 9a e5                                      ldr r7, [sl, #8]
007025e4  01 30 83 12                                      addne r3, r3, #1
007025e8  00 30 8a 15                                      strne r3, [sl]
007025ec  00 30 9a e5                                      ldr r3, [sl]
007025f0  01 30 43 e2                                      sub r3, r3, #1
007025f4  00 00 53 e3                                      cmp r3, #0
007025f8  00 30 8a e5                                      str r3, [sl]
007025fc  35 00 00 0a                                      beq #0x7026d8
00702600  87 70 a0 e1                                      lsl r7, r7, #1
00702604  00 a0 a0 e3                                      mov sl, #0
00702608  0c 00 a0 e3                                      mov r0, #0xc
0070260c  1c 70 84 e5                                      str r7, [r4, #0x1c]
00702610  18 a0 84 e5                                      str sl, [r4, #0x18]
00702614  90 07 00 e0                                      mul r0, r0, r7
00702618  0a 10 a0 e1                                      mov r1, sl
0070261c  e1 c6 f8 eb                                      bl #0x5341a8
00702620  0a 00 57 e1                                      cmp r7, sl
00702624  08 00 00 0a                                      beq #0x70264c
00702628  00 20 a0 e3                                      mov r2, #0
0070262c  00 30 a0 e1                                      mov r3, r0
00702630  01 a0 8a e2                                      add sl, sl, #1
00702634  07 00 5a e1                                      cmp sl, r7
00702638  00 20 83 e5                                      str r2, [r3]
0070263c  04 20 83 e5                                      str r2, [r3, #4]
00702640  08 20 83 e5                                      str r2, [r3, #8]
00702644  0c 30 83 e2                                      add r3, r3, #0xc
00702648  f8 ff ff 1a                                      bne #0x702630
0070264c  10 00 84 e5                                      str r0, [r4, #0x10]
00702650  30 00 a0 e3                                      mov r0, #0x30
00702654  90 08 00 e0                                      mul r0, r0, r8
00702658  00 10 a0 e3                                      mov r1, #0
0070265c  d1 c6 f8 eb                                      bl #0x5341a8
00702660  00 30 e0 e3                                      mvn r3, #0
00702664  00 e0 a0 e3                                      mov lr, #0
00702668  14 00 84 e5                                      str r0, [r4, #0x14]
0070266c  b6 34 c4 e1                                      strh r3, [r4, #0x46]
00702670  b8 e4 c4 e1                                      strh lr, [r4, #0x48]
00702674  64 31 95 e5                                      ldr r3, [r5, #0x164]
00702678  01 20 a0 e3                                      mov r2, #1
0070267c  02 30 83 e0                                      add r3, r3, r2
00702680  64 31 85 e5                                      str r3, [r5, #0x164]
00702684  2b ff ff ea                                      b #0x702338
00702688  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0070268c  20 00 13 e3                                      tst r3, #0x20
00702690  5c 00 00 1a                                      bne #0x702808
00702694  00 30 a0 e3                                      mov r3, #0
00702698  13 30 c4 e5                                      strb r3, [r4, #0x13]
0070269c  a8 ff ff ea                                      b #0x702544
007026a0  00 00 52 e3                                      cmp r2, #0
007026a4  6e ff ff 0a                                      beq #0x702464
007026a8  28 ff ff ea                                      b #0x702350
007026ac  07 00 a0 e1                                      mov r0, r7
007026b0  d9 78 fa eb                                      bl #0x5a0a1c
007026b4  07 00 a0 e1                                      mov r0, r7
007026b8  fc 2e f0 eb                                      bl #0x30e2b0
007026bc  36 ff ff ea                                      b #0x70239c
007026c0  12 30 d7 e5                                      ldrb r3, [r7, #0x12]
007026c4  20 00 13 e3                                      tst r3, #0x20
007026c8  49 00 00 1a                                      bne #0x7027f4
007026cc  00 30 a0 e3                                      mov r3, #0
007026d0  13 30 c7 e5                                      strb r3, [r7, #0x13]
007026d4  62 ff ff ea                                      b #0x702464
007026d8  0a 00 a0 e1                                      mov r0, sl
007026dc  ce 78 fa eb                                      bl #0x5a0a1c
007026e0  0a 00 a0 e1                                      mov r0, sl
007026e4  f1 2e f0 eb                                      bl #0x30e2b0
007026e8  c4 ff ff ea                                      b #0x702600
007026ec  07 00 a0 e1                                      mov r0, r7
007026f0  c9 78 fa eb                                      bl #0x5a0a1c
007026f4  07 00 a0 e1                                      mov r0, r7
007026f8  ec 2e f0 eb                                      bl #0x30e2b0
007026fc  89 00 5a e1                                      cmp sl, sb, lsl #1
00702700  00 20 a0 23                                      movhs r2, #0
00702704  18 20 84 25                                      strhs r2, [r4, #0x18]
00702708  07 ff ff 2a                                      bhs #0x70232c
0070270c  00 30 96 e5                                      ldr r3, [r6]
00702710  14 a0 93 e5                                      ldr sl, [r3, #0x14]
00702714  00 00 5a e3                                      cmp sl, #0
00702718  00 30 9a 15                                      ldrne r3, [sl]
0070271c  08 70 9a e5                                      ldr r7, [sl, #8]
00702720  01 30 83 12                                      addne r3, r3, #1
00702724  00 30 8a 15                                      strne r3, [sl]
00702728  00 30 9a e5                                      ldr r3, [sl]
0070272c  01 30 43 e2                                      sub r3, r3, #1
00702730  00 00 53 e3                                      cmp r3, #0
00702734  00 30 8a e5                                      str r3, [sl]
00702738  03 00 00 1a                                      bne #0x70274c
0070273c  0a 00 a0 e1                                      mov r0, sl
00702740  b5 78 fa eb                                      bl #0x5a0a1c
00702744  0a 00 a0 e1                                      mov r0, sl
00702748  d8 2e f0 eb                                      bl #0x30e2b0
0070274c  10 00 94 e5                                      ldr r0, [r4, #0x10]
00702750  87 70 a0 e1                                      lsl r7, r7, #1
00702754  00 30 a0 e3                                      mov r3, #0
00702758  00 00 50 e3                                      cmp r0, #0
0070275c  18 30 84 e5                                      str r3, [r4, #0x18]
00702760  1c 70 84 e5                                      str r7, [r4, #0x1c]
00702764  01 00 00 0a                                      beq #0x702770
00702768  52 2e f0 eb                                      bl #0x30e0b8
0070276c  1c 70 94 e5                                      ldr r7, [r4, #0x1c]
00702770  0c 00 a0 e3                                      mov r0, #0xc
00702774  90 07 00 e0                                      mul r0, r0, r7
00702778  00 10 a0 e3                                      mov r1, #0
0070277c  89 c6 f8 eb                                      bl #0x5341a8
00702780  00 00 57 e3                                      cmp r7, #0
00702784  09 00 00 0a                                      beq #0x7027b0
00702788  00 10 a0 e3                                      mov r1, #0
0070278c  00 30 a0 e1                                      mov r3, r0
00702790  00 20 a0 e3                                      mov r2, #0
00702794  01 20 82 e2                                      add r2, r2, #1
00702798  07 00 52 e1                                      cmp r2, r7
0070279c  00 10 83 e5                                      str r1, [r3]
007027a0  04 10 83 e5                                      str r1, [r3, #4]
007027a4  08 10 83 e5                                      str r1, [r3, #8]
007027a8  0c 30 83 e2                                      add r3, r3, #0xc
007027ac  f8 ff ff 1a                                      bne #0x702794
007027b0  14 30 94 e5                                      ldr r3, [r4, #0x14]
007027b4  10 00 84 e5                                      str r0, [r4, #0x10]
007027b8  00 00 53 e3                                      cmp r3, #0
007027bc  01 00 00 0a                                      beq #0x7027c8
007027c0  03 00 a0 e1                                      mov r0, r3
007027c4  3b 2e f0 eb                                      bl #0x30e0b8
007027c8  30 00 a0 e3                                      mov r0, #0x30
007027cc  90 08 00 e0                                      mul r0, r0, r8
007027d0  00 10 a0 e3                                      mov r1, #0
007027d4  73 c6 f8 eb                                      bl #0x5341a8
007027d8  00 30 e0 e3                                      mvn r3, #0
007027dc  00 e0 a0 e3                                      mov lr, #0
007027e0  14 00 84 e5                                      str r0, [r4, #0x14]
007027e4  b6 34 c4 e1                                      strh r3, [r4, #0x46]
007027e8  b8 e4 c4 e1                                      strh lr, [r4, #0x48]
007027ec  01 20 a0 e3                                      mov r2, #1
007027f0  cd fe ff ea                                      b #0x70232c
007027f4  00 30 97 e5                                      ldr r3, [r7]
007027f8  07 00 a0 e1                                      mov r0, r7
007027fc  0f e0 a0 e1                                      mov lr, pc
00702800  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00702804  b0 ff ff ea                                      b #0x7026cc
00702808  00 30 94 e5                                      ldr r3, [r4]
0070280c  04 00 a0 e1                                      mov r0, r4
00702810  0f e0 a0 e1                                      mov lr, pc
00702814  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00702818  9d ff ff ea                                      b #0x702694
0070281c  94 00 8d e2                                      add r0, sp, #0x94
00702820  01 10 a0 e3                                      mov r1, #1
00702824  cc 7a fa eb                                      bl #0x5a135c
00702828  94 30 9d e5                                      ldr r3, [sp, #0x94]
0070282c  00 00 53 e3                                      cmp r3, #0
00702830  00 20 93 15                                      ldrne r2, [r3]
00702834  01 20 82 12                                      addne r2, r2, #1
00702838  00 20 83 15                                      strne r2, [r3]
0070283c  20 00 94 e5                                      ldr r0, [r4, #0x20]
00702840  20 30 84 e5                                      str r3, [r4, #0x20]
00702844  00 00 50 e3                                      cmp r0, #0
00702848  00 00 00 0a                                      beq #0x702850
0070284c  3d f4 ff eb                                      bl #0x6ff948
00702850  94 00 9d e5                                      ldr r0, [sp, #0x94]
00702854  00 00 50 e3                                      cmp r0, #0
00702858  00 00 00 0a                                      beq #0x702860
0070285c  39 f4 ff eb                                      bl #0x6ff948
00702860  10 31 95 e5                                      ldr r3, [r5, #0x110]
00702864  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
00702868  0c 10 a0 e3                                      mov r1, #0xc
0070286c  90 70 8d e2                                      add r7, sp, #0x90
00702870  91 02 02 e0                                      mul r2, r1, r2
00702874  14 10 93 e5                                      ldr r1, [r3, #0x14]
00702878  00 30 a0 e3                                      mov r3, #0
0070287c  24 60 84 e2                                      add r6, r4, #0x24
00702880  00 c0 91 e5                                      ldr ip, [r1]
00702884  00 20 8d e5                                      str r2, [sp]
00702888  10 00 94 e5                                      ldr r0, [r4, #0x10]
0070288c  03 20 a0 e1                                      mov r2, r3
00702890  09 00 8d e9                                      stmib sp, {r0, r3}
00702894  04 30 a0 e3                                      mov r3, #4
00702898  07 00 a0 e1                                      mov r0, r7
0070289c  0f e0 a0 e1                                      mov lr, pc
007028a0  78 f0 9c e5                                      ldr pc, [ip, #0x78]
007028a4  06 00 a0 e1                                      mov r0, r6
007028a8  07 10 a0 e1                                      mov r1, r7
007028ac  f6 e7 fe eb                                      bl #0x6bc88c
007028b0  90 00 9d e5                                      ldr r0, [sp, #0x90]
007028b4  00 00 50 e3                                      cmp r0, #0
007028b8  00 00 00 0a                                      beq #0x7028c0
007028bc  30 6b f0 eb                                      bl #0x31d584
007028c0  06 10 a0 e1                                      mov r1, r6
007028c4  00 20 e0 e3                                      mvn r2, #0
007028c8  20 00 94 e5                                      ldr r0, [r4, #0x20]
007028cc  3b 7b fa eb                                      bl #0x5a15c0
007028d0  20 30 94 e5                                      ldr r3, [r4, #0x20]
007028d4  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
007028d8  8c 60 8d e2                                      add r6, sp, #0x8c
007028dc  06 00 a0 e1                                      mov r0, r6
007028e0  08 20 83 e5                                      str r2, [r3, #8]
007028e4  10 21 95 e5                                      ldr r2, [r5, #0x110]
007028e8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
007028ec  14 10 92 e5                                      ldr r1, [r2, #0x14]
007028f0  06 20 a0 e3                                      mov r2, #6
007028f4  92 03 03 e0                                      mul r3, r2, r3
007028f8  00 c0 91 e5                                      ldr ip, [r1]
007028fc  00 30 8d e5                                      str r3, [sp]
00702900  14 30 94 e5                                      ldr r3, [r4, #0x14]
00702904  00 20 a0 e3                                      mov r2, #0
00702908  08 20 8d e5                                      str r2, [sp, #8]
0070290c  04 30 8d e5                                      str r3, [sp, #4]
00702910  01 20 a0 e3                                      mov r2, #1
00702914  04 30 a0 e3                                      mov r3, #4
00702918  0f e0 a0 e1                                      mov lr, pc
0070291c  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00702920  06 10 a0 e1                                      mov r1, r6
00702924  28 00 84 e2                                      add r0, r4, #0x28
00702928  d7 e7 fe eb                                      bl #0x6bc88c
0070292c  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
00702930  00 00 50 e3                                      cmp r0, #0
00702934  00 00 00 0a                                      beq #0x70293c
00702938  11 6b f0 eb                                      bl #0x31d584
0070293c  28 10 94 e5                                      ldr r1, [r4, #0x28]
00702940  b8 34 d4 e1                                      ldrh r3, [r4, #0x48]
00702944  18 c0 94 e5                                      ldr ip, [r4, #0x18]
00702948  b6 24 d4 e1                                      ldrh r2, [r4, #0x46]
0070294c  00 00 51 e3                                      cmp r1, #0
00702950  6c 10 8d e5                                      str r1, [sp, #0x6c]
00702954  04 00 91 15                                      ldrne r0, [r1, #4]
00702958  00 e0 a0 e3                                      mov lr, #0
0070295c  01 00 80 12                                      addne r0, r0, #1
00702960  04 00 81 15                                      strne r0, [r1, #4]
00702964  70 e0 8d e5                                      str lr, [sp, #0x70]
00702968  7c 30 8d e5                                      str r3, [sp, #0x7c]
0070296c  06 e0 a0 e3                                      mov lr, #6
00702970  01 30 a0 e3                                      mov r3, #1
00702974  2c 00 84 e2                                      add r0, r4, #0x2c
00702978  6c 10 8d e2                                      add r1, sp, #0x6c
0070297c  b0 38 cd e1                                      strh r3, [sp, #0x80]
00702980  74 c0 8d e5                                      str ip, [sp, #0x74]
00702984  78 20 8d e5                                      str r2, [sp, #0x78]
00702988  b2 e8 cd e1                                      strh lr, [sp, #0x82]
0070298c  be e7 fe eb                                      bl #0x6bc88c
00702990  70 30 9d e5                                      ldr r3, [sp, #0x70]
00702994  30 30 84 e5                                      str r3, [r4, #0x30]
00702998  74 30 9d e5                                      ldr r3, [sp, #0x74]
0070299c  34 30 84 e5                                      str r3, [r4, #0x34]
007029a0  78 30 9d e5                                      ldr r3, [sp, #0x78]
007029a4  38 30 84 e5                                      str r3, [r4, #0x38]
007029a8  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
007029ac  3c 30 84 e5                                      str r3, [r4, #0x3c]
007029b0  b0 38 dd e1                                      ldrh r3, [sp, #0x80]
007029b4  b0 34 c4 e1                                      strh r3, [r4, #0x40]
007029b8  b2 38 dd e1                                      ldrh r3, [sp, #0x82]
007029bc  b2 34 c4 e1                                      strh r3, [r4, #0x42]
007029c0  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
007029c4  00 00 50 e3                                      cmp r0, #0
007029c8  d0 fe ff 0a                                      beq #0x702510
007029cc  ec 6a f0 eb                                      bl #0x31d584
007029d0  ce fe ff ea                                      b #0x702510

; FUNCTION 0x007029d4, declared_size=1732, range_size=1732, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode19updateShadowVolumesEv
; demangled: glitch::scene::CShadowVolumeSceneNode::updateShadowVolumes()
; decoder-mode: arm
007029d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007029d8  b0 16 9f e5                                      ldr r1, [pc, #0x6b0]
007029dc  58 31 90 e5                                      ldr r3, [r0, #0x158]
007029e0  ac d0 4d e2                                      sub sp, sp, #0xac
007029e4  00 20 a0 e3                                      mov r2, #0
007029e8  00 00 53 e3                                      cmp r3, #0
007029ec  01 10 8f e0                                      add r1, pc, r1
007029f0  64 21 80 e5                                      str r2, [r0, #0x164]
007029f4  00 50 a0 e1                                      mov r5, r0
007029f8  18 10 8d e5                                      str r1, [sp, #0x18]
007029fc  5c 00 00 0a                                      beq #0x702b74
00702a00  40 11 90 e5                                      ldr r1, [r0, #0x140]
00702a04  44 21 90 e5                                      ldr r2, [r0, #0x144]
00702a08  03 00 a0 e1                                      mov r0, r3
00702a0c  00 30 93 e5                                      ldr r3, [r3]
00702a10  02 20 51 e0                                      subs r2, r1, r2
00702a14  01 20 a0 13                                      movne r2, #1
00702a18  14 20 8d e5                                      str r2, [sp, #0x14]
00702a1c  0f e0 a0 e1                                      mov lr, pc
00702a20  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00702a24  14 20 9d e5                                      ldr r2, [sp, #0x14]
00702a28  00 80 a0 e1                                      mov r8, r0
00702a2c  3c 40 8d e2                                      add r4, sp, #0x3c
00702a30  00 00 52 e3                                      cmp r2, #0
00702a34  10 31 95 05                                      ldreq r3, [r5, #0x110]
00702a38  40 31 95 15                                      ldrne r3, [r5, #0x140]
00702a3c  44 21 95 15                                      ldrne r2, [r5, #0x144]
00702a40  14 30 93 05                                      ldreq r3, [r3, #0x14]
00702a44  00 70 a0 e3                                      mov r7, #0
00702a48  02 30 63 10                                      rsbne r3, r3, r2
00702a4c  ba 33 d3 01                                      ldrheq r3, [r3, #0x3a]
00702a50  43 31 a0 11                                      asrne r3, r3, #2
00702a54  10 30 8d e5                                      str r3, [sp, #0x10]
00702a58  ec 30 95 e5                                      ldr r3, [r5, #0xec]
00702a5c  03 00 a0 e1                                      mov r0, r3
00702a60  00 30 93 e5                                      ldr r3, [r3]
00702a64  0f e0 a0 e1                                      mov lr, pc
00702a68  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00702a6c  41 20 a0 e3                                      mov r2, #0x41
00702a70  00 10 a0 e1                                      mov r1, r0
00702a74  04 00 a0 e1                                      mov r0, r4
00702a78  7c 70 cd e5                                      strb r7, [sp, #0x7c]
00702a7c  79 2f f0 eb                                      bl #0x30e868
00702a80  ec 10 95 e5                                      ldr r1, [r5, #0xec]
00702a84  8c 00 8d e2                                      add r0, sp, #0x8c
00702a88  bc 51 fa eb                                      bl #0x597180
00702a8c  04 00 a0 e1                                      mov r0, r4
00702a90  18 fe f9 eb                                      bl #0x5822f8
00702a94  10 30 9d e5                                      ldr r3, [sp, #0x10]
00702a98  07 00 53 e1                                      cmp r3, r7
00702a9c  32 00 00 0a                                      beq #0x702b6c
00702aa0  ec 15 9f e5                                      ldr r1, [pc, #0x5ec]
00702aa4  9c 20 8d e2                                      add r2, sp, #0x9c
00702aa8  28 20 8d e5                                      str r2, [sp, #0x28]
00702aac  24 10 8d e5                                      str r1, [sp, #0x24]
00702ab0  98 30 8d e2                                      add r3, sp, #0x98
00702ab4  a4 10 8d e2                                      add r1, sp, #0xa4
00702ab8  a0 20 8d e2                                      add r2, sp, #0xa0
00702abc  80 a0 8d e2                                      add sl, sp, #0x80
00702ac0  2c 30 8d e5                                      str r3, [sp, #0x2c]
00702ac4  30 10 8d e5                                      str r1, [sp, #0x30]
00702ac8  34 20 8d e5                                      str r2, [sp, #0x34]
00702acc  14 30 9d e5                                      ldr r3, [sp, #0x14]
00702ad0  00 00 53 e3                                      cmp r3, #0
00702ad4  a2 00 00 0a                                      beq #0x702d64
00702ad8  40 01 95 e5                                      ldr r0, [r5, #0x140]
00702adc  07 01 80 e0                                      add r0, r0, r7, lsl #2
00702ae0  00 40 90 e5                                      ldr r4, [r0]
00702ae4  00 00 54 e3                                      cmp r4, #0
00702ae8  00 30 94 15                                      ldrne r3, [r4]
00702aec  b8 65 d4 e1                                      ldrh r6, [r4, #0x58]
00702af0  01 30 83 12                                      addne r3, r3, #1
00702af4  00 30 84 15                                      strne r3, [r4]
00702af8  03 00 56 e3                                      cmp r6, #3
00702afc  03 00 00 0a                                      beq #0x702b10
00702b00  01 00 56 e3                                      cmp r6, #1
00702b04  9b 00 00 9a                                      bls #0x702d78
00702b08  02 00 56 e3                                      cmp r6, #2
00702b0c  1a 00 00 0a                                      beq #0x702b7c
00702b10  01 70 87 e2                                      add r7, r7, #1
00702b14  00 30 94 e5                                      ldr r3, [r4]
00702b18  01 30 43 e2                                      sub r3, r3, #1
00702b1c  00 00 53 e3                                      cmp r3, #0
00702b20  00 30 84 e5                                      str r3, [r4]
00702b24  0d 00 00 1a                                      bne #0x702b60
00702b28  54 30 d4 e5                                      ldrb r3, [r4, #0x54]
00702b2c  00 00 53 e3                                      cmp r3, #0
00702b30  06 00 00 1a                                      bne #0x702b50
00702b34  18 20 9d e5                                      ldr r2, [sp, #0x18]
00702b38  24 10 9d e5                                      ldr r1, [sp, #0x24]
00702b3c  01 30 92 e7                                      ldr r3, [r2, r1]
00702b40  50 20 94 e5                                      ldr r2, [r4, #0x50]
00702b44  00 10 93 e5                                      ldr r1, [r3]
00702b48  00 10 82 e5                                      str r1, [r2]
00702b4c  00 20 83 e5                                      str r2, [r3]
00702b50  00 30 a0 e3                                      mov r3, #0
00702b54  50 30 84 e5                                      str r3, [r4, #0x50]
00702b58  04 00 a0 e1                                      mov r0, r4
00702b5c  d3 2d f0 eb                                      bl #0x30e2b0
00702b60  10 10 9d e5                                      ldr r1, [sp, #0x10]
00702b64  07 00 51 e1                                      cmp r1, r7
00702b68  d7 ff ff 8a                                      bhi #0x702acc
00702b6c  00 30 a0 e3                                      mov r3, #0
00702b70  85 31 c5 e5                                      strb r3, [r5, #0x185]
00702b74  ac d0 8d e2                                      add sp, sp, #0xac
00702b78  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00702b7c  50 30 94 e5                                      ldr r3, [r4, #0x50]
00702b80  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00702b84  20 b0 93 e5                                      ldr fp, [r3, #0x20]
00702b88  20 30 83 e2                                      add r3, r3, #0x20
00702b8c  04 90 93 e5                                      ldr sb, [r3, #4]
00702b90  0b 00 a0 e1                                      mov r0, fp
00702b94  08 60 93 e5                                      ldr r6, [r3, #8]
00702b98  73 30 f0 eb                                      bl #0x30ed6c
00702b9c  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00702ba0  00 30 a0 e1                                      mov r3, r0
00702ba4  09 00 a0 e1                                      mov r0, sb
00702ba8  04 30 8d e5                                      str r3, [sp, #4]
00702bac  6e 30 f0 eb                                      bl #0x30ed6c
00702bb0  04 30 9d e5                                      ldr r3, [sp, #4]
00702bb4  00 10 a0 e1                                      mov r1, r0
00702bb8  03 00 a0 e1                                      mov r0, r3
00702bbc  f8 2f f0 eb                                      bl #0x30eba4
00702bc0  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
00702bc4  00 30 a0 e1                                      mov r3, r0
00702bc8  06 00 a0 e1                                      mov r0, r6
00702bcc  04 30 8d e5                                      str r3, [sp, #4]
00702bd0  65 30 f0 eb                                      bl #0x30ed6c
00702bd4  04 30 9d e5                                      ldr r3, [sp, #4]
00702bd8  00 10 a0 e1                                      mov r1, r0
00702bdc  03 00 a0 e1                                      mov r0, r3
00702be0  ef 2f f0 eb                                      bl #0x30eba4
00702be4  40 10 9d e5                                      ldr r1, [sp, #0x40]
00702be8  00 30 a0 e1                                      mov r3, r0
00702bec  0b 00 a0 e1                                      mov r0, fp
00702bf0  80 30 8d e5                                      str r3, [sp, #0x80]
00702bf4  04 30 8d e5                                      str r3, [sp, #4]
00702bf8  5b 30 f0 eb                                      bl #0x30ed6c
00702bfc  50 10 9d e5                                      ldr r1, [sp, #0x50]
00702c00  00 20 a0 e1                                      mov r2, r0
00702c04  09 00 a0 e1                                      mov r0, sb
00702c08  08 20 8d e5                                      str r2, [sp, #8]
00702c0c  56 30 f0 eb                                      bl #0x30ed6c
00702c10  08 20 9d e5                                      ldr r2, [sp, #8]
00702c14  00 10 a0 e1                                      mov r1, r0
00702c18  02 00 a0 e1                                      mov r0, r2
00702c1c  e0 2f f0 eb                                      bl #0x30eba4
00702c20  60 10 9d e5                                      ldr r1, [sp, #0x60]
00702c24  00 20 a0 e1                                      mov r2, r0
00702c28  06 00 a0 e1                                      mov r0, r6
00702c2c  08 20 8d e5                                      str r2, [sp, #8]
00702c30  4d 30 f0 eb                                      bl #0x30ed6c
00702c34  08 20 9d e5                                      ldr r2, [sp, #8]
00702c38  00 10 a0 e1                                      mov r1, r0
00702c3c  02 00 a0 e1                                      mov r0, r2
00702c40  d7 2f f0 eb                                      bl #0x30eba4
00702c44  44 10 9d e5                                      ldr r1, [sp, #0x44]
00702c48  00 20 a0 e1                                      mov r2, r0
00702c4c  0b 00 a0 e1                                      mov r0, fp
00702c50  84 20 8d e5                                      str r2, [sp, #0x84]
00702c54  08 20 8d e5                                      str r2, [sp, #8]
00702c58  43 30 f0 eb                                      bl #0x30ed6c
00702c5c  54 10 9d e5                                      ldr r1, [sp, #0x54]
00702c60  00 b0 a0 e1                                      mov fp, r0
00702c64  09 00 a0 e1                                      mov r0, sb
00702c68  3f 30 f0 eb                                      bl #0x30ed6c
00702c6c  00 10 a0 e1                                      mov r1, r0
00702c70  0b 00 a0 e1                                      mov r0, fp
00702c74  ca 2f f0 eb                                      bl #0x30eba4
00702c78  64 10 9d e5                                      ldr r1, [sp, #0x64]
00702c7c  00 90 a0 e1                                      mov sb, r0
00702c80  06 00 a0 e1                                      mov r0, r6
00702c84  38 30 f0 eb                                      bl #0x30ed6c
00702c88  00 10 a0 e1                                      mov r1, r0
00702c8c  09 00 a0 e1                                      mov r0, sb
00702c90  c3 2f f0 eb                                      bl #0x30eba4
00702c94  04 30 9d e5                                      ldr r3, [sp, #4]
00702c98  00 60 a0 e1                                      mov r6, r0
00702c9c  00 10 a0 e3                                      mov r1, #0
00702ca0  03 00 a0 e1                                      mov r0, r3
00702ca4  88 60 8d e5                                      str r6, [sp, #0x88]
00702ca8  b7 2c f0 eb                                      bl #0x30df8c
00702cac  00 00 50 e3                                      cmp r0, #0
00702cb0  08 20 9d e5                                      ldr r2, [sp, #8]
00702cb4  04 00 00 0a                                      beq #0x702ccc
00702cb8  02 00 a0 e1                                      mov r0, r2
00702cbc  00 10 a0 e3                                      mov r1, #0
00702cc0  b1 2c f0 eb                                      bl #0x30df8c
00702cc4  00 00 50 e3                                      cmp r0, #0
00702cc8  dd 00 00 1a                                      bne #0x703044
00702ccc  00 00 58 e3                                      cmp r8, #0
00702cd0  ec 00 00 0a                                      beq #0x703088
00702cd4  04 90 a0 e1                                      mov sb, r4
00702cd8  28 70 9d e5                                      ldr r7, [sp, #0x28]
00702cdc  2c 40 9d e5                                      ldr r4, [sp, #0x2c]
00702ce0  00 60 a0 e3                                      mov r6, #0
00702ce4  58 31 95 e5                                      ldr r3, [r5, #0x158]
00702ce8  06 20 a0 e1                                      mov r2, r6
00702cec  07 00 a0 e1                                      mov r0, r7
00702cf0  03 10 a0 e1                                      mov r1, r3
00702cf4  00 30 93 e5                                      ldr r3, [r3]
00702cf8  0f e0 a0 e1                                      mov lr, pc
00702cfc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00702d00  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
00702d04  05 00 a0 e1                                      mov r0, r5
00702d08  04 10 a0 e1                                      mov r1, r4
00702d0c  00 00 5c e3                                      cmp ip, #0
00702d10  98 c0 8d e5                                      str ip, [sp, #0x98]
00702d14  04 e0 9c 15                                      ldrne lr, [ip, #4]
00702d18  0a 20 a0 e1                                      mov r2, sl
00702d1c  02 30 a0 e3                                      mov r3, #2
00702d20  01 e0 8e 12                                      addne lr, lr, #1
00702d24  04 e0 8c 15                                      strne lr, [ip, #4]
00702d28  4b fd ff eb                                      bl #0x70225c
00702d2c  98 00 9d e5                                      ldr r0, [sp, #0x98]
00702d30  01 60 86 e2                                      add r6, r6, #1
00702d34  00 00 50 e3                                      cmp r0, #0
00702d38  00 00 00 0a                                      beq #0x702d40
00702d3c  10 6a f0 eb                                      bl #0x31d584
00702d40  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
00702d44  00 00 50 e3                                      cmp r0, #0
00702d48  00 00 00 0a                                      beq #0x702d50
00702d4c  0c 6a f0 eb                                      bl #0x31d584
00702d50  08 00 56 e1                                      cmp r6, r8
00702d54  e2 ff ff 1a                                      bne #0x702ce4
00702d58  09 40 a0 e1                                      mov r4, sb
00702d5c  01 70 88 e2                                      add r7, r8, #1
00702d60  6b ff ff ea                                      b #0x702b14
00702d64  10 31 95 e5                                      ldr r3, [r5, #0x110]
00702d68  77 10 ff e6                                      uxth r1, r7
00702d6c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00702d70  f2 9e fa eb                                      bl #0x5aa940
00702d74  59 ff ff ea                                      b #0x702ae0
00702d78  50 30 94 e5                                      ldr r3, [r4, #0x50]
00702d7c  38 10 93 e5                                      ldr r1, [r3, #0x38]
00702d80  1c 10 8d e5                                      str r1, [sp, #0x1c]
00702d84  30 b0 93 e5                                      ldr fp, [r3, #0x30]
00702d88  34 90 93 e5                                      ldr sb, [r3, #0x34]
00702d8c  88 10 8d e5                                      str r1, [sp, #0x88]
00702d90  80 b0 8d e5                                      str fp, [sp, #0x80]
00702d94  84 90 8d e5                                      str sb, [sp, #0x84]
00702d98  5a 30 d4 e5                                      ldrb r3, [r4, #0x5a]
00702d9c  00 00 53 e3                                      cmp r3, #0
00702da0  5a ff ff 0a                                      beq #0x702b10
00702da4  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
00702da8  0b 00 a0 e1                                      mov r0, fp
00702dac  7e 2d f0 eb                                      bl #0x30e3ac
00702db0  90 10 9d e5                                      ldr r1, [sp, #0x90]
00702db4  00 30 a0 e1                                      mov r3, r0
00702db8  09 00 a0 e1                                      mov r0, sb
00702dbc  04 30 8d e5                                      str r3, [sp, #4]
00702dc0  79 2d f0 eb                                      bl #0x30e3ac
00702dc4  94 10 9d e5                                      ldr r1, [sp, #0x94]
00702dc8  00 20 a0 e1                                      mov r2, r0
00702dcc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00702dd0  08 20 8d e5                                      str r2, [sp, #8]
00702dd4  74 2d f0 eb                                      bl #0x30e3ac
00702dd8  00 c0 a0 e1                                      mov ip, r0
00702ddc  40 00 94 e5                                      ldr r0, [r4, #0x40]
00702de0  0c c0 8d e5                                      str ip, [sp, #0xc]
00702de4  00 10 a0 e1                                      mov r1, r0
00702de8  df 2f f0 eb                                      bl #0x30ed6c
00702dec  01 11 a0 e3                                      mov r1, #0x40000000
00702df0  02 15 81 e2                                      add r1, r1, #0x800000
00702df4  dc 2f f0 eb                                      bl #0x30ed6c
00702df8  04 30 9d e5                                      ldr r3, [sp, #4]
00702dfc  20 00 8d e5                                      str r0, [sp, #0x20]
00702e00  03 10 a0 e1                                      mov r1, r3
00702e04  03 00 a0 e1                                      mov r0, r3
00702e08  d7 2f f0 eb                                      bl #0x30ed6c
00702e0c  08 20 9d e5                                      ldr r2, [sp, #8]
00702e10  00 30 a0 e1                                      mov r3, r0
00702e14  04 30 8d e5                                      str r3, [sp, #4]
00702e18  02 10 a0 e1                                      mov r1, r2
00702e1c  02 00 a0 e1                                      mov r0, r2
00702e20  d1 2f f0 eb                                      bl #0x30ed6c
00702e24  04 30 9d e5                                      ldr r3, [sp, #4]
00702e28  00 10 a0 e1                                      mov r1, r0
00702e2c  03 00 a0 e1                                      mov r0, r3
00702e30  5b 2f f0 eb                                      bl #0x30eba4
00702e34  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00702e38  00 30 a0 e1                                      mov r3, r0
00702e3c  04 30 8d e5                                      str r3, [sp, #4]
00702e40  0c 10 a0 e1                                      mov r1, ip
00702e44  0c 00 a0 e1                                      mov r0, ip
00702e48  c7 2f f0 eb                                      bl #0x30ed6c
00702e4c  04 30 9d e5                                      ldr r3, [sp, #4]
00702e50  00 10 a0 e1                                      mov r1, r0
00702e54  03 00 a0 e1                                      mov r0, r3
00702e58  51 2f f0 eb                                      bl #0x30eba4
00702e5c  02 11 c0 e3                                      bic r1, r0, #0x80000000
00702e60  20 00 9d e5                                      ldr r0, [sp, #0x20]
00702e64  92 2d f0 eb                                      bl #0x30e4b4
00702e68  00 00 50 e3                                      cmp r0, #0
00702e6c  27 ff ff 0a                                      beq #0x702b10
00702e70  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00702e74  0b 00 a0 e1                                      mov r0, fp
00702e78  bb 2f f0 eb                                      bl #0x30ed6c
00702e7c  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00702e80  00 30 a0 e1                                      mov r3, r0
00702e84  09 00 a0 e1                                      mov r0, sb
00702e88  04 30 8d e5                                      str r3, [sp, #4]
00702e8c  b6 2f f0 eb                                      bl #0x30ed6c
00702e90  04 30 9d e5                                      ldr r3, [sp, #4]
00702e94  00 10 a0 e1                                      mov r1, r0
00702e98  03 00 a0 e1                                      mov r0, r3
00702e9c  40 2f f0 eb                                      bl #0x30eba4
00702ea0  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
00702ea4  00 30 a0 e1                                      mov r3, r0
00702ea8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00702eac  04 30 8d e5                                      str r3, [sp, #4]
00702eb0  ad 2f f0 eb                                      bl #0x30ed6c
00702eb4  04 30 9d e5                                      ldr r3, [sp, #4]
00702eb8  00 10 a0 e1                                      mov r1, r0
00702ebc  03 00 a0 e1                                      mov r0, r3
00702ec0  37 2f f0 eb                                      bl #0x30eba4
00702ec4  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
00702ec8  35 2f f0 eb                                      bl #0x30eba4
00702ecc  40 10 9d e5                                      ldr r1, [sp, #0x40]
00702ed0  00 30 a0 e1                                      mov r3, r0
00702ed4  0b 00 a0 e1                                      mov r0, fp
00702ed8  04 30 8d e5                                      str r3, [sp, #4]
00702edc  a2 2f f0 eb                                      bl #0x30ed6c
00702ee0  50 10 9d e5                                      ldr r1, [sp, #0x50]
00702ee4  00 20 a0 e1                                      mov r2, r0
00702ee8  09 00 a0 e1                                      mov r0, sb
00702eec  08 20 8d e5                                      str r2, [sp, #8]
00702ef0  9d 2f f0 eb                                      bl #0x30ed6c
00702ef4  08 20 9d e5                                      ldr r2, [sp, #8]
00702ef8  00 10 a0 e1                                      mov r1, r0
00702efc  02 00 a0 e1                                      mov r0, r2
00702f00  27 2f f0 eb                                      bl #0x30eba4
00702f04  60 10 9d e5                                      ldr r1, [sp, #0x60]
00702f08  00 20 a0 e1                                      mov r2, r0
00702f0c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00702f10  08 20 8d e5                                      str r2, [sp, #8]
00702f14  94 2f f0 eb                                      bl #0x30ed6c
00702f18  08 20 9d e5                                      ldr r2, [sp, #8]
00702f1c  00 10 a0 e1                                      mov r1, r0
00702f20  02 00 a0 e1                                      mov r0, r2
00702f24  1e 2f f0 eb                                      bl #0x30eba4
00702f28  70 10 9d e5                                      ldr r1, [sp, #0x70]
00702f2c  1c 2f f0 eb                                      bl #0x30eba4
00702f30  44 10 9d e5                                      ldr r1, [sp, #0x44]
00702f34  20 00 8d e5                                      str r0, [sp, #0x20]
00702f38  0b 00 a0 e1                                      mov r0, fp
00702f3c  8a 2f f0 eb                                      bl #0x30ed6c
00702f40  54 10 9d e5                                      ldr r1, [sp, #0x54]
00702f44  00 b0 a0 e1                                      mov fp, r0
00702f48  09 00 a0 e1                                      mov r0, sb
00702f4c  86 2f f0 eb                                      bl #0x30ed6c
00702f50  00 10 a0 e1                                      mov r1, r0
00702f54  0b 00 a0 e1                                      mov r0, fp
00702f58  11 2f f0 eb                                      bl #0x30eba4
00702f5c  64 10 9d e5                                      ldr r1, [sp, #0x64]
00702f60  00 90 a0 e1                                      mov sb, r0
00702f64  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00702f68  7f 2f f0 eb                                      bl #0x30ed6c
00702f6c  00 10 a0 e1                                      mov r1, r0
00702f70  09 00 a0 e1                                      mov r0, sb
00702f74  0a 2f f0 eb                                      bl #0x30eba4
00702f78  74 10 9d e5                                      ldr r1, [sp, #0x74]
00702f7c  08 2f f0 eb                                      bl #0x30eba4
00702f80  04 30 9d e5                                      ldr r3, [sp, #4]
00702f84  00 90 a0 e1                                      mov sb, r0
00702f88  00 10 a0 e3                                      mov r1, #0
00702f8c  80 30 8d e5                                      str r3, [sp, #0x80]
00702f90  20 20 9d e5                                      ldr r2, [sp, #0x20]
00702f94  03 00 a0 e1                                      mov r0, r3
00702f98  88 90 8d e5                                      str sb, [sp, #0x88]
00702f9c  84 20 8d e5                                      str r2, [sp, #0x84]
00702fa0  f9 2b f0 eb                                      bl #0x30df8c
00702fa4  00 00 50 e3                                      cmp r0, #0
00702fa8  2b 00 00 1a                                      bne #0x70305c
00702fac  00 00 58 e3                                      cmp r8, #0
00702fb0  34 00 00 0a                                      beq #0x703088
00702fb4  04 b0 a0 e1                                      mov fp, r4
00702fb8  30 90 9d e5                                      ldr sb, [sp, #0x30]
00702fbc  34 40 9d e5                                      ldr r4, [sp, #0x34]
00702fc0  00 70 a0 e3                                      mov r7, #0
00702fc4  58 31 95 e5                                      ldr r3, [r5, #0x158]
00702fc8  07 20 a0 e1                                      mov r2, r7
00702fcc  09 00 a0 e1                                      mov r0, sb
00702fd0  03 10 a0 e1                                      mov r1, r3
00702fd4  00 30 93 e5                                      ldr r3, [r3]
00702fd8  0f e0 a0 e1                                      mov lr, pc
00702fdc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00702fe0  a4 c0 9d e5                                      ldr ip, [sp, #0xa4]
00702fe4  05 00 a0 e1                                      mov r0, r5
00702fe8  04 10 a0 e1                                      mov r1, r4
00702fec  00 00 5c e3                                      cmp ip, #0
00702ff0  a0 c0 8d e5                                      str ip, [sp, #0xa0]
00702ff4  04 e0 9c 15                                      ldrne lr, [ip, #4]
00702ff8  0a 20 a0 e1                                      mov r2, sl
00702ffc  06 30 a0 e1                                      mov r3, r6
00703000  01 e0 8e 12                                      addne lr, lr, #1
00703004  04 e0 8c 15                                      strne lr, [ip, #4]
00703008  93 fc ff eb                                      bl #0x70225c
0070300c  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
00703010  01 70 87 e2                                      add r7, r7, #1
00703014  00 00 50 e3                                      cmp r0, #0
00703018  00 00 00 0a                                      beq #0x703020
0070301c  58 69 f0 eb                                      bl #0x31d584
00703020  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
00703024  00 00 50 e3                                      cmp r0, #0
00703028  00 00 00 0a                                      beq #0x703030
0070302c  54 69 f0 eb                                      bl #0x31d584
00703030  08 00 57 e1                                      cmp r7, r8
00703034  e2 ff ff 1a                                      bne #0x702fc4
00703038  0b 40 a0 e1                                      mov r4, fp
0070303c  01 70 88 e2                                      add r7, r8, #1
00703040  b3 fe ff ea                                      b #0x702b14
00703044  06 00 a0 e1                                      mov r0, r6
00703048  00 10 a0 e3                                      mov r1, #0
0070304c  ce 2b f0 eb                                      bl #0x30df8c
00703050  00 00 50 e3                                      cmp r0, #0
00703054  1c ff ff 0a                                      beq #0x702ccc
00703058  ac fe ff ea                                      b #0x702b10
0070305c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00703060  00 10 a0 e3                                      mov r1, #0
00703064  c8 2b f0 eb                                      bl #0x30df8c
00703068  00 00 50 e3                                      cmp r0, #0
0070306c  ce ff ff 0a                                      beq #0x702fac
00703070  09 00 a0 e1                                      mov r0, sb
00703074  00 10 a0 e3                                      mov r1, #0
00703078  c3 2b f0 eb                                      bl #0x30df8c
0070307c  00 00 50 e3                                      cmp r0, #0
00703080  c9 ff ff 0a                                      beq #0x702fac
00703084  a1 fe ff ea                                      b #0x702b10
00703088  01 70 a0 e3                                      mov r7, #1
0070308c  a0 fe ff ea                                      b #0x702b14
; mapping-symbol data/literal pool
00703090  a4 20 29 00 c0 3c 00 00                          .byte 0xa4, 0x20, 0x29, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x00703098, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZTv0_n24_N6glitch5scene22CShadowVolumeSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode()
; decoder-mode: arm
00703098  00 30 90 e5                                      ldr r3, [r0]
0070309c  18 30 13 e5                                      ldr r3, [r3, #-0x18]
007030a0  03 00 80 e0                                      add r0, r0, r3
007030a4  fa f7 ff ea                                      b #0x701094

; FUNCTION 0x007030a8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZTv0_n12_N6glitch5scene22CShadowVolumeSceneNodeD0Ev
; demangled: virtual thunk to glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode()
; decoder-mode: arm
007030a8  00 30 90 e5                                      ldr r3, [r0]
007030ac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
007030b0  03 00 80 e0                                      add r0, r0, r3
007030b4  f6 f7 ff ea                                      b #0x701094

; FUNCTION 0x007030b8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZTv0_n24_N6glitch5scene22CShadowVolumeSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode()
; decoder-mode: arm
007030b8  00 30 90 e5                                      ldr r3, [r0]
007030bc  18 30 13 e5                                      ldr r3, [r3, #-0x18]
007030c0  03 00 80 e0                                      add r0, r0, r3
007030c4  c2 f7 ff ea                                      b #0x700fd4

; FUNCTION 0x007030c8, declared_size=16, range_size=16, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode
; alias: _ZTv0_n12_N6glitch5scene22CShadowVolumeSceneNodeD1Ev
; demangled: virtual thunk to glitch::scene::CShadowVolumeSceneNode::~CShadowVolumeSceneNode()
; decoder-mode: arm
007030c8  00 30 90 e5                                      ldr r3, [r0]
007030cc  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
007030d0  03 00 80 e0                                      add r0, r0, r3
007030d4  be f7 ff ea                                      b #0x700fd4
