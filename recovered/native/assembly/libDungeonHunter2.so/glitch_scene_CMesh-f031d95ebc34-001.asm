; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006bba70, declared_size=100, range_size=100, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZN6glitch5scene5CMeshC2Ev
; demangled: glitch::scene::CMesh::CMesh()
; decoder-mode: arm
006bba70  54 10 9f e5                                      ldr r1, [pc, #0x54]
006bba74  54 20 9f e5                                      ldr r2, [pc, #0x54]
006bba78  30 00 2d e9                                      push {r4, r5}
006bba7c  01 10 8f e0                                      add r1, pc, r1
006bba80  02 20 91 e7                                      ldr r2, [r1, r2]
006bba84  bf 44 a0 e3                                      mov r4, #0xbf000000
006bba88  02 45 84 e2                                      add r4, r4, #0x800000
006bba8c  fe c5 a0 e3                                      mov ip, #0x3f800000
006bba90  08 50 82 e2                                      add r5, r2, #8
006bba94  00 20 a0 e3                                      mov r2, #0
006bba98  28 c0 80 e5                                      str ip, [r0, #0x28]
006bba9c  00 50 80 e5                                      str r5, [r0]
006bbaa0  10 20 80 e5                                      str r2, [r0, #0x10]
006bbaa4  1c 40 80 e5                                      str r4, [r0, #0x1c]
006bbaa8  04 20 80 e5                                      str r2, [r0, #4]
006bbaac  08 20 80 e5                                      str r2, [r0, #8]
006bbab0  0c 20 80 e5                                      str r2, [r0, #0xc]
006bbab4  14 40 80 e5                                      str r4, [r0, #0x14]
006bbab8  18 40 80 e5                                      str r4, [r0, #0x18]
006bbabc  20 c0 80 e5                                      str ip, [r0, #0x20]
006bbac0  24 c0 80 e5                                      str ip, [r0, #0x24]
006bbac4  30 00 bd e8                                      pop {r4, r5}
006bbac8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006bbacc  14 90 2d 00 9c 10 00 00                          .byte 0x14, 0x90, 0x2d, 0x00, 0x9c, 0x10, 0x00, 0x00

; FUNCTION 0x006bbad4, declared_size=100, range_size=100, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZN6glitch5scene5CMeshC1Ev
; demangled: glitch::scene::CMesh::CMesh()
; decoder-mode: arm
006bbad4  54 10 9f e5                                      ldr r1, [pc, #0x54]
006bbad8  54 20 9f e5                                      ldr r2, [pc, #0x54]
006bbadc  30 00 2d e9                                      push {r4, r5}
006bbae0  01 10 8f e0                                      add r1, pc, r1
006bbae4  02 20 91 e7                                      ldr r2, [r1, r2]
006bbae8  bf 44 a0 e3                                      mov r4, #0xbf000000
006bbaec  02 45 84 e2                                      add r4, r4, #0x800000
006bbaf0  fe c5 a0 e3                                      mov ip, #0x3f800000
006bbaf4  08 50 82 e2                                      add r5, r2, #8
006bbaf8  00 20 a0 e3                                      mov r2, #0
006bbafc  28 c0 80 e5                                      str ip, [r0, #0x28]
006bbb00  00 50 80 e5                                      str r5, [r0]
006bbb04  10 20 80 e5                                      str r2, [r0, #0x10]
006bbb08  1c 40 80 e5                                      str r4, [r0, #0x1c]
006bbb0c  04 20 80 e5                                      str r2, [r0, #4]
006bbb10  08 20 80 e5                                      str r2, [r0, #8]
006bbb14  0c 20 80 e5                                      str r2, [r0, #0xc]
006bbb18  14 40 80 e5                                      str r4, [r0, #0x14]
006bbb1c  18 40 80 e5                                      str r4, [r0, #0x18]
006bbb20  20 c0 80 e5                                      str ip, [r0, #0x20]
006bbb24  24 c0 80 e5                                      str ip, [r0, #0x24]
006bbb28  30 00 bd e8                                      pop {r4, r5}
006bbb2c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006bbb30  b0 8f 2d 00 9c 10 00 00                          .byte 0xb0, 0x8f, 0x2d, 0x00, 0x9c, 0x10, 0x00, 0x00

; FUNCTION 0x006bbb38, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZNK6glitch5scene5CMesh18getMeshBufferCountEv
; demangled: glitch::scene::CMesh::getMeshBufferCount() const
; decoder-mode: arm
006bbb38  08 30 90 e5                                      ldr r3, [r0, #8]
006bbb3c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
006bbb40  02 30 63 e0                                      rsb r3, r3, r2
006bbb44  43 31 a0 e1                                      asr r3, r3, #2
006bbb48  03 01 83 e0                                      add r0, r3, r3, lsl #2
006bbb4c  00 02 80 e0                                      add r0, r0, r0, lsl #4
006bbb50  00 04 80 e0                                      add r0, r0, r0, lsl #8
006bbb54  00 08 80 e0                                      add r0, r0, r0, lsl #16
006bbb58  80 00 83 e0                                      add r0, r3, r0, lsl #1
006bbb5c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006bbb60, declared_size=88, range_size=88, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZNK6glitch5scene5CMesh13getMeshBufferEj
; demangled: glitch::scene::CMesh::getMeshBuffer(unsigned int) const
; decoder-mode: arm
006bbb60  08 30 91 e5                                      ldr r3, [r1, #8]
006bbb64  0c c0 91 e5                                      ldr ip, [r1, #0xc]
006bbb68  0c c0 63 e0                                      rsb ip, r3, ip
006bbb6c  4c c1 a0 e1                                      asr ip, ip, #2
006bbb70  0c 11 8c e0                                      add r1, ip, ip, lsl #2
006bbb74  01 12 81 e0                                      add r1, r1, r1, lsl #4
006bbb78  01 14 81 e0                                      add r1, r1, r1, lsl #8
006bbb7c  01 18 81 e0                                      add r1, r1, r1, lsl #16
006bbb80  81 c0 8c e0                                      add ip, ip, r1, lsl #1
006bbb84  0c 00 52 e1                                      cmp r2, ip
006bbb88  00 30 a0 23                                      movhs r3, #0
006bbb8c  00 30 80 25                                      strhs r3, [r0]
006bbb90  1e ff 2f 21                                      bxhs lr
006bbb94  0c 10 a0 e3                                      mov r1, #0xc
006bbb98  91 02 02 e0                                      mul r2, r1, r2
006bbb9c  02 30 93 e7                                      ldr r3, [r3, r2]
006bbba0  00 00 53 e3                                      cmp r3, #0
006bbba4  00 30 80 e5                                      str r3, [r0]
006bbba8  04 20 93 15                                      ldrne r2, [r3, #4]
006bbbac  01 20 82 12                                      addne r2, r2, #1
006bbbb0  04 20 83 15                                      strne r2, [r3, #4]
006bbbb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006bbbb8, declared_size=88, range_size=88, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZNK6glitch5scene5CMesh11getMaterialEj
; demangled: glitch::scene::CMesh::getMaterial(unsigned int) const
; decoder-mode: arm
006bbbb8  08 30 91 e5                                      ldr r3, [r1, #8]
006bbbbc  0c c0 91 e5                                      ldr ip, [r1, #0xc]
006bbbc0  0c c0 63 e0                                      rsb ip, r3, ip
006bbbc4  4c c1 a0 e1                                      asr ip, ip, #2
006bbbc8  0c 11 8c e0                                      add r1, ip, ip, lsl #2
006bbbcc  01 12 81 e0                                      add r1, r1, r1, lsl #4
006bbbd0  01 14 81 e0                                      add r1, r1, r1, lsl #8
006bbbd4  01 18 81 e0                                      add r1, r1, r1, lsl #16
006bbbd8  81 c0 8c e0                                      add ip, ip, r1, lsl #1
006bbbdc  0c 00 52 e1                                      cmp r2, ip
006bbbe0  00 30 a0 23                                      movhs r3, #0
006bbbe4  00 30 80 25                                      strhs r3, [r0]
006bbbe8  1e ff 2f 21                                      bxhs lr
006bbbec  0c 10 a0 e3                                      mov r1, #0xc
006bbbf0  91 32 23 e0                                      mla r3, r1, r2, r3
006bbbf4  04 30 93 e5                                      ldr r3, [r3, #4]
006bbbf8  00 00 53 e3                                      cmp r3, #0
006bbbfc  00 30 80 e5                                      str r3, [r0]
006bbc00  00 20 93 15                                      ldrne r2, [r3]
006bbc04  01 20 82 12                                      addne r2, r2, #1
006bbc08  00 20 83 15                                      strne r2, [r3]
006bbc0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006bbc10, declared_size=88, range_size=88, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZNK6glitch5scene5CMesh29getMaterialVertexAttributeMapEj
; demangled: glitch::scene::CMesh::getMaterialVertexAttributeMap(unsigned int) const
; decoder-mode: arm
006bbc10  08 30 91 e5                                      ldr r3, [r1, #8]
006bbc14  0c c0 91 e5                                      ldr ip, [r1, #0xc]
006bbc18  0c c0 63 e0                                      rsb ip, r3, ip
006bbc1c  4c c1 a0 e1                                      asr ip, ip, #2
006bbc20  0c 11 8c e0                                      add r1, ip, ip, lsl #2
006bbc24  01 12 81 e0                                      add r1, r1, r1, lsl #4
006bbc28  01 14 81 e0                                      add r1, r1, r1, lsl #8
006bbc2c  01 18 81 e0                                      add r1, r1, r1, lsl #16
006bbc30  81 c0 8c e0                                      add ip, ip, r1, lsl #1
006bbc34  0c 00 52 e1                                      cmp r2, ip
006bbc38  00 30 a0 23                                      movhs r3, #0
006bbc3c  00 30 80 25                                      strhs r3, [r0]
006bbc40  1e ff 2f 21                                      bxhs lr
006bbc44  0c 10 a0 e3                                      mov r1, #0xc
006bbc48  91 32 23 e0                                      mla r3, r1, r2, r3
006bbc4c  08 30 93 e5                                      ldr r3, [r3, #8]
006bbc50  00 00 53 e3                                      cmp r3, #0
006bbc54  00 30 80 e5                                      str r3, [r0]
006bbc58  00 20 93 15                                      ldrne r2, [r3]
006bbc5c  01 20 82 12                                      addne r2, r2, #1
006bbc60  00 20 83 15                                      strne r2, [r3]
006bbc64  1e ff 2f e1                                      bx lr

; FUNCTION 0x006bbc68, declared_size=8, range_size=8, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZNK6glitch5scene5CMesh14getBoundingBoxEv
; demangled: glitch::scene::CMesh::getBoundingBox() const
; decoder-mode: arm
006bbc68  14 00 80 e2                                      add r0, r0, #0x14
006bbc6c  1e ff 2f e1                                      bx lr

; FUNCTION 0x006bbc70, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZN6glitch5scene5CMesh14setBoundingBoxERKNS_4core8aabbox3dIfEE
; demangled: glitch::scene::CMesh::setBoundingBox(glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
006bbc70  00 30 91 e5                                      ldr r3, [r1]
006bbc74  14 30 80 e5                                      str r3, [r0, #0x14]
006bbc78  04 30 91 e5                                      ldr r3, [r1, #4]
006bbc7c  18 30 80 e5                                      str r3, [r0, #0x18]
006bbc80  08 30 91 e5                                      ldr r3, [r1, #8]
006bbc84  1c 30 80 e5                                      str r3, [r0, #0x1c]
006bbc88  0c 30 91 e5                                      ldr r3, [r1, #0xc]
006bbc8c  20 30 80 e5                                      str r3, [r0, #0x20]
006bbc90  10 30 91 e5                                      ldr r3, [r1, #0x10]
006bbc94  24 30 80 e5                                      str r3, [r0, #0x24]
006bbc98  14 30 91 e5                                      ldr r3, [r1, #0x14]
006bbc9c  28 30 80 e5                                      str r3, [r0, #0x28]
006bbca0  1e ff 2f e1                                      bx lr

; FUNCTION 0x006bbd6c, declared_size=172, range_size=172, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZN6glitch5scene5CMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS3_INS4_27CMaterialVertexAttributeMapEEE
; demangled: glitch::scene::CMesh::setMaterial(unsigned int, boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&)
; decoder-mode: arm
006bbd6c  30 40 2d e9                                      push {r4, r5, lr}
006bbd70  0c c0 90 e5                                      ldr ip, [r0, #0xc]
006bbd74  08 00 90 e5                                      ldr r0, [r0, #8]
006bbd78  03 50 a0 e1                                      mov r5, r3
006bbd7c  0c d0 4d e2                                      sub sp, sp, #0xc
006bbd80  0c c0 60 e0                                      rsb ip, r0, ip
006bbd84  4c c1 a0 e1                                      asr ip, ip, #2
006bbd88  0c 31 8c e0                                      add r3, ip, ip, lsl #2
006bbd8c  03 32 83 e0                                      add r3, r3, r3, lsl #4
006bbd90  03 34 83 e0                                      add r3, r3, r3, lsl #8
006bbd94  03 38 83 e0                                      add r3, r3, r3, lsl #16
006bbd98  83 c0 8c e0                                      add ip, ip, r3, lsl #1
006bbd9c  0c 00 51 e1                                      cmp r1, ip
006bbda0  1a 00 00 2a                                      bhs #0x6bbe10
006bbda4  00 30 92 e5                                      ldr r3, [r2]
006bbda8  0c 40 a0 e3                                      mov r4, #0xc
006bbdac  94 01 24 e0                                      mla r4, r4, r1, r0
006bbdb0  04 30 8d e5                                      str r3, [sp, #4]
006bbdb4  00 00 53 e3                                      cmp r3, #0
006bbdb8  00 20 93 15                                      ldrne r2, [r3]
006bbdbc  08 00 8d e2                                      add r0, sp, #8
006bbdc0  01 20 82 12                                      addne r2, r2, #1
006bbdc4  00 20 83 15                                      strne r2, [r3]
006bbdc8  04 20 94 e5                                      ldr r2, [r4, #4]
006bbdcc  04 30 9d 15                                      ldrne r3, [sp, #4]
006bbdd0  04 20 20 e5                                      str r2, [r0, #-4]!
006bbdd4  04 30 84 e5                                      str r3, [r4, #4]
006bbdd8  82 53 f1 eb                                      bl #0x310be8
006bbddc  00 30 95 e5                                      ldr r3, [r5]
006bbde0  08 00 8d e2                                      add r0, sp, #8
006bbde4  00 30 8d e5                                      str r3, [sp]
006bbde8  00 00 53 e3                                      cmp r3, #0
006bbdec  00 20 93 15                                      ldrne r2, [r3]
006bbdf0  01 20 82 12                                      addne r2, r2, #1
006bbdf4  00 20 83 15                                      strne r2, [r3]
006bbdf8  00 30 9d 15                                      ldrne r3, [sp]
006bbdfc  08 20 94 e5                                      ldr r2, [r4, #8]
006bbe00  08 20 20 e5                                      str r2, [r0, #-8]!
006bbe04  08 30 84 e5                                      str r3, [r4, #8]
006bbe08  0d 00 a0 e1                                      mov r0, sp
006bbe0c  16 f9 fa eb                                      bl #0x57a26c
006bbe10  0c d0 8d e2                                      add sp, sp, #0xc
006bbe14  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006bbedc, declared_size=44, range_size=44, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZN6glitch5scene5CMesh5clearEv
; demangled: glitch::scene::CMesh::clear()
; decoder-mode: arm
006bbedc  04 e0 2d e5                                      str lr, [sp, #-4]!
006bbee0  08 10 90 e5                                      ldr r1, [r0, #8]
006bbee4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
006bbee8  0c d0 4d e2                                      sub sp, sp, #0xc
006bbeec  02 00 51 e1                                      cmp r1, r2
006bbef0  02 00 00 0a                                      beq #0x6bbf00
006bbef4  08 00 80 e2                                      add r0, r0, #8
006bbef8  04 30 8d e2                                      add r3, sp, #4
006bbefc  d1 ff ff eb                                      bl #0x6bbe48
006bbf00  0c d0 8d e2                                      add sp, sp, #0xc
006bbf04  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x006bc248, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZN6glitch5scene5CMeshD1Ev
; demangled: glitch::scene::CMesh::~CMesh()
; decoder-mode: arm
006bc248  24 30 9f e5                                      ldr r3, [pc, #0x24]
006bc24c  24 20 9f e5                                      ldr r2, [pc, #0x24]
006bc250  10 40 2d e9                                      push {r4, lr}
006bc254  03 30 8f e0                                      add r3, pc, r3
006bc258  02 20 93 e7                                      ldr r2, [r3, r2]
006bc25c  00 40 a0 e1                                      mov r4, r0
006bc260  08 20 82 e2                                      add r2, r2, #8
006bc264  08 20 80 e4                                      str r2, [r0], #8
006bc268  e5 ff ff eb                                      bl #0x6bc204
006bc26c  04 00 a0 e1                                      mov r0, r4
006bc270  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006bc274  3c 88 2d 00 9c 10 00 00                          .byte 0x3c, 0x88, 0x2d, 0x00, 0x9c, 0x10, 0x00, 0x00

; FUNCTION 0x006bc27c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZN6glitch5scene5CMeshD0Ev
; demangled: glitch::scene::CMesh::~CMesh()
; decoder-mode: arm
006bc27c  10 40 2d e9                                      push {r4, lr}
006bc280  00 40 a0 e1                                      mov r4, r0
006bc284  ef ff ff eb                                      bl #0x6bc248
006bc288  04 00 a0 e1                                      mov r0, r4
006bc28c  07 48 f1 eb                                      bl #0x30e2b0
006bc290  04 00 a0 e1                                      mov r0, r4
006bc294  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006bc298, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZN6glitch5scene5CMeshD2Ev
; demangled: glitch::scene::CMesh::~CMesh()
; decoder-mode: arm
006bc298  24 30 9f e5                                      ldr r3, [pc, #0x24]
006bc29c  24 20 9f e5                                      ldr r2, [pc, #0x24]
006bc2a0  10 40 2d e9                                      push {r4, lr}
006bc2a4  03 30 8f e0                                      add r3, pc, r3
006bc2a8  02 20 93 e7                                      ldr r2, [r3, r2]
006bc2ac  00 40 a0 e1                                      mov r4, r0
006bc2b0  08 20 82 e2                                      add r2, r2, #8
006bc2b4  08 20 80 e4                                      str r2, [r0], #8
006bc2b8  d1 ff ff eb                                      bl #0x6bc204
006bc2bc  04 00 a0 e1                                      mov r0, r4
006bc2c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006bc2c4  ec 87 2d 00 9c 10 00 00                          .byte 0xec, 0x87, 0x2d, 0x00, 0x9c, 0x10, 0x00, 0x00

; FUNCTION 0x006bc2cc, declared_size=280, range_size=280, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZN6glitch5scene5CMesh22recalculateBoundingBoxEv
; demangled: glitch::scene::CMesh::recalculateBoundingBox()
; decoder-mode: arm
006bc2cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006bc2d0  0c a0 90 e5                                      ldr sl, [r0, #0xc]
006bc2d4  08 50 90 e5                                      ldr r5, [r0, #8]
006bc2d8  1c d0 4d e2                                      sub sp, sp, #0x1c
006bc2dc  00 40 a0 e1                                      mov r4, r0
006bc2e0  0a 30 65 e0                                      rsb r3, r5, sl
006bc2e4  43 31 a0 e1                                      asr r3, r3, #2
006bc2e8  03 21 83 e0                                      add r2, r3, r3, lsl #2
006bc2ec  02 22 82 e0                                      add r2, r2, r2, lsl #4
006bc2f0  02 24 82 e0                                      add r2, r2, r2, lsl #8
006bc2f4  02 28 82 e0                                      add r2, r2, r2, lsl #16
006bc2f8  82 30 83 e0                                      add r3, r3, r2, lsl #1
006bc2fc  00 00 53 e3                                      cmp r3, #0
006bc300  2f 00 00 0a                                      beq #0x6bc3c4
006bc304  05 00 5a e1                                      cmp sl, r5
006bc308  2b 00 00 0a                                      beq #0x6bc3bc
006bc30c  bf 74 a0 e3                                      mov r7, #0xbf000000
006bc310  02 75 87 e2                                      add r7, r7, #0x800000
006bc314  fe 65 a0 e3                                      mov r6, #0x3f800000
006bc318  14 b0 80 e2                                      add fp, r0, #0x14
006bc31c  01 80 a0 e3                                      mov r8, #1
006bc320  0d 90 a0 e1                                      mov sb, sp
006bc324  0f 00 00 ea                                      b #0x6bc368
006bc328  00 80 9d e5                                      ldr r8, [sp]
006bc32c  04 c0 9d e5                                      ldr ip, [sp, #4]
006bc330  08 00 9d e5                                      ldr r0, [sp, #8]
006bc334  0c 10 9d e5                                      ldr r1, [sp, #0xc]
006bc338  10 20 9d e5                                      ldr r2, [sp, #0x10]
006bc33c  14 30 9d e5                                      ldr r3, [sp, #0x14]
006bc340  0c 50 85 e2                                      add r5, r5, #0xc
006bc344  0a 00 55 e1                                      cmp r5, sl
006bc348  14 80 84 e5                                      str r8, [r4, #0x14]
006bc34c  18 c0 84 e5                                      str ip, [r4, #0x18]
006bc350  1c 00 84 e5                                      str r0, [r4, #0x1c]
006bc354  20 10 84 e5                                      str r1, [r4, #0x20]
006bc358  24 20 84 e5                                      str r2, [r4, #0x24]
006bc35c  28 30 84 e5                                      str r3, [r4, #0x28]
006bc360  00 80 a0 e3                                      mov r8, #0
006bc364  14 00 00 0a                                      beq #0x6bc3bc
006bc368  00 10 95 e5                                      ldr r1, [r5]
006bc36c  0d 30 a0 e1                                      mov r3, sp
006bc370  28 20 91 e5                                      ldr r2, [r1, #0x28]
006bc374  14 00 91 e5                                      ldr r0, [r1, #0x14]
006bc378  24 10 91 e5                                      ldr r1, [r1, #0x24]
006bc37c  00 70 8d e5                                      str r7, [sp]
006bc380  04 70 8d e5                                      str r7, [sp, #4]
006bc384  08 70 8d e5                                      str r7, [sp, #8]
006bc388  0c 60 8d e5                                      str r6, [sp, #0xc]
006bc38c  10 60 8d e5                                      str r6, [sp, #0x10]
006bc390  14 60 8d e5                                      str r6, [sp, #0x14]
006bc394  c9 92 fb eb                                      bl #0x5a0ec0
006bc398  00 00 58 e3                                      cmp r8, #0
006bc39c  e1 ff ff 1a                                      bne #0x6bc328
006bc3a0  0b 00 a0 e1                                      mov r0, fp
006bc3a4  0d 10 a0 e1                                      mov r1, sp
006bc3a8  0c 50 85 e2                                      add r5, r5, #0xc
006bc3ac  67 7f f2 eb                                      bl #0x35c150
006bc3b0  0a 00 55 e1                                      cmp r5, sl
006bc3b4  00 80 a0 e3                                      mov r8, #0
006bc3b8  ea ff ff 1a                                      bne #0x6bc368
006bc3bc  1c d0 8d e2                                      add sp, sp, #0x1c
006bc3c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006bc3c4  00 30 a0 e3                                      mov r3, #0
006bc3c8  1c 30 80 e5                                      str r3, [r0, #0x1c]
006bc3cc  20 30 80 e5                                      str r3, [r0, #0x20]
006bc3d0  24 30 80 e5                                      str r3, [r0, #0x24]
006bc3d4  28 30 80 e5                                      str r3, [r0, #0x28]
006bc3d8  14 30 80 e5                                      str r3, [r0, #0x14]
006bc3dc  18 30 80 e5                                      str r3, [r0, #0x18]
006bc3e0  f5 ff ff ea                                      b #0x6bc3bc

; FUNCTION 0x006bc3e4, declared_size=140, range_size=140, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZNK6glitch5scene5CMesh5cloneEv
; demangled: glitch::scene::CMesh::clone() const
; decoder-mode: arm
006bc3e4  70 40 2d e9                                      push {r4, r5, r6, lr}
006bc3e8  01 50 a0 e1                                      mov r5, r1
006bc3ec  00 60 a0 e1                                      mov r6, r0
006bc3f0  00 10 a0 e3                                      mov r1, #0
006bc3f4  2c 00 a0 e3                                      mov r0, #0x2c
006bc3f8  6b df f9 eb                                      bl #0x5341ac
006bc3fc  00 40 a0 e1                                      mov r4, r0
006bc400  b3 fd ff eb                                      bl #0x6bbad4
006bc404  00 00 54 e3                                      cmp r4, #0
006bc408  04 30 94 15                                      ldrne r3, [r4, #4]
006bc40c  08 10 85 e2                                      add r1, r5, #8
006bc410  08 00 84 e2                                      add r0, r4, #8
006bc414  01 30 83 12                                      addne r3, r3, #1
006bc418  04 30 84 15                                      strne r3, [r4, #4]
006bc41c  e3 fe ff eb                                      bl #0x6bbfb0
006bc420  14 30 95 e5                                      ldr r3, [r5, #0x14]
006bc424  04 00 a0 e1                                      mov r0, r4
006bc428  14 30 84 e5                                      str r3, [r4, #0x14]
006bc42c  18 30 95 e5                                      ldr r3, [r5, #0x18]
006bc430  18 30 84 e5                                      str r3, [r4, #0x18]
006bc434  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
006bc438  1c 30 84 e5                                      str r3, [r4, #0x1c]
006bc43c  20 30 95 e5                                      ldr r3, [r5, #0x20]
006bc440  20 30 84 e5                                      str r3, [r4, #0x20]
006bc444  24 30 95 e5                                      ldr r3, [r5, #0x24]
006bc448  24 30 84 e5                                      str r3, [r4, #0x24]
006bc44c  28 30 95 e5                                      ldr r3, [r5, #0x28]
006bc450  28 30 84 e5                                      str r3, [r4, #0x28]
006bc454  00 40 86 e5                                      str r4, [r6]
006bc458  04 30 94 e5                                      ldr r3, [r4, #4]
006bc45c  01 30 83 e2                                      add r3, r3, #1
006bc460  04 30 84 e5                                      str r3, [r4, #4]
006bc464  46 84 f1 eb                                      bl #0x31d584
006bc468  06 00 a0 e1                                      mov r0, r6
006bc46c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006bc664, declared_size=116, range_size=116, mode=arm
; class-group: glitch::scene::CMesh
; alias: _ZN6glitch5scene5CMesh13addMeshBufferERKN5boost13intrusive_ptrINS0_11CMeshBufferEEERKNS3_INS_5video9CMaterialEEERKNS3_INS8_27CMaterialVertexAttributeMapEEE
; demangled: glitch::scene::CMesh::addMeshBuffer(boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&, boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&)
; decoder-mode: arm
006bc664  10 40 2d e9                                      push {r4, lr}
006bc668  00 10 91 e5                                      ldr r1, [r1]
006bc66c  10 d0 4d e2                                      sub sp, sp, #0x10
006bc670  00 00 51 e3                                      cmp r1, #0
006bc674  15 00 00 0a                                      beq #0x6bc6d0
006bc678  04 10 8d e5                                      str r1, [sp, #4]
006bc67c  04 c0 91 e5                                      ldr ip, [r1, #4]
006bc680  04 40 8d e2                                      add r4, sp, #4
006bc684  08 00 80 e2                                      add r0, r0, #8
006bc688  01 c0 8c e2                                      add ip, ip, #1
006bc68c  04 c0 81 e5                                      str ip, [r1, #4]
006bc690  00 20 92 e5                                      ldr r2, [r2]
006bc694  00 00 52 e3                                      cmp r2, #0
006bc698  08 20 8d e5                                      str r2, [sp, #8]
006bc69c  00 10 92 15                                      ldrne r1, [r2]
006bc6a0  01 10 81 12                                      addne r1, r1, #1
006bc6a4  00 10 82 15                                      strne r1, [r2]
006bc6a8  00 30 93 e5                                      ldr r3, [r3]
006bc6ac  04 10 a0 e1                                      mov r1, r4
006bc6b0  00 00 53 e3                                      cmp r3, #0
006bc6b4  0c 30 8d e5                                      str r3, [sp, #0xc]
006bc6b8  00 20 93 15                                      ldrne r2, [r3]
006bc6bc  01 20 82 12                                      addne r2, r2, #1
006bc6c0  00 20 83 15                                      strne r2, [r3]
006bc6c4  69 ff ff eb                                      bl #0x6bc470
006bc6c8  04 00 a0 e1                                      mov r0, r4
006bc6cc  d1 fd ff eb                                      bl #0x6bbe18
006bc6d0  10 d0 8d e2                                      add sp, sp, #0x10
006bc6d4  10 80 bd e8                                      pop {r4, pc}
