; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00663524, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZNK6glitch7collada12CSkinnedMesh7getTypeEv
; demangled: glitch::collada::CSkinnedMesh::getType() const
; decoder-mode: arm
00663524  02 00 a0 e3                                      mov r0, #2
00663528  1e ff 2f e1                                      bx lr

; FUNCTION 0x0066352c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZNK6glitch7collada12CSkinnedMesh5cloneEv
; demangled: glitch::collada::CSkinnedMesh::clone() const
; decoder-mode: arm
0066352c  00 20 a0 e3                                      mov r2, #0
00663530  00 20 80 e5                                      str r2, [r0]
00663534  1e ff 2f e1                                      bx lr

; FUNCTION 0x00663538, declared_size=76, range_size=76, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMesh6attachEPNS_5scene10ISceneNodeE
; demangled: glitch::collada::CSkinnedMesh::attach(glitch::scene::ISceneNode*)
; decoder-mode: arm
00663538  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066353c  00 70 a0 e1                                      mov r7, r0
00663540  01 60 a0 e1                                      mov r6, r1
00663544  6c 10 87 e5                                      str r1, [r7, #0x6c]
00663548  00 50 a0 e1                                      mov r5, r0
0066354c  00 40 a0 e3                                      mov r4, #0
00663550  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
00663554  01 40 84 e2                                      add r4, r4, #1
00663558  06 10 a0 e1                                      mov r1, r6
0066355c  03 00 a0 e1                                      mov r0, r3
00663560  00 30 93 e5                                      ldr r3, [r3]
00663564  0f e0 a0 e1                                      mov lr, pc
00663568  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0066356c  04 00 54 e3                                      cmp r4, #4
00663570  04 50 85 e2                                      add r5, r5, #4
00663574  f5 ff ff 1a                                      bne #0x663550
00663578  00 30 e0 e3                                      mvn r3, #0
0066357c  70 30 87 e5                                      str r3, [r7, #0x70]
00663580  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00663584, declared_size=48, range_size=48, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMesh9onAnimateEj
; demangled: glitch::collada::CSkinnedMesh::onAnimate(unsigned int)
; decoder-mode: arm
00663584  10 40 2d e9                                      push {r4, lr}
00663588  68 30 90 e5                                      ldr r3, [r0, #0x68]
0066358c  00 40 a0 e1                                      mov r4, r0
00663590  03 00 a0 e1                                      mov r0, r3
00663594  00 30 93 e5                                      ldr r3, [r3]
00663598  0f e0 a0 e1                                      mov lr, pc
0066359c  34 f0 93 e5                                      ldr pc, [r3, #0x34]
006635a0  70 30 94 e5                                      ldr r3, [r4, #0x70]
006635a4  23 38 e0 e1                                      mvn r3, r3, lsr #16
006635a8  03 38 e0 e1                                      mvn r3, r3, lsl #16
006635ac  70 30 84 e5                                      str r3, [r4, #0x70]
006635b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006635b4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZNK6glitch7collada12CSkinnedMesh18getMeshBufferCountEv
; demangled: glitch::collada::CSkinnedMesh::getMeshBufferCount() const
; decoder-mode: arm
006635b4  10 40 2d e9                                      push {r4, lr}
006635b8  68 30 90 e5                                      ldr r3, [r0, #0x68]
006635bc  03 00 a0 e1                                      mov r0, r3
006635c0  00 30 93 e5                                      ldr r3, [r3]
006635c4  0f e0 a0 e1                                      mov lr, pc
006635c8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006635cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006635d0, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZNK6glitch7collada12CSkinnedMesh13getMeshBufferEj
; demangled: glitch::collada::CSkinnedMesh::getMeshBuffer(unsigned int) const
; decoder-mode: arm
006635d0  14 30 a0 e3                                      mov r3, #0x14
006635d4  93 02 03 e0                                      mul r3, r3, r2
006635d8  5c 20 91 e5                                      ldr r2, [r1, #0x5c]
006635dc  03 30 92 e7                                      ldr r3, [r2, r3]
006635e0  00 00 53 e3                                      cmp r3, #0
006635e4  00 30 80 e5                                      str r3, [r0]
006635e8  04 20 93 15                                      ldrne r2, [r3, #4]
006635ec  01 20 82 12                                      addne r2, r2, #1
006635f0  04 20 83 15                                      strne r2, [r3, #4]
006635f4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006635f8, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZNK6glitch7collada12CSkinnedMesh11getMaterialEj
; demangled: glitch::collada::CSkinnedMesh::getMaterial(unsigned int) const
; decoder-mode: arm
006635f8  5c 30 91 e5                                      ldr r3, [r1, #0x5c]
006635fc  14 10 a0 e3                                      mov r1, #0x14
00663600  91 32 23 e0                                      mla r3, r1, r2, r3
00663604  04 30 93 e5                                      ldr r3, [r3, #4]
00663608  00 00 53 e3                                      cmp r3, #0
0066360c  00 30 80 e5                                      str r3, [r0]
00663610  00 20 93 15                                      ldrne r2, [r3]
00663614  01 20 82 12                                      addne r2, r2, #1
00663618  00 20 83 15                                      strne r2, [r3]
0066361c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00663620, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZNK6glitch7collada12CSkinnedMesh29getMaterialVertexAttributeMapEj
; demangled: glitch::collada::CSkinnedMesh::getMaterialVertexAttributeMap(unsigned int) const
; decoder-mode: arm
00663620  5c 30 91 e5                                      ldr r3, [r1, #0x5c]
00663624  14 10 a0 e3                                      mov r1, #0x14
00663628  91 32 23 e0                                      mla r3, r1, r2, r3
0066362c  08 30 93 e5                                      ldr r3, [r3, #8]
00663630  00 00 53 e3                                      cmp r3, #0
00663634  00 30 80 e5                                      str r3, [r0]
00663638  00 20 93 15                                      ldrne r2, [r3]
0066363c  01 20 82 12                                      addne r2, r2, #1
00663640  00 20 83 15                                      strne r2, [r3]
00663644  1e ff 2f e1                                      bx lr

; FUNCTION 0x00663648, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMesh18computeBoundingBoxEv
; demangled: glitch::collada::CSkinnedMesh::computeBoundingBox()
; decoder-mode: arm
00663648  30 40 2d e9                                      push {r4, r5, lr}
0066364c  3c 30 90 e5                                      ldr r3, [r0, #0x3c]
00663650  1c d0 4d e2                                      sub sp, sp, #0x1c
00663654  00 40 a0 e1                                      mov r4, r0
00663658  03 10 a0 e1                                      mov r1, r3
0066365c  0d 00 a0 e1                                      mov r0, sp
00663660  00 30 93 e5                                      ldr r3, [r3]
00663664  0f e0 a0 e1                                      mov lr, pc
00663668  08 f0 93 e5                                      ldr pc, [r3, #8]
0066366c  04 c0 9d e5                                      ldr ip, [sp, #4]
00663670  08 10 9d e5                                      ldr r1, [sp, #8]
00663674  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00663678  10 30 9d e5                                      ldr r3, [sp, #0x10]
0066367c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00663680  00 50 9d e5                                      ldr r5, [sp]
00663684  28 c0 84 e5                                      str ip, [r4, #0x28]
00663688  38 00 84 e5                                      str r0, [r4, #0x38]
0066368c  24 50 84 e5                                      str r5, [r4, #0x24]
00663690  2c 10 84 e5                                      str r1, [r4, #0x2c]
00663694  30 20 84 e5                                      str r2, [r4, #0x30]
00663698  34 30 84 e5                                      str r3, [r4, #0x34]
0066369c  1c d0 8d e2                                      add sp, sp, #0x1c
006636a0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x006636a4, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZNK6glitch7collada12CSkinnedMesh14getBoundingBoxEv
; demangled: glitch::collada::CSkinnedMesh::getBoundingBox() const
; decoder-mode: arm
006636a4  10 40 2d e9                                      push {r4, lr}
006636a8  70 30 90 e5                                      ldr r3, [r0, #0x70]
006636ac  00 40 a0 e1                                      mov r4, r0
006636b0  08 00 13 e3                                      tst r3, #8
006636b4  00 00 00 0a                                      beq #0x6636bc
006636b8  e2 ff ff eb                                      bl #0x663648
006636bc  24 00 84 e2                                      add r0, r4, #0x24
006636c0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0066383c, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZNK6glitch7collada12CSkinnedMesh21reverifySkinTechniqueERKNS0_11SSkinBufferE
; demangled: glitch::collada::CSkinnedMesh::reverifySkinTechnique(glitch::collada::SSkinBuffer const&) const
; decoder-mode: arm
0066383c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00663840  00 60 a0 e1                                      mov r6, r0
00663844  04 00 91 e5                                      ldr r0, [r1, #4]
00663848  01 50 a0 e1                                      mov r5, r1
0066384c  38 89 fd eb                                      bl #0x5c5d34
00663850  10 30 d5 e5                                      ldrb r3, [r5, #0x10]
00663854  00 20 a0 e1                                      mov r2, r0
00663858  00 00 53 e1                                      cmp r3, r0
0066385c  12 00 00 0a                                      beq #0x6638ac
00663860  04 30 95 e5                                      ldr r3, [r5, #4]
00663864  10 00 c5 e5                                      strb r0, [r5, #0x10]
00663868  3c 60 86 e2                                      add r6, r6, #0x3c
0066386c  04 80 93 e5                                      ldr r8, [r3, #4]
00663870  00 40 a0 e3                                      mov r4, #0
00663874  0c 70 a0 e3                                      mov r7, #0xc
00663878  04 30 96 e7                                      ldr r3, [r6, r4]
0066387c  18 10 98 e5                                      ldr r1, [r8, #0x18]
00663880  03 00 a0 e1                                      mov r0, r3
00663884  97 12 21 e0                                      mla r1, r7, r2, r1
00663888  00 30 93 e5                                      ldr r3, [r3]
0066388c  0f e0 a0 e1                                      mov lr, pc
00663890  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00663894  00 00 50 e3                                      cmp r0, #0
00663898  04 00 00 1a                                      bne #0x6638b0
0066389c  04 40 84 e2                                      add r4, r4, #4
006638a0  10 00 54 e3                                      cmp r4, #0x10
006638a4  10 20 d5 15                                      ldrbne r2, [r5, #0x10]
006638a8  f2 ff ff 1a                                      bne #0x663878
006638ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006638b0  04 30 96 e7                                      ldr r3, [r6, r4]
006638b4  0c 30 85 e5                                      str r3, [r5, #0xc]
006638b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006638bc, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZNK6glitch7collada12CSkinnedMesh16needOutputBufferEv
; demangled: glitch::collada::CSkinnedMesh::needOutputBuffer() const
; decoder-mode: arm
006638bc  70 40 2d e9                                      push {r4, r5, r6, lr}
006638c0  5c 40 90 e5                                      ldr r4, [r0, #0x5c]
006638c4  60 30 90 e5                                      ldr r3, [r0, #0x60]
006638c8  00 50 a0 e1                                      mov r5, r0
006638cc  03 00 54 e1                                      cmp r4, r3
006638d0  00 60 a0 03                                      moveq r6, #0
006638d4  0e 00 00 0a                                      beq #0x663914
006638d8  00 60 a0 e3                                      mov r6, #0
006638dc  04 10 a0 e1                                      mov r1, r4
006638e0  05 00 a0 e1                                      mov r0, r5
006638e4  d4 ff ff eb                                      bl #0x66383c
006638e8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006638ec  14 40 84 e2                                      add r4, r4, #0x14
006638f0  03 00 a0 e1                                      mov r0, r3
006638f4  00 30 93 e5                                      ldr r3, [r3]
006638f8  0f e0 a0 e1                                      mov lr, pc
006638fc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00663900  60 30 95 e5                                      ldr r3, [r5, #0x60]
00663904  06 60 80 e1                                      orr r6, r0, r6
00663908  76 60 ef e6                                      uxtb r6, r6
0066390c  03 00 54 e1                                      cmp r4, r3
00663910  f1 ff ff 1a                                      bne #0x6638dc
00663914  06 00 a0 e1                                      mov r0, r6
00663918  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0066391c, declared_size=216, range_size=216, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS3_INS4_27CMaterialVertexAttributeMapEEE
; demangled: glitch::collada::CSkinnedMesh::setMaterial(unsigned int, boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&)
; decoder-mode: arm
0066391c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00663920  02 70 a0 e1                                      mov r7, r2
00663924  00 20 92 e5                                      ldr r2, [r2]
00663928  08 d0 4d e2                                      sub sp, sp, #8
0066392c  14 50 a0 e3                                      mov r5, #0x14
00663930  00 00 52 e3                                      cmp r2, #0
00663934  95 01 05 e0                                      mul r5, r5, r1
00663938  01 80 a0 e1                                      mov r8, r1
0066393c  5c 10 90 e5                                      ldr r1, [r0, #0x5c]
00663940  04 20 8d e5                                      str r2, [sp, #4]
00663944  03 60 a0 e1                                      mov r6, r3
00663948  00 30 92 15                                      ldrne r3, [r2]
0066394c  05 10 81 e0                                      add r1, r1, r5
00663950  00 40 a0 e1                                      mov r4, r0
00663954  01 30 83 12                                      addne r3, r3, #1
00663958  00 30 82 15                                      strne r3, [r2]
0066395c  04 30 91 e5                                      ldr r3, [r1, #4]
00663960  04 20 9d 15                                      ldrne r2, [sp, #4]
00663964  08 00 8d e2                                      add r0, sp, #8
00663968  04 30 20 e5                                      str r3, [r0, #-4]!
0066396c  04 20 81 e5                                      str r2, [r1, #4]
00663970  9c b4 f2 eb                                      bl #0x310be8
00663974  00 30 96 e5                                      ldr r3, [r6]
00663978  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
0066397c  08 00 8d e2                                      add r0, sp, #8
00663980  00 30 8d e5                                      str r3, [sp]
00663984  00 00 53 e3                                      cmp r3, #0
00663988  00 10 93 15                                      ldrne r1, [r3]
0066398c  05 20 82 e0                                      add r2, r2, r5
00663990  01 10 81 12                                      addne r1, r1, #1
00663994  00 10 83 15                                      strne r1, [r3]
00663998  00 30 9d 15                                      ldrne r3, [sp]
0066399c  08 10 92 e5                                      ldr r1, [r2, #8]
006639a0  08 10 20 e5                                      str r1, [r0, #-8]!
006639a4  08 30 82 e5                                      str r3, [r2, #8]
006639a8  0d 00 a0 e1                                      mov r0, sp
006639ac  2e 5a fc eb                                      bl #0x57a26c
006639b0  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006639b4  00 00 e0 e3                                      mvn r0, #0
006639b8  08 10 a0 e1                                      mov r1, r8
006639bc  05 30 83 e0                                      add r3, r3, r5
006639c0  10 00 c3 e5                                      strb r0, [r3, #0x10]
006639c4  5c c0 94 e5                                      ldr ip, [r4, #0x5c]
006639c8  07 20 a0 e1                                      mov r2, r7
006639cc  06 30 a0 e1                                      mov r3, r6
006639d0  05 50 8c e0                                      add r5, ip, r5
006639d4  11 00 c5 e5                                      strb r0, [r5, #0x11]
006639d8  68 c0 94 e5                                      ldr ip, [r4, #0x68]
006639dc  0c 00 a0 e1                                      mov r0, ip
006639e0  00 c0 9c e5                                      ldr ip, [ip]
006639e4  0f e0 a0 e1                                      mov lr, pc
006639e8  20 f0 9c e5                                      ldr pc, [ip, #0x20]
006639ec  08 d0 8d e2                                      add sp, sp, #8
006639f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006639f4, declared_size=96, range_size=96, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMesh20releaseProcessBufferEPNS_5video12IVideoDriverEj
; demangled: glitch::collada::CSkinnedMesh::releaseProcessBuffer(glitch::video::IVideoDriver*, unsigned int)
; decoder-mode: arm
006639f4  70 40 2d e9                                      push {r4, r5, r6, lr}
006639f8  23 30 d0 e5                                      ldrb r3, [r0, #0x23]
006639fc  00 40 a0 e1                                      mov r4, r0
00663a00  01 60 a0 e1                                      mov r6, r1
00663a04  00 00 53 e3                                      cmp r3, #0
00663a08  02 50 a0 e1                                      mov r5, r2
00663a0c  08 00 00 1a                                      bne #0x663a34
00663a10  18 30 d4 e5                                      ldrb r3, [r4, #0x18]
00663a14  00 00 53 e3                                      cmp r3, #0
00663a18  00 00 00 1a                                      bne #0x663a20
00663a1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00663a20  04 00 a0 e1                                      mov r0, r4
00663a24  06 10 a0 e1                                      mov r1, r6
00663a28  05 20 a0 e1                                      mov r2, r5
00663a2c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00663a30  7c 18 00 ea                                      b #0x669c28
00663a34  68 30 90 e5                                      ldr r3, [r0, #0x68]
00663a38  03 00 a0 e1                                      mov r0, r3
00663a3c  00 30 93 e5                                      ldr r3, [r3]
00663a40  0f e0 a0 e1                                      mov lr, pc
00663a44  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00663a48  00 30 a0 e3                                      mov r3, #0
00663a4c  23 30 c4 e5                                      strb r3, [r4, #0x23]
00663a50  ee ff ff ea                                      b #0x663a10

; FUNCTION 0x00664af8, declared_size=396, range_size=396, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMesh15instanciateMeshEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CSkinnedMesh::instanciateMesh(glitch::video::IVideoDriver*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00664af8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00664afc  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00664b00  2c d0 4d e2                                      sub sp, sp, #0x2c
00664b04  01 60 a0 e1                                      mov r6, r1
00664b08  70 50 93 e5                                      ldr r5, [r3, #0x70]
00664b0c  0c 70 80 e2                                      add r7, r0, #0xc
00664b10  00 40 a0 e1                                      mov r4, r0
00664b14  01 50 85 e2                                      add r5, r5, #1
00664b18  02 80 a0 e1                                      mov r8, r2
00664b1c  24 00 8d e2                                      add r0, sp, #0x24
00664b20  07 10 a0 e1                                      mov r1, r7
00664b24  06 20 a0 e1                                      mov r2, r6
00664b28  05 30 a0 e1                                      mov r3, r5
00664b2c  dd d7 fe eb                                      bl #0x61aaa8
00664b30  24 a0 9d e5                                      ldr sl, [sp, #0x24]
00664b34  00 00 5a e3                                      cmp sl, #0
00664b38  3e 00 00 0a                                      beq #0x664c38
00664b3c  04 30 9a e5                                      ldr r3, [sl, #4]
00664b40  01 30 83 e2                                      add r3, r3, #1
00664b44  04 30 8a e5                                      str r3, [sl, #4]
00664b48  24 00 9d e5                                      ldr r0, [sp, #0x24]
00664b4c  00 00 50 e3                                      cmp r0, #0
00664b50  00 00 00 0a                                      beq #0x664b58
00664b54  8a e2 f2 eb                                      bl #0x31d584
00664b58  00 00 5a e3                                      cmp sl, #0
00664b5c  35 00 00 0a                                      beq #0x664c38
00664b60  04 30 9a e5                                      ldr r3, [sl, #4]
00664b64  01 30 83 e2                                      add r3, r3, #1
00664b68  04 30 8a e5                                      str r3, [sl, #4]
00664b6c  68 00 94 e5                                      ldr r0, [r4, #0x68]
00664b70  68 a0 84 e5                                      str sl, [r4, #0x68]
00664b74  00 00 50 e3                                      cmp r0, #0
00664b78  0a 30 a0 01                                      moveq r3, sl
00664b7c  01 00 00 0a                                      beq #0x664b88
00664b80  7f e2 f2 eb                                      bl #0x31d584
00664b84  68 30 94 e5                                      ldr r3, [r4, #0x68]
00664b88  03 00 a0 e1                                      mov r0, r3
00664b8c  00 30 93 e5                                      ldr r3, [r3]
00664b90  0f e0 a0 e1                                      mov lr, pc
00664b94  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00664b98  00 30 90 e5                                      ldr r3, [r0]
00664b9c  24 30 84 e5                                      str r3, [r4, #0x24]
00664ba0  04 30 90 e5                                      ldr r3, [r0, #4]
00664ba4  28 30 84 e5                                      str r3, [r4, #0x28]
00664ba8  08 30 90 e5                                      ldr r3, [r0, #8]
00664bac  2c 30 84 e5                                      str r3, [r4, #0x2c]
00664bb0  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00664bb4  30 30 84 e5                                      str r3, [r4, #0x30]
00664bb8  10 30 90 e5                                      ldr r3, [r0, #0x10]
00664bbc  34 30 84 e5                                      str r3, [r4, #0x34]
00664bc0  14 30 90 e5                                      ldr r3, [r0, #0x14]
00664bc4  38 30 84 e5                                      str r3, [r4, #0x38]
00664bc8  68 30 94 e5                                      ldr r3, [r4, #0x68]
00664bcc  0c 50 8d e2                                      add r5, sp, #0xc
00664bd0  5c 40 84 e2                                      add r4, r4, #0x5c
00664bd4  03 00 a0 e1                                      mov r0, r3
00664bd8  00 30 93 e5                                      ldr r3, [r3]
00664bdc  0f e0 a0 e1                                      mov lr, pc
00664be0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00664be4  00 30 a0 e3                                      mov r3, #0
00664be8  00 c0 e0 e3                                      mvn ip, #0
00664bec  00 10 a0 e1                                      mov r1, r0
00664bf0  05 20 a0 e1                                      mov r2, r5
00664bf4  04 00 a0 e1                                      mov r0, r4
00664bf8  18 30 8d e5                                      str r3, [sp, #0x18]
00664bfc  1e c0 cd e5                                      strb ip, [sp, #0x1e]
00664c00  0c 30 8d e5                                      str r3, [sp, #0xc]
00664c04  10 30 8d e5                                      str r3, [sp, #0x10]
00664c08  14 30 8d e5                                      str r3, [sp, #0x14]
00664c0c  1c c0 cd e5                                      strb ip, [sp, #0x1c]
00664c10  1d c0 cd e5                                      strb ip, [sp, #0x1d]
00664c14  9d ff ff eb                                      bl #0x664a90
00664c18  05 00 a0 e1                                      mov r0, r5
00664c1c  75 fe ff eb                                      bl #0x6645f8
00664c20  00 00 5a e3                                      cmp sl, #0
00664c24  01 00 00 0a                                      beq #0x664c30
00664c28  0a 00 a0 e1                                      mov r0, sl
00664c2c  54 e2 f2 eb                                      bl #0x31d584
00664c30  2c d0 8d e2                                      add sp, sp, #0x2c
00664c34  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00664c38  07 10 a0 e1                                      mov r1, r7
00664c3c  06 20 a0 e1                                      mov r2, r6
00664c40  05 30 a0 e1                                      mov r3, r5
00664c44  20 00 8d e2                                      add r0, sp, #0x20
00664c48  00 80 8d e5                                      str r8, [sp]
00664c4c  6b d7 fe eb                                      bl #0x61aa00
00664c50  20 a0 9d e5                                      ldr sl, [sp, #0x20]
00664c54  00 00 5a e3                                      cmp sl, #0
00664c58  da ff ff 0a                                      beq #0x664bc8
00664c5c  04 30 9a e5                                      ldr r3, [sl, #4]
00664c60  01 30 83 e2                                      add r3, r3, #1
00664c64  04 30 8a e5                                      str r3, [sl, #4]
00664c68  20 00 9d e5                                      ldr r0, [sp, #0x20]
00664c6c  00 00 50 e3                                      cmp r0, #0
00664c70  00 00 00 0a                                      beq #0x664c78
00664c74  42 e2 f2 eb                                      bl #0x31d584
00664c78  00 00 5a e3                                      cmp sl, #0
00664c7c  d1 ff ff 0a                                      beq #0x664bc8
00664c80  b6 ff ff ea                                      b #0x664b60

; FUNCTION 0x00664c84, declared_size=392, range_size=392, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMesh20setIsSkinningEnabledEb
; demangled: glitch::collada::CSkinnedMesh::setIsSkinningEnabled(bool)
; decoder-mode: arm
00664c84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00664c88  18 30 d0 e5                                      ldrb r3, [r0, #0x18]
00664c8c  24 d0 4d e2                                      sub sp, sp, #0x24
00664c90  00 50 a0 e1                                      mov r5, r0
00664c94  00 00 53 e3                                      cmp r3, #0
00664c98  01 70 a0 e1                                      mov r7, r1
00664c9c  04 00 00 1a                                      bne #0x664cb4
00664ca0  00 00 51 e3                                      cmp r1, #0
00664ca4  70 30 90 15                                      ldrne r3, [r0, #0x70]
00664ca8  23 38 e0 11                                      mvnne r3, r3, lsr #16
00664cac  03 38 e0 11                                      mvnne r3, r3, lsl #16
00664cb0  70 30 80 15                                      strne r3, [r0, #0x70]
00664cb4  14 90 95 e5                                      ldr sb, [r5, #0x14]
00664cb8  01 90 19 e2                                      ands sb, sb, #1
00664cbc  31 00 00 1a                                      bne #0x664d88
00664cc0  5c 40 95 e5                                      ldr r4, [r5, #0x5c]
00664cc4  60 60 95 e5                                      ldr r6, [r5, #0x60]
00664cc8  06 00 54 e1                                      cmp r4, r6
00664ccc  2d 00 00 0a                                      beq #0x664d88
00664cd0  14 30 8d e2                                      add r3, sp, #0x14
00664cd4  0c 30 8d e5                                      str r3, [sp, #0xc]
00664cd8  18 30 8d e2                                      add r3, sp, #0x18
00664cdc  1c b0 8d e2                                      add fp, sp, #0x1c
00664ce0  08 30 8d e5                                      str r3, [sp, #8]
00664ce4  04 10 a0 e1                                      mov r1, r4
00664ce8  05 00 a0 e1                                      mov r0, r5
00664cec  d2 fa ff eb                                      bl #0x66383c
00664cf0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00664cf4  03 00 a0 e1                                      mov r0, r3
00664cf8  00 30 93 e5                                      ldr r3, [r3]
00664cfc  0f e0 a0 e1                                      mov lr, pc
00664d00  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00664d04  00 00 50 e3                                      cmp r0, #0
00664d08  1b 00 00 0a                                      beq #0x664d7c
00664d0c  00 00 57 e3                                      cmp r7, #0
00664d10  0b 20 a0 e1                                      mov r2, fp
00664d14  20 00 00 0a                                      beq #0x664d9c
00664d18  00 30 94 e5                                      ldr r3, [r4]
00664d1c  14 80 93 e5                                      ldr r8, [r3, #0x14]
00664d20  1c 90 8d e5                                      str sb, [sp, #0x1c]
00664d24  14 a0 88 e2                                      add sl, r8, #0x14
00664d28  08 00 a0 e1                                      mov r0, r8
00664d2c  0a 10 a0 e1                                      mov r1, sl
00664d30  dc fb ff eb                                      bl #0x663ca8
00664d34  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00664d38  00 00 50 e3                                      cmp r0, #0
00664d3c  00 00 00 0a                                      beq #0x664d44
00664d40  0f e2 f2 eb                                      bl #0x31d584
00664d44  04 30 98 e5                                      ldr r3, [r8, #4]
00664d48  08 00 a0 e1                                      mov r0, r8
00664d4c  08 20 9d e5                                      ldr r2, [sp, #8]
00664d50  02 08 13 e3                                      tst r3, #0x20000
00664d54  08 00 00 0a                                      beq #0x664d7c
00664d58  0c 10 d8 e5                                      ldrb r1, [r8, #0xc]
00664d5c  18 90 8d e5                                      str sb, [sp, #0x18]
00664d60  01 10 81 e2                                      add r1, r1, #1
00664d64  01 12 8a e0                                      add r1, sl, r1, lsl #4
00664d68  ce fb ff eb                                      bl #0x663ca8
00664d6c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00664d70  00 00 50 e3                                      cmp r0, #0
00664d74  00 00 00 0a                                      beq #0x664d7c
00664d78  01 e2 f2 eb                                      bl #0x31d584
00664d7c  14 40 84 e2                                      add r4, r4, #0x14
00664d80  06 00 54 e1                                      cmp r4, r6
00664d84  d6 ff ff 1a                                      bne #0x664ce4
00664d88  05 00 a0 e1                                      mov r0, r5
00664d8c  07 10 a0 e1                                      mov r1, r7
00664d90  73 13 00 eb                                      bl #0x669b64
00664d94  24 d0 8d e2                                      add sp, sp, #0x24
00664d98  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00664d9c  5c 20 95 e5                                      ldr r2, [r5, #0x5c]
00664da0  68 30 95 e5                                      ldr r3, [r5, #0x68]
00664da4  00 e0 94 e5                                      ldr lr, [r4]
00664da8  04 20 62 e0                                      rsb r2, r2, r4
00664dac  42 21 a0 e1                                      asr r2, r2, #2
00664db0  03 10 a0 e1                                      mov r1, r3
00664db4  82 c0 82 e0                                      add ip, r2, r2, lsl #1
00664db8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00664dbc  0c c2 8c e0                                      add ip, ip, ip, lsl #4
00664dc0  00 30 93 e5                                      ldr r3, [r3]
00664dc4  0c c4 8c e0                                      add ip, ip, ip, lsl #8
00664dc8  14 80 9e e5                                      ldr r8, [lr, #0x14]
00664dcc  0c c8 8c e0                                      add ip, ip, ip, lsl #16
00664dd0  0c 21 82 e0                                      add r2, r2, ip, lsl #2
00664dd4  0f e0 a0 e1                                      mov lr, pc
00664dd8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00664ddc  14 10 9d e5                                      ldr r1, [sp, #0x14]
00664de0  02 28 a0 e3                                      mov r2, #0x20000
00664de4  01 20 82 e2                                      add r2, r2, #1
00664de8  14 10 81 e2                                      add r1, r1, #0x14
00664dec  08 00 a0 e1                                      mov r0, r8
00664df0  07 30 a0 e1                                      mov r3, r7
00664df4  00 70 8d e5                                      str r7, [sp]
00664df8  98 ef fc eb                                      bl #0x5a0c60
00664dfc  14 00 9d e5                                      ldr r0, [sp, #0x14]
00664e00  00 00 50 e3                                      cmp r0, #0
00664e04  db ff ff 1a                                      bne #0x664d78
00664e08  db ff ff ea                                      b #0x664d7c

; FUNCTION 0x00664e0c, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMesh15updateTechniqueEj
; demangled: glitch::collada::CSkinnedMesh::updateTechnique(unsigned int)
; decoder-mode: arm
00664e0c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00664e10  14 50 a0 e3                                      mov r5, #0x14
00664e14  95 01 05 e0                                      mul r5, r5, r1
00664e18  01 70 a0 e1                                      mov r7, r1
00664e1c  5c 10 90 e5                                      ldr r1, [r0, #0x5c]
00664e20  00 40 a0 e1                                      mov r4, r0
00664e24  14 d0 4d e2                                      sub sp, sp, #0x14
00664e28  05 10 81 e0                                      add r1, r1, r5
00664e2c  82 fa ff eb                                      bl #0x66383c
00664e30  5c 60 94 e5                                      ldr r6, [r4, #0x5c]
00664e34  05 60 86 e0                                      add r6, r6, r5
00664e38  10 20 d6 e5                                      ldrb r2, [r6, #0x10]
00664e3c  11 30 d6 e5                                      ldrb r3, [r6, #0x11]
00664e40  03 00 52 e1                                      cmp r2, r3
00664e44  23 00 00 0a                                      beq #0x664ed8
00664e48  0c 80 96 e5                                      ldr r8, [r6, #0xc]
00664e4c  68 30 94 e5                                      ldr r3, [r4, #0x68]
00664e50  07 20 a0 e1                                      mov r2, r7
00664e54  00 c0 98 e5                                      ldr ip, [r8]
00664e58  03 10 a0 e1                                      mov r1, r3
00664e5c  0c 00 8d e2                                      add r0, sp, #0xc
00664e60  00 30 93 e5                                      ldr r3, [r3]
00664e64  14 a0 9c e5                                      ldr sl, [ip, #0x14]
00664e68  0f e0 a0 e1                                      mov lr, pc
00664e6c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00664e70  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00664e74  20 c0 d4 e5                                      ldrb ip, [r4, #0x20]
00664e78  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00664e7c  05 30 83 e0                                      add r3, r3, r5
00664e80  04 30 93 e5                                      ldr r3, [r3, #4]
00664e84  08 00 a0 e1                                      mov r0, r8
00664e88  06 10 a0 e1                                      mov r1, r6
00664e8c  04 30 93 e5                                      ldr r3, [r3, #4]
00664e90  1f 70 07 e2                                      and r7, r7, #0x1f
00664e94  04 30 93 e5                                      ldr r3, [r3, #4]
00664e98  00 c0 8d e5                                      str ip, [sp]
00664e9c  3a ff 2f e1                                      blx sl
00664ea0  14 30 94 e5                                      ldr r3, [r4, #0x14]
00664ea4  00 00 50 e3                                      cmp r0, #0
00664ea8  01 20 a0 e3                                      mov r2, #1
00664eac  12 77 83 11                                      orrne r7, r3, r2, lsl r7
00664eb0  12 77 c3 01                                      biceq r7, r3, r2, lsl r7
00664eb4  14 70 84 e5                                      str r7, [r4, #0x14]
00664eb8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00664ebc  00 00 50 e3                                      cmp r0, #0
00664ec0  00 00 00 0a                                      beq #0x664ec8
00664ec4  ae e1 f2 eb                                      bl #0x31d584
00664ec8  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00664ecc  05 50 83 e0                                      add r5, r3, r5
00664ed0  10 30 d5 e5                                      ldrb r3, [r5, #0x10]
00664ed4  11 30 c5 e5                                      strb r3, [r5, #0x11]
00664ed8  14 d0 8d e2                                      add sp, sp, #0x14
00664edc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x00664ee0, declared_size=292, range_size=292, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMesh4skinEj
; demangled: glitch::collada::CSkinnedMesh::skin(unsigned int)
; decoder-mode: arm
00664ee0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00664ee4  14 50 a0 e3                                      mov r5, #0x14
00664ee8  95 01 05 e0                                      mul r5, r5, r1
00664eec  01 60 a0 e1                                      mov r6, r1
00664ef0  5c 10 90 e5                                      ldr r1, [r0, #0x5c]
00664ef4  00 40 a0 e1                                      mov r4, r0
00664ef8  14 d0 4d e2                                      sub sp, sp, #0x14
00664efc  05 10 81 e0                                      add r1, r1, r5
00664f00  4d fa ff eb                                      bl #0x66383c
00664f04  5c 70 94 e5                                      ldr r7, [r4, #0x5c]
00664f08  05 70 87 e0                                      add r7, r7, r5
00664f0c  10 20 d7 e5                                      ldrb r2, [r7, #0x10]
00664f10  11 30 d7 e5                                      ldrb r3, [r7, #0x11]
00664f14  03 00 52 e1                                      cmp r2, r3
00664f18  25 00 00 0a                                      beq #0x664fb4
00664f1c  0c 80 97 e5                                      ldr r8, [r7, #0xc]
00664f20  68 30 94 e5                                      ldr r3, [r4, #0x68]
00664f24  0c 00 8d e2                                      add r0, sp, #0xc
00664f28  00 c0 98 e5                                      ldr ip, [r8]
00664f2c  03 10 a0 e1                                      mov r1, r3
00664f30  06 20 a0 e1                                      mov r2, r6
00664f34  00 30 93 e5                                      ldr r3, [r3]
00664f38  14 a0 9c e5                                      ldr sl, [ip, #0x14]
00664f3c  0f e0 a0 e1                                      mov lr, pc
00664f40  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00664f44  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00664f48  20 c0 d4 e5                                      ldrb ip, [r4, #0x20]
00664f4c  07 10 a0 e1                                      mov r1, r7
00664f50  05 30 83 e0                                      add r3, r3, r5
00664f54  04 30 93 e5                                      ldr r3, [r3, #4]
00664f58  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00664f5c  08 00 a0 e1                                      mov r0, r8
00664f60  04 30 93 e5                                      ldr r3, [r3, #4]
00664f64  1f 70 06 e2                                      and r7, r6, #0x1f
00664f68  04 30 93 e5                                      ldr r3, [r3, #4]
00664f6c  00 c0 8d e5                                      str ip, [sp]
00664f70  3a ff 2f e1                                      blx sl
00664f74  14 30 94 e5                                      ldr r3, [r4, #0x14]
00664f78  00 00 50 e3                                      cmp r0, #0
00664f7c  01 20 a0 e3                                      mov r2, #1
00664f80  12 77 83 11                                      orrne r7, r3, r2, lsl r7
00664f84  12 77 c3 01                                      biceq r7, r3, r2, lsl r7
00664f88  14 70 84 e5                                      str r7, [r4, #0x14]
00664f8c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00664f90  00 00 50 e3                                      cmp r0, #0
00664f94  00 00 00 0a                                      beq #0x664f9c
00664f98  79 e1 f2 eb                                      bl #0x31d584
00664f9c  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00664fa0  05 30 83 e0                                      add r3, r3, r5
00664fa4  10 20 d3 e5                                      ldrb r2, [r3, #0x10]
00664fa8  11 20 c3 e5                                      strb r2, [r3, #0x11]
00664fac  5c 70 94 e5                                      ldr r7, [r4, #0x5c]
00664fb0  05 70 87 e0                                      add r7, r7, r5
00664fb4  0c 50 97 e5                                      ldr r5, [r7, #0xc]
00664fb8  68 30 94 e5                                      ldr r3, [r4, #0x68]
00664fbc  06 20 a0 e1                                      mov r2, r6
00664fc0  00 c0 95 e5                                      ldr ip, [r5]
00664fc4  03 10 a0 e1                                      mov r1, r3
00664fc8  08 00 8d e2                                      add r0, sp, #8
00664fcc  00 30 93 e5                                      ldr r3, [r3]
00664fd0  18 40 9c e5                                      ldr r4, [ip, #0x18]
00664fd4  0f e0 a0 e1                                      mov lr, pc
00664fd8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00664fdc  05 00 a0 e1                                      mov r0, r5
00664fe0  07 10 a0 e1                                      mov r1, r7
00664fe4  08 20 9d e5                                      ldr r2, [sp, #8]
00664fe8  34 ff 2f e1                                      blx r4
00664fec  08 00 9d e5                                      ldr r0, [sp, #8]
00664ff0  00 00 50 e3                                      cmp r0, #0
00664ff4  00 00 00 0a                                      beq #0x664ffc
00664ff8  61 e1 f2 eb                                      bl #0x31d584
00664ffc  14 d0 8d e2                                      add sp, sp, #0x14
00665000  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x00665004, declared_size=412, range_size=412, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMesh27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverEj
; demangled: glitch::collada::CSkinnedMesh::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP, glitch::video::IVideoDriver*, unsigned int)
; decoder-mode: arm
00665004  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00665008  68 c0 90 e5                                      ldr ip, [r0, #0x68]
0066500c  00 40 a0 e1                                      mov r4, r0
00665010  14 d0 4d e2                                      sub sp, sp, #0x14
00665014  0c 00 a0 e1                                      mov r0, ip
00665018  00 c0 9c e5                                      ldr ip, [ip]
0066501c  02 80 a0 e1                                      mov r8, r2
00665020  01 60 a0 e1                                      mov r6, r1
00665024  03 50 a0 e1                                      mov r5, r3
00665028  0f e0 a0 e1                                      mov lr, pc
0066502c  38 f0 9c e5                                      ldr pc, [ip, #0x38]
00665030  18 30 d4 e5                                      ldrb r3, [r4, #0x18]
00665034  01 00 56 e3                                      cmp r6, #1
00665038  00 20 a0 13                                      movne r2, #0
0066503c  50 21 e0 07                                      ubfxeq r2, r0, #2, #1
00665040  00 00 53 e3                                      cmp r3, #0
00665044  00 70 a0 e1                                      mov r7, r0
00665048  23 20 c4 e5                                      strb r2, [r4, #0x23]
0066504c  0a 00 00 1a                                      bne #0x66507c
00665050  14 30 a0 e3                                      mov r3, #0x14
00665054  93 05 05 e0                                      mul r5, r3, r5
00665058  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0066505c  05 30 93 e7                                      ldr r3, [r3, r5]
00665060  30 30 93 e5                                      ldr r3, [r3, #0x30]
00665064  18 30 93 e5                                      ldr r3, [r3, #0x18]
00665068  00 00 53 e3                                      cmp r3, #0
0066506c  08 70 a0 13                                      movne r7, #8
00665070  07 00 a0 e1                                      mov r0, r7
00665074  14 d0 8d e2                                      add sp, sp, #0x14
00665078  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0066507c  14 70 a0 e3                                      mov r7, #0x14
00665080  97 05 07 e0                                      mul r7, r7, r5
00665084  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
00665088  04 00 a0 e1                                      mov r0, r4
0066508c  07 10 81 e0                                      add r1, r1, r7
00665090  e9 f9 ff eb                                      bl #0x66383c
00665094  5c a0 94 e5                                      ldr sl, [r4, #0x5c]
00665098  07 a0 8a e0                                      add sl, sl, r7
0066509c  10 20 da e5                                      ldrb r2, [sl, #0x10]
006650a0  11 30 da e5                                      ldrb r3, [sl, #0x11]
006650a4  03 00 52 e1                                      cmp r2, r3
006650a8  25 00 00 0a                                      beq #0x665144
006650ac  0c 90 9a e5                                      ldr sb, [sl, #0xc]
006650b0  68 30 94 e5                                      ldr r3, [r4, #0x68]
006650b4  0c 00 8d e2                                      add r0, sp, #0xc
006650b8  00 c0 99 e5                                      ldr ip, [sb]
006650bc  03 10 a0 e1                                      mov r1, r3
006650c0  05 20 a0 e1                                      mov r2, r5
006650c4  00 30 93 e5                                      ldr r3, [r3]
006650c8  14 b0 9c e5                                      ldr fp, [ip, #0x14]
006650cc  0f e0 a0 e1                                      mov lr, pc
006650d0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006650d4  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
006650d8  20 c0 d4 e5                                      ldrb ip, [r4, #0x20]
006650dc  0a 10 a0 e1                                      mov r1, sl
006650e0  07 30 83 e0                                      add r3, r3, r7
006650e4  04 30 93 e5                                      ldr r3, [r3, #4]
006650e8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006650ec  09 00 a0 e1                                      mov r0, sb
006650f0  04 30 93 e5                                      ldr r3, [r3, #4]
006650f4  1f a0 05 e2                                      and sl, r5, #0x1f
006650f8  04 30 93 e5                                      ldr r3, [r3, #4]
006650fc  00 c0 8d e5                                      str ip, [sp]
00665100  3b ff 2f e1                                      blx fp
00665104  14 30 94 e5                                      ldr r3, [r4, #0x14]
00665108  00 00 50 e3                                      cmp r0, #0
0066510c  01 20 a0 e3                                      mov r2, #1
00665110  12 aa 83 11                                      orrne sl, r3, r2, lsl sl
00665114  12 aa c3 01                                      biceq sl, r3, r2, lsl sl
00665118  14 a0 84 e5                                      str sl, [r4, #0x14]
0066511c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00665120  00 00 50 e3                                      cmp r0, #0
00665124  00 00 00 0a                                      beq #0x66512c
00665128  15 e1 f2 eb                                      bl #0x31d584
0066512c  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00665130  07 30 83 e0                                      add r3, r3, r7
00665134  10 20 d3 e5                                      ldrb r2, [r3, #0x10]
00665138  11 20 c3 e5                                      strb r2, [r3, #0x11]
0066513c  5c a0 94 e5                                      ldr sl, [r4, #0x5c]
00665140  07 a0 8a e0                                      add sl, sl, r7
00665144  0c 70 9a e5                                      ldr r7, [sl, #0xc]
00665148  68 30 94 e5                                      ldr r3, [r4, #0x68]
0066514c  05 20 a0 e1                                      mov r2, r5
00665150  00 c0 97 e5                                      ldr ip, [r7]
00665154  03 10 a0 e1                                      mov r1, r3
00665158  08 00 8d e2                                      add r0, sp, #8
0066515c  00 30 93 e5                                      ldr r3, [r3]
00665160  24 40 9c e5                                      ldr r4, [ip, #0x24]
00665164  0f e0 a0 e1                                      mov lr, pc
00665168  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0066516c  08 30 9d e5                                      ldr r3, [sp, #8]
00665170  07 00 a0 e1                                      mov r0, r7
00665174  06 10 a0 e1                                      mov r1, r6
00665178  00 30 8d e5                                      str r3, [sp]
0066517c  08 20 a0 e1                                      mov r2, r8
00665180  0a 30 a0 e1                                      mov r3, sl
00665184  34 ff 2f e1                                      blx r4
00665188  00 70 a0 e1                                      mov r7, r0
0066518c  08 00 9d e5                                      ldr r0, [sp, #8]
00665190  00 00 50 e3                                      cmp r0, #0
00665194  b5 ff ff 0a                                      beq #0x665070
00665198  f9 e0 f2 eb                                      bl #0x31d584
0066519c  b3 ff ff ea                                      b #0x665070

; FUNCTION 0x00665580, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZNK6glitch7collada12CSkinnedMesh12getTransformERKNS_4core8CMatrix4IfEE
; demangled: glitch::collada::CSkinnedMesh::getTransform(glitch::core::CMatrix4<float> const&) const
; decoder-mode: arm
00665580  10 40 2d e9                                      push {r4, lr}
00665584  18 c0 d1 e5                                      ldrb ip, [r1, #0x18]
00665588  54 30 9f e5                                      ldr r3, [pc, #0x54]
0066558c  00 40 a0 e1                                      mov r4, r0
00665590  00 00 5c e3                                      cmp ip, #0
00665594  03 30 8f e0                                      add r3, pc, r3
00665598  08 00 00 0a                                      beq #0x6655c0
0066559c  00 20 a0 e3                                      mov r2, #0
006655a0  40 20 c4 e5                                      strb r2, [r4, #0x40]
006655a4  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
006655a8  04 00 a0 e1                                      mov r0, r4
006655ac  02 10 93 e7                                      ldr r1, [r3, r2]
006655b0  41 20 a0 e3                                      mov r2, #0x41
006655b4  ab a4 f2 eb                                      bl #0x30e868
006655b8  04 00 a0 e1                                      mov r0, r4
006655bc  10 80 bd e8                                      pop {r4, pc}
006655c0  14 c0 91 e5                                      ldr ip, [r1, #0x14]
006655c4  01 00 1c e3                                      tst ip, #1
006655c8  f3 ff ff 1a                                      bne #0x66559c
006655cc  1c 30 91 e5                                      ldr r3, [r1, #0x1c]
006655d0  02 10 a0 e1                                      mov r1, r2
006655d4  10 20 83 e2                                      add r2, r3, #0x10
006655d8  f0 fe ff eb                                      bl #0x6651a0
006655dc  04 00 a0 e1                                      mov r0, r4
006655e0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006655e4  fc f4 32 00 30 28 00 00                          .byte 0xfc, 0xf4, 0x32, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x006655ec, declared_size=140, range_size=140, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMesh12setTransformEPNS_5video12IVideoDriverERKNS_4core8CMatrix4IfEE
; demangled: glitch::collada::CSkinnedMesh::setTransform(glitch::video::IVideoDriver*, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
006655ec  70 40 2d e9                                      push {r4, r5, r6, lr}
006655f0  18 30 d0 e5                                      ldrb r3, [r0, #0x18]
006655f4  74 c0 9f e5                                      ldr ip, [pc, #0x74]
006655f8  48 d0 4d e2                                      sub sp, sp, #0x48
006655fc  00 00 53 e3                                      cmp r3, #0
00665600  01 40 a0 e1                                      mov r4, r1
00665604  0c c0 8f e0                                      add ip, pc, ip
00665608  08 00 00 0a                                      beq #0x665630
0066560c  60 20 9f e5                                      ldr r2, [pc, #0x60]
00665610  04 00 a0 e1                                      mov r0, r4
00665614  00 30 94 e5                                      ldr r3, [r4]
00665618  02 20 9c e7                                      ldr r2, [ip, r2]
0066561c  01 10 a0 e3                                      mov r1, #1
00665620  0f e0 a0 e1                                      mov lr, pc
00665624  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00665628  48 d0 8d e2                                      add sp, sp, #0x48
0066562c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00665630  14 30 90 e5                                      ldr r3, [r0, #0x14]
00665634  01 00 13 e3                                      tst r3, #1
00665638  f3 ff ff 1a                                      bne #0x66560c
0066563c  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
00665640  00 30 91 e5                                      ldr r3, [r1]
00665644  04 50 8d e2                                      add r5, sp, #4
00665648  02 10 a0 e1                                      mov r1, r2
0066564c  10 20 80 e2                                      add r2, r0, #0x10
00665650  05 00 a0 e1                                      mov r0, r5
00665654  6c 60 93 e5                                      ldr r6, [r3, #0x6c]
00665658  d0 fe ff eb                                      bl #0x6651a0
0066565c  04 00 a0 e1                                      mov r0, r4
00665660  05 20 a0 e1                                      mov r2, r5
00665664  01 10 a0 e3                                      mov r1, #1
00665668  36 ff 2f e1                                      blx r6
0066566c  ed ff ff ea                                      b #0x665628
; mapping-symbol data/literal pool
00665670  8c f4 32 00 30 28 00 00                          .byte 0x8c, 0xf4, 0x32, 0x00, 0x30, 0x28, 0x00, 0x00

; FUNCTION 0x00665678, declared_size=336, range_size=336, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMesh4initEPNS_5video12IVideoDriverEb
; demangled: glitch::collada::CSkinnedMesh::init(glitch::video::IVideoDriver*, bool)
; decoder-mode: arm
00665678  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0066567c  68 30 90 e5                                      ldr r3, [r0, #0x68]
00665680  24 d0 4d e2                                      sub sp, sp, #0x24
00665684  00 40 a0 e1                                      mov r4, r0
00665688  02 b0 a0 e1                                      mov fp, r2
0066568c  03 00 a0 e1                                      mov r0, r3
00665690  00 20 a0 e3                                      mov r2, #0
00665694  00 30 93 e5                                      ldr r3, [r3]
00665698  10 10 8d e5                                      str r1, [sp, #0x10]
0066569c  0f e0 a0 e1                                      mov lr, pc
006656a0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
006656a4  68 30 94 e5                                      ldr r3, [r4, #0x68]
006656a8  20 b0 c4 e5                                      strb fp, [r4, #0x20]
006656ac  03 00 a0 e1                                      mov r0, r3
006656b0  00 30 93 e5                                      ldr r3, [r3]
006656b4  0f e0 a0 e1                                      mov lr, pc
006656b8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
006656bc  00 00 50 e3                                      cmp r0, #0
006656c0  0c 00 8d e5                                      str r0, [sp, #0xc]
006656c4  2d 00 00 0a                                      beq #0x665780
006656c8  00 50 a0 e3                                      mov r5, #0
006656cc  1c 30 8d e2                                      add r3, sp, #0x1c
006656d0  05 60 a0 e1                                      mov r6, r5
006656d4  14 30 8d e5                                      str r3, [sp, #0x14]
006656d8  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
006656dc  04 00 a0 e1                                      mov r0, r4
006656e0  1f 90 06 e2                                      and sb, r6, #0x1f
006656e4  05 10 81 e0                                      add r1, r1, r5
006656e8  53 f8 ff eb                                      bl #0x66383c
006656ec  5c a0 94 e5                                      ldr sl, [r4, #0x5c]
006656f0  68 30 94 e5                                      ldr r3, [r4, #0x68]
006656f4  06 20 a0 e1                                      mov r2, r6
006656f8  05 a0 8a e0                                      add sl, sl, r5
006656fc  0c 80 9a e5                                      ldr r8, [sl, #0xc]
00665700  03 10 a0 e1                                      mov r1, r3
00665704  14 00 9d e5                                      ldr r0, [sp, #0x14]
00665708  00 c0 98 e5                                      ldr ip, [r8]
0066570c  00 30 93 e5                                      ldr r3, [r3]
00665710  01 60 86 e2                                      add r6, r6, #1
00665714  14 70 9c e5                                      ldr r7, [ip, #0x14]
00665718  0f e0 a0 e1                                      mov lr, pc
0066571c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00665720  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00665724  10 30 9d e5                                      ldr r3, [sp, #0x10]
00665728  0a 10 a0 e1                                      mov r1, sl
0066572c  00 b0 8d e5                                      str fp, [sp]
00665730  08 00 a0 e1                                      mov r0, r8
00665734  37 ff 2f e1                                      blx r7
00665738  14 30 94 e5                                      ldr r3, [r4, #0x14]
0066573c  00 00 50 e3                                      cmp r0, #0
00665740  01 20 a0 e3                                      mov r2, #1
00665744  12 99 83 11                                      orrne sb, r3, r2, lsl sb
00665748  12 99 c3 01                                      biceq sb, r3, r2, lsl sb
0066574c  14 90 84 e5                                      str sb, [r4, #0x14]
00665750  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00665754  00 00 50 e3                                      cmp r0, #0
00665758  00 00 00 0a                                      beq #0x665760
0066575c  88 df f2 eb                                      bl #0x31d584
00665760  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
00665764  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00665768  05 30 83 e0                                      add r3, r3, r5
0066576c  02 00 56 e1                                      cmp r6, r2
00665770  10 20 d3 e5                                      ldrb r2, [r3, #0x10]
00665774  14 50 85 e2                                      add r5, r5, #0x14
00665778  11 20 c3 e5                                      strb r2, [r3, #0x11]
0066577c  d5 ff ff 1a                                      bne #0x6656d8
00665780  4c 50 94 e5                                      ldr r5, [r4, #0x4c]
00665784  00 00 55 e3                                      cmp r5, #0
00665788  0c 00 00 0a                                      beq #0x6657c0
0066578c  00 30 95 e5                                      ldr r3, [r5]
00665790  01 30 43 e2                                      sub r3, r3, #1
00665794  00 00 53 e3                                      cmp r3, #0
00665798  00 30 85 e5                                      str r3, [r5]
0066579c  05 00 00 1a                                      bne #0x6657b8
006657a0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006657a4  00 00 50 e3                                      cmp r0, #0
006657a8  00 00 00 0a                                      beq #0x6657b0
006657ac  41 a2 f2 eb                                      bl #0x30e0b8
006657b0  00 30 a0 e3                                      mov r3, #0
006657b4  0c 30 85 e5                                      str r3, [r5, #0xc]
006657b8  00 30 a0 e3                                      mov r3, #0
006657bc  4c 30 84 e5                                      str r3, [r4, #0x4c]
006657c0  24 d0 8d e2                                      add sp, sp, #0x24
006657c4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x00665938, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMeshD1Ev
; demangled: glitch::collada::CSkinnedMesh::~CSkinnedMesh()
; decoder-mode: arm
00665938  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0066593c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
00665940  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
00665944  00 50 a0 e1                                      mov r5, r0
00665948  07 70 8f e0                                      add r7, pc, r7
0066594c  03 30 97 e7                                      ldr r3, [r7, r3]
00665950  08 30 83 e2                                      add r3, r3, #8
00665954  70 30 80 e4                                      str r3, [r0], #0x70
00665958  7d f8 ff eb                                      bl #0x663b54
0066595c  68 00 95 e5                                      ldr r0, [r5, #0x68]
00665960  00 00 50 e3                                      cmp r0, #0
00665964  00 00 00 0a                                      beq #0x66596c
00665968  05 df f2 eb                                      bl #0x31d584
0066596c  5c 00 85 e2                                      add r0, r5, #0x5c
00665970  d4 fb ff eb                                      bl #0x6648c8
00665974  50 00 85 e2                                      add r0, r5, #0x50
00665978  d0 ff ff eb                                      bl #0x6658c0
0066597c  4c 40 95 e5                                      ldr r4, [r5, #0x4c]
00665980  00 00 54 e3                                      cmp r4, #0
00665984  06 00 00 0a                                      beq #0x6659a4
00665988  00 30 94 e5                                      ldr r3, [r4]
0066598c  01 30 43 e2                                      sub r3, r3, #1
00665990  00 00 53 e3                                      cmp r3, #0
00665994  00 30 84 e5                                      str r3, [r4]
00665998  15 00 00 0a                                      beq #0x6659f4
0066599c  00 30 a0 e3                                      mov r3, #0
006659a0  4c 30 85 e5                                      str r3, [r5, #0x4c]
006659a4  3c 60 85 e2                                      add r6, r5, #0x3c
006659a8  4c 40 85 e2                                      add r4, r5, #0x4c
006659ac  04 30 14 e5                                      ldr r3, [r4, #-4]
006659b0  00 00 53 e3                                      cmp r3, #0
006659b4  03 00 00 0a                                      beq #0x6659c8
006659b8  03 00 a0 e1                                      mov r0, r3
006659bc  00 30 93 e5                                      ldr r3, [r3]
006659c0  0f e0 a0 e1                                      mov lr, pc
006659c4  04 f0 93 e5                                      ldr pc, [r3, #4]
006659c8  04 40 44 e2                                      sub r4, r4, #4
006659cc  06 00 54 e1                                      cmp r4, r6
006659d0  f5 ff ff 1a                                      bne #0x6659ac
006659d4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
006659d8  05 00 a0 e1                                      mov r0, r5
006659dc  03 30 97 e7                                      ldr r3, [r7, r3]
006659e0  08 30 83 e2                                      add r3, r3, #8
006659e4  0c 30 80 e4                                      str r3, [r0], #0xc
006659e8  a1 ce fe eb                                      bl #0x619474
006659ec  05 00 a0 e1                                      mov r0, r5
006659f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006659f4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
006659f8  00 00 50 e3                                      cmp r0, #0
006659fc  00 00 00 0a                                      beq #0x665a04
00665a00  ac a1 f2 eb                                      bl #0x30e0b8
00665a04  00 30 a0 e3                                      mov r3, #0
00665a08  0c 30 84 e5                                      str r3, [r4, #0xc]
00665a0c  e2 ff ff ea                                      b #0x66599c
; mapping-symbol data/literal pool
00665a10  48 f1 32 00 14 13 00 00 04 37 00 00              .byte 0x48, 0xf1, 0x32, 0x00, 0x14, 0x13, 0x00, 0x00, 0x04, 0x37, 0x00, 0x00

; FUNCTION 0x00665a1c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMeshD0Ev
; demangled: glitch::collada::CSkinnedMesh::~CSkinnedMesh()
; decoder-mode: arm
00665a1c  10 40 2d e9                                      push {r4, lr}
00665a20  00 40 a0 e1                                      mov r4, r0
00665a24  c3 ff ff eb                                      bl #0x665938
00665a28  04 00 a0 e1                                      mov r0, r4
00665a2c  1f a2 f2 eb                                      bl #0x30e2b0
00665a30  04 00 a0 e1                                      mov r0, r4
00665a34  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00665a38, declared_size=228, range_size=228, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMeshD2Ev
; demangled: glitch::collada::CSkinnedMesh::~CSkinnedMesh()
; decoder-mode: arm
00665a38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00665a3c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
00665a40  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
00665a44  00 50 a0 e1                                      mov r5, r0
00665a48  07 70 8f e0                                      add r7, pc, r7
00665a4c  03 30 97 e7                                      ldr r3, [r7, r3]
00665a50  08 30 83 e2                                      add r3, r3, #8
00665a54  70 30 80 e4                                      str r3, [r0], #0x70
00665a58  3d f8 ff eb                                      bl #0x663b54
00665a5c  68 00 95 e5                                      ldr r0, [r5, #0x68]
00665a60  00 00 50 e3                                      cmp r0, #0
00665a64  00 00 00 0a                                      beq #0x665a6c
00665a68  c5 de f2 eb                                      bl #0x31d584
00665a6c  5c 00 85 e2                                      add r0, r5, #0x5c
00665a70  94 fb ff eb                                      bl #0x6648c8
00665a74  50 00 85 e2                                      add r0, r5, #0x50
00665a78  90 ff ff eb                                      bl #0x6658c0
00665a7c  4c 40 95 e5                                      ldr r4, [r5, #0x4c]
00665a80  00 00 54 e3                                      cmp r4, #0
00665a84  06 00 00 0a                                      beq #0x665aa4
00665a88  00 30 94 e5                                      ldr r3, [r4]
00665a8c  01 30 43 e2                                      sub r3, r3, #1
00665a90  00 00 53 e3                                      cmp r3, #0
00665a94  00 30 84 e5                                      str r3, [r4]
00665a98  15 00 00 0a                                      beq #0x665af4
00665a9c  00 30 a0 e3                                      mov r3, #0
00665aa0  4c 30 85 e5                                      str r3, [r5, #0x4c]
00665aa4  3c 60 85 e2                                      add r6, r5, #0x3c
00665aa8  4c 40 85 e2                                      add r4, r5, #0x4c
00665aac  04 30 14 e5                                      ldr r3, [r4, #-4]
00665ab0  00 00 53 e3                                      cmp r3, #0
00665ab4  03 00 00 0a                                      beq #0x665ac8
00665ab8  03 00 a0 e1                                      mov r0, r3
00665abc  00 30 93 e5                                      ldr r3, [r3]
00665ac0  0f e0 a0 e1                                      mov lr, pc
00665ac4  04 f0 93 e5                                      ldr pc, [r3, #4]
00665ac8  04 40 44 e2                                      sub r4, r4, #4
00665acc  06 00 54 e1                                      cmp r4, r6
00665ad0  f5 ff ff 1a                                      bne #0x665aac
00665ad4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00665ad8  05 00 a0 e1                                      mov r0, r5
00665adc  03 30 97 e7                                      ldr r3, [r7, r3]
00665ae0  08 30 83 e2                                      add r3, r3, #8
00665ae4  0c 30 80 e4                                      str r3, [r0], #0xc
00665ae8  61 ce fe eb                                      bl #0x619474
00665aec  05 00 a0 e1                                      mov r0, r5
00665af0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00665af4  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00665af8  00 00 50 e3                                      cmp r0, #0
00665afc  00 00 00 0a                                      beq #0x665b04
00665b00  6c a1 f2 eb                                      bl #0x30e0b8
00665b04  00 30 a0 e3                                      mov r3, #0
00665b08  0c 30 84 e5                                      str r3, [r4, #0xc]
00665b0c  e2 ff ff ea                                      b #0x665a9c
; mapping-symbol data/literal pool
00665b10  48 f0 32 00 14 13 00 00 04 37 00 00              .byte 0x48, 0xf0, 0x32, 0x00, 0x14, 0x13, 0x00, 0x00, 0x04, 0x37, 0x00, 0x00

; FUNCTION 0x00665fe8, declared_size=1288, range_size=1288, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMeshC2ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CSkinnedMesh::CSkinnedMesh(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
00665fe8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00665fec  e4 54 9f e5                                      ldr r5, [pc, #0x4e4]
00665ff0  e4 c4 9f e5                                      ldr ip, [pc, #0x4e4]
00665ff4  00 40 a0 e1                                      mov r4, r0
00665ff8  05 50 8f e0                                      add r5, pc, r5
00665ffc  0c c0 95 e7                                      ldr ip, [r5, ip]
00666000  00 00 a0 e3                                      mov r0, #0
00666004  04 00 84 e5                                      str r0, [r4, #4]
00666008  08 c0 8c e2                                      add ip, ip, #8
0066600c  00 c0 84 e5                                      str ip, [r4]
00666010  00 00 91 e5                                      ldr r0, [r1]
00666014  01 70 a0 e1                                      mov r7, r1
00666018  24 d0 4d e2                                      sub sp, sp, #0x24
0066601c  0c 00 84 e5                                      str r0, [r4, #0xc]
00666020  04 10 91 e5                                      ldr r1, [r1, #4]
00666024  00 00 50 e3                                      cmp r0, #0
00666028  10 10 84 e5                                      str r1, [r4, #0x10]
0066602c  03 00 00 0a                                      beq #0x666040
00666030  04 10 90 e5                                      ldr r1, [r0, #4]
00666034  00 00 51 e3                                      cmp r1, #0
00666038  01 10 81 12                                      addne r1, r1, #1
0066603c  04 10 80 15                                      strne r1, [r0, #4]
00666040  98 c4 9f e5                                      ldr ip, [pc, #0x498]
00666044  98 04 9f e5                                      ldr r0, [pc, #0x498]
00666048  00 10 a0 e3                                      mov r1, #0
0066604c  0c c0 95 e7                                      ldr ip, [r5, ip]
00666050  00 00 95 e7                                      ldr r0, [r5, r0]
00666054  14 10 84 e5                                      str r1, [r4, #0x14]
00666058  04 c0 8c e2                                      add ip, ip, #4
0066605c  08 c0 84 e5                                      str ip, [r4, #8]
00666060  08 00 80 e2                                      add r0, r0, #8
00666064  01 c0 a0 e3                                      mov ip, #1
00666068  18 c0 c4 e5                                      strb ip, [r4, #0x18]
0066606c  00 00 84 e5                                      str r0, [r4]
00666070  08 60 93 e5                                      ldr r6, [r3, #8]
00666074  bf c4 a0 e3                                      mov ip, #0xbf000000
00666078  02 c5 8c e2                                      add ip, ip, #0x800000
0066607c  fe 05 a0 e3                                      mov r0, #0x3f800000
00666080  44 e0 84 e2                                      add lr, r4, #0x44
00666084  1c 60 84 e5                                      str r6, [r4, #0x1c]
00666088  2c c0 84 e5                                      str ip, [r4, #0x2c]
0066608c  38 00 84 e5                                      str r0, [r4, #0x38]
00666090  20 10 c4 e5                                      strb r1, [r4, #0x20]
00666094  22 10 c4 e5                                      strb r1, [r4, #0x22]
00666098  23 10 c4 e5                                      strb r1, [r4, #0x23]
0066609c  24 c0 84 e5                                      str ip, [r4, #0x24]
006660a0  28 c0 84 e5                                      str ip, [r4, #0x28]
006660a4  30 00 84 e5                                      str r0, [r4, #0x30]
006660a8  34 00 84 e5                                      str r0, [r4, #0x34]
006660ac  3c 10 84 e5                                      str r1, [r4, #0x3c]
006660b0  40 10 84 e5                                      str r1, [r4, #0x40]
006660b4  44 10 84 e5                                      str r1, [r4, #0x44]
006660b8  04 10 8e e5                                      str r1, [lr, #4]
006660bc  4c 10 84 e5                                      str r1, [r4, #0x4c]
006660c0  50 10 84 e5                                      str r1, [r4, #0x50]
006660c4  54 10 84 e5                                      str r1, [r4, #0x54]
006660c8  58 10 84 e5                                      str r1, [r4, #0x58]
006660cc  5c 10 84 e5                                      str r1, [r4, #0x5c]
006660d0  60 10 84 e5                                      str r1, [r4, #0x60]
006660d4  64 10 84 e5                                      str r1, [r4, #0x64]
006660d8  68 10 84 e5                                      str r1, [r4, #0x68]
006660dc  6c 10 84 e5                                      str r1, [r4, #0x6c]
006660e0  74 10 84 e5                                      str r1, [r4, #0x74]
006660e4  78 10 84 e5                                      str r1, [r4, #0x78]
006660e8  7c 10 84 e5                                      str r1, [r4, #0x7c]
006660ec  80 10 84 e5                                      str r1, [r4, #0x80]
006660f0  98 10 84 e5                                      str r1, [r4, #0x98]
006660f4  84 10 84 e5                                      str r1, [r4, #0x84]
006660f8  88 10 84 e5                                      str r1, [r4, #0x88]
006660fc  8c 10 84 e5                                      str r1, [r4, #0x8c]
00666100  90 10 84 e5                                      str r1, [r4, #0x90]
00666104  94 10 84 e5                                      str r1, [r4, #0x94]
00666108  04 30 93 e5                                      ldr r3, [r3, #4]
0066610c  02 10 a0 e1                                      mov r1, r2
00666110  04 00 a0 e1                                      mov r0, r4
00666114  48 20 9d e5                                      ldr r2, [sp, #0x48]
00666118  08 30 84 e5                                      str r3, [r4, #8]
0066611c  75 fa ff eb                                      bl #0x664af8
00666120  00 30 97 e5                                      ldr r3, [r7]
00666124  24 30 93 e5                                      ldr r3, [r3, #0x24]
00666128  20 30 93 e5                                      ldr r3, [r3, #0x20]
0066612c  04 90 93 e5                                      ldr sb, [r3, #4]
00666130  64 60 93 e5                                      ldr r6, [r3, #0x64]
00666134  00 00 56 e3                                      cmp r6, #0
00666138  00 60 a0 d3                                      movle r6, #0
0066613c  01 60 a0 c3                                      movgt r6, #1
00666140  00 00 59 e3                                      cmp sb, #0
00666144  0b 00 00 0a                                      beq #0x666178
00666148  98 33 9f e5                                      ldr r3, [pc, #0x398]
0066614c  14 10 99 e5                                      ldr r1, [sb, #0x14]
00666150  03 80 95 e7                                      ldr r8, [r5, r3]
00666154  00 30 98 e5                                      ldr r3, [r8]
00666158  20 30 93 e5                                      ldr r3, [r3, #0x20]
0066615c  34 30 93 e5                                      ldr r3, [r3, #0x34]
00666160  03 00 a0 e1                                      mov r0, r3
00666164  00 30 93 e5                                      ldr r3, [r3]
00666168  0f e0 a0 e1                                      mov lr, pc
0066616c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00666170  00 90 50 e2                                      subs sb, r0, #0
00666174  c9 00 00 0a                                      beq #0x6664a0
00666178  6c 33 9f e5                                      ldr r3, [pc, #0x36c]
0066617c  00 00 56 e3                                      cmp r6, #0
00666180  10 90 8d e5                                      str sb, [sp, #0x10]
00666184  03 30 95 e7                                      ldr r3, [r5, r3]
00666188  08 30 83 e2                                      add r3, r3, #8
0066618c  0c 30 8d e5                                      str r3, [sp, #0xc]
00666190  47 00 00 1a                                      bne #0x6662b4
00666194  00 00 59 e3                                      cmp sb, #0
00666198  01 00 00 0a                                      beq #0x6661a4
0066619c  09 00 a0 e1                                      mov r0, sb
006661a0  f7 dc f2 eb                                      bl #0x31d584
006661a4  00 10 a0 e3                                      mov r1, #0
006661a8  38 00 a0 e3                                      mov r0, #0x38
006661ac  fe 37 fb eb                                      bl #0x5341ac
006661b0  70 50 84 e2                                      add r5, r4, #0x70
006661b4  06 30 a0 e1                                      mov r3, r6
006661b8  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
006661bc  05 20 a0 e1                                      mov r2, r5
006661c0  00 70 a0 e1                                      mov r7, r0
006661c4  52 21 00 eb                                      bl #0x66e714
006661c8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006661cc  3c 70 84 e5                                      str r7, [r4, #0x3c]
006661d0  00 00 53 e3                                      cmp r3, #0
006661d4  03 00 00 0a                                      beq #0x6661e8
006661d8  03 00 a0 e1                                      mov r0, r3
006661dc  00 30 93 e5                                      ldr r3, [r3]
006661e0  0f e0 a0 e1                                      mov lr, pc
006661e4  04 f0 93 e5                                      ldr pc, [r3, #4]
006661e8  00 10 a0 e3                                      mov r1, #0
006661ec  30 00 a0 e3                                      mov r0, #0x30
006661f0  ed 37 fb eb                                      bl #0x5341ac
006661f4  06 30 a0 e1                                      mov r3, r6
006661f8  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
006661fc  05 20 a0 e1                                      mov r2, r5
00666200  00 70 a0 e1                                      mov r7, r0
00666204  b4 15 00 eb                                      bl #0x66b8dc
00666208  40 30 94 e5                                      ldr r3, [r4, #0x40]
0066620c  40 70 84 e5                                      str r7, [r4, #0x40]
00666210  00 00 53 e3                                      cmp r3, #0
00666214  03 00 00 0a                                      beq #0x666228
00666218  03 00 a0 e1                                      mov r0, r3
0066621c  00 30 93 e5                                      ldr r3, [r3]
00666220  0f e0 a0 e1                                      mov lr, pc
00666224  04 f0 93 e5                                      ldr pc, [r3, #4]
00666228  00 10 a0 e3                                      mov r1, #0
0066622c  30 00 a0 e3                                      mov r0, #0x30
00666230  dd 37 fb eb                                      bl #0x5341ac
00666234  06 30 a0 e1                                      mov r3, r6
00666238  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0066623c  05 20 a0 e1                                      mov r2, r5
00666240  00 70 a0 e1                                      mov r7, r0
00666244  74 1b 00 eb                                      bl #0x66d01c
00666248  44 30 94 e5                                      ldr r3, [r4, #0x44]
0066624c  44 70 84 e5                                      str r7, [r4, #0x44]
00666250  00 00 53 e3                                      cmp r3, #0
00666254  03 00 00 0a                                      beq #0x666268
00666258  03 00 a0 e1                                      mov r0, r3
0066625c  00 30 93 e5                                      ldr r3, [r3]
00666260  0f e0 a0 e1                                      mov lr, pc
00666264  04 f0 93 e5                                      ldr pc, [r3, #4]
00666268  00 10 a0 e3                                      mov r1, #0
0066626c  34 00 a0 e3                                      mov r0, #0x34
00666270  cd 37 fb eb                                      bl #0x5341ac
00666274  06 30 a0 e1                                      mov r3, r6
00666278  05 20 a0 e1                                      mov r2, r5
0066627c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00666280  00 70 a0 e1                                      mov r7, r0
00666284  f3 24 00 eb                                      bl #0x66f658
00666288  48 30 94 e5                                      ldr r3, [r4, #0x48]
0066628c  48 70 84 e5                                      str r7, [r4, #0x48]
00666290  00 00 53 e3                                      cmp r3, #0
00666294  03 00 00 0a                                      beq #0x6662a8
00666298  03 00 a0 e1                                      mov r0, r3
0066629c  00 30 93 e5                                      ldr r3, [r3]
006662a0  0f e0 a0 e1                                      mov lr, pc
006662a4  04 f0 93 e5                                      ldr pc, [r3, #4]
006662a8  04 00 a0 e1                                      mov r0, r4
006662ac  24 d0 8d e2                                      add sp, sp, #0x24
006662b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006662b4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006662b8  0c a0 8d e2                                      add sl, sp, #0xc
006662bc  0a 20 a0 e1                                      mov r2, sl
006662c0  80 10 93 e5                                      ldr r1, [r3, #0x80]
006662c4  1c 00 8d e2                                      add r0, sp, #0x1c
006662c8  40 f6 ff eb                                      bl #0x663bd0
006662cc  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006662d0  00 00 53 e3                                      cmp r3, #0
006662d4  00 20 93 15                                      ldrne r2, [r3]
006662d8  01 20 82 12                                      addne r2, r2, #1
006662dc  00 20 83 15                                      strne r2, [r3]
006662e0  4c 50 94 e5                                      ldr r5, [r4, #0x4c]
006662e4  00 00 55 e3                                      cmp r5, #0
006662e8  0a 00 00 0a                                      beq #0x666318
006662ec  00 30 95 e5                                      ldr r3, [r5]
006662f0  01 30 43 e2                                      sub r3, r3, #1
006662f4  00 00 53 e3                                      cmp r3, #0
006662f8  00 30 85 e5                                      str r3, [r5]
006662fc  05 00 00 1a                                      bne #0x666318
00666300  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00666304  00 00 50 e3                                      cmp r0, #0
00666308  00 00 00 0a                                      beq #0x666310
0066630c  69 9f f2 eb                                      bl #0x30e0b8
00666310  00 30 a0 e3                                      mov r3, #0
00666314  0c 30 85 e5                                      str r3, [r5, #0xc]
00666318  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
0066631c  00 00 55 e3                                      cmp r5, #0
00666320  4c 50 84 e5                                      str r5, [r4, #0x4c]
00666324  0c 00 00 0a                                      beq #0x66635c
00666328  00 30 95 e5                                      ldr r3, [r5]
0066632c  01 30 43 e2                                      sub r3, r3, #1
00666330  00 00 53 e3                                      cmp r3, #0
00666334  00 30 85 e5                                      str r3, [r5]
00666338  05 00 00 1a                                      bne #0x666354
0066633c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00666340  00 00 50 e3                                      cmp r0, #0
00666344  00 00 00 0a                                      beq #0x66634c
00666348  5a 9f f2 eb                                      bl #0x30e0b8
0066634c  00 30 a0 e3                                      mov r3, #0
00666350  0c 30 85 e5                                      str r3, [r5, #0xc]
00666354  00 30 a0 e3                                      mov r3, #0
00666358  1c 30 8d e5                                      str r3, [sp, #0x1c]
0066635c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00666360  20 20 8d e2                                      add r2, sp, #0x20
00666364  50 00 84 e2                                      add r0, r4, #0x50
00666368  84 10 93 e5                                      ldr r1, [r3, #0x84]
0066636c  00 30 a0 e3                                      mov r3, #0
00666370  08 30 22 e5                                      str r3, [r2, #-8]!
00666374  07 ff ff eb                                      bl #0x665f98
00666378  18 50 9d e5                                      ldr r5, [sp, #0x18]
0066637c  00 00 55 e3                                      cmp r5, #0
00666380  06 00 00 0a                                      beq #0x6663a0
00666384  00 30 95 e5                                      ldr r3, [r5]
00666388  01 30 43 e2                                      sub r3, r3, #1
0066638c  00 00 53 e3                                      cmp r3, #0
00666390  00 30 85 e5                                      str r3, [r5]
00666394  3a 00 00 0a                                      beq #0x666484
00666398  00 30 a0 e3                                      mov r3, #0
0066639c  18 30 8d e5                                      str r3, [sp, #0x18]
006663a0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006663a4  84 20 93 e5                                      ldr r2, [r3, #0x84]
006663a8  00 00 52 e3                                      cmp r2, #0
006663ac  78 ff ff da                                      ble #0x666194
006663b0  00 50 a0 e3                                      mov r5, #0
006663b4  14 b0 8d e2                                      add fp, sp, #0x14
006663b8  05 80 a0 e1                                      mov r8, r5
006663bc  88 30 93 e5                                      ldr r3, [r3, #0x88]
006663c0  0a 20 a0 e1                                      mov r2, sl
006663c4  0b 00 a0 e1                                      mov r0, fp
006663c8  85 31 83 e0                                      add r3, r3, r5, lsl #3
006663cc  04 10 93 e5                                      ldr r1, [r3, #4]
006663d0  50 70 94 e5                                      ldr r7, [r4, #0x50]
006663d4  18 f6 ff eb                                      bl #0x663c3c
006663d8  14 30 9d e5                                      ldr r3, [sp, #0x14]
006663dc  05 21 a0 e1                                      lsl r2, r5, #2
006663e0  00 00 53 e3                                      cmp r3, #0
006663e4  00 10 93 15                                      ldrne r1, [r3]
006663e8  01 10 81 12                                      addne r1, r1, #1
006663ec  00 10 83 15                                      strne r1, [r3]
006663f0  02 30 97 e7                                      ldr r3, [r7, r2]
006663f4  00 00 53 e3                                      cmp r3, #0
006663f8  0b 00 00 0a                                      beq #0x66642c
006663fc  00 10 93 e5                                      ldr r1, [r3]
00666400  01 10 41 e2                                      sub r1, r1, #1
00666404  00 00 51 e3                                      cmp r1, #0
00666408  00 10 83 e5                                      str r1, [r3]
0066640c  06 00 00 1a                                      bne #0x66642c
00666410  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00666414  00 00 50 e3                                      cmp r0, #0
00666418  02 00 00 0a                                      beq #0x666428
0066641c  0c 00 8d e8                                      stm sp, {r2, r3}
00666420  24 9f f2 eb                                      bl #0x30e0b8
00666424  0c 00 9d e8                                      ldm sp, {r2, r3}
00666428  0c 80 83 e5                                      str r8, [r3, #0xc]
0066642c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00666430  02 30 87 e7                                      str r3, [r7, r2]
00666434  14 70 9d e5                                      ldr r7, [sp, #0x14]
00666438  00 00 57 e3                                      cmp r7, #0
0066643c  0a 00 00 0a                                      beq #0x66646c
00666440  00 30 97 e5                                      ldr r3, [r7]
00666444  01 30 43 e2                                      sub r3, r3, #1
00666448  00 00 53 e3                                      cmp r3, #0
0066644c  00 30 87 e5                                      str r3, [r7]
00666450  04 00 00 1a                                      bne #0x666468
00666454  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00666458  00 00 50 e3                                      cmp r0, #0
0066645c  00 00 00 0a                                      beq #0x666464
00666460  14 9f f2 eb                                      bl #0x30e0b8
00666464  0c 80 87 e5                                      str r8, [r7, #0xc]
00666468  14 80 8d e5                                      str r8, [sp, #0x14]
0066646c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00666470  01 50 85 e2                                      add r5, r5, #1
00666474  84 20 93 e5                                      ldr r2, [r3, #0x84]
00666478  02 00 55 e1                                      cmp r5, r2
0066647c  ce ff ff ba                                      blt #0x6663bc
00666480  43 ff ff ea                                      b #0x666194
00666484  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00666488  00 00 50 e3                                      cmp r0, #0
0066648c  00 00 00 0a                                      beq #0x666494
00666490  08 9f f2 eb                                      bl #0x30e0b8
00666494  00 30 a0 e3                                      mov r3, #0
00666498  0c 30 85 e5                                      str r3, [r5, #0xc]
0066649c  bd ff ff ea                                      b #0x666398
006664a0  00 20 97 e5                                      ldr r2, [r7]
006664a4  00 30 98 e5                                      ldr r3, [r8]
006664a8  24 20 92 e5                                      ldr r2, [r2, #0x24]
006664ac  20 30 93 e5                                      ldr r3, [r3, #0x20]
006664b0  20 20 92 e5                                      ldr r2, [r2, #0x20]
006664b4  34 30 93 e5                                      ldr r3, [r3, #0x34]
006664b8  04 20 92 e5                                      ldr r2, [r2, #4]
006664bc  03 00 a0 e1                                      mov r0, r3
006664c0  00 30 93 e5                                      ldr r3, [r3]
006664c4  14 10 92 e5                                      ldr r1, [r2, #0x14]
006664c8  0f e0 a0 e1                                      mov lr, pc
006664cc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006664d0  00 90 a0 e1                                      mov sb, r0
006664d4  27 ff ff ea                                      b #0x666178
; mapping-symbol data/literal pool
006664d8  98 ea 32 00 40 0a 00 00 b4 17 00 00 14 13 00 00  .byte 0x98, 0xea, 0x32, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x14, 0x13, 0x00, 0x00
006664e8  48 44 00 00 fc 46 00 00                          .byte 0x48, 0x44, 0x00, 0x00, 0xfc, 0x46, 0x00, 0x00

; FUNCTION 0x006664f0, declared_size=1288, range_size=1288, mode=arm
; class-group: glitch::collada::CSkinnedMesh
; alias: _ZN6glitch7collada12CSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CSkinnedMesh::CSkinnedMesh(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
006664f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006664f4  e4 54 9f e5                                      ldr r5, [pc, #0x4e4]
006664f8  e4 c4 9f e5                                      ldr ip, [pc, #0x4e4]
006664fc  00 40 a0 e1                                      mov r4, r0
00666500  05 50 8f e0                                      add r5, pc, r5
00666504  0c c0 95 e7                                      ldr ip, [r5, ip]
00666508  00 00 a0 e3                                      mov r0, #0
0066650c  04 00 84 e5                                      str r0, [r4, #4]
00666510  08 c0 8c e2                                      add ip, ip, #8
00666514  00 c0 84 e5                                      str ip, [r4]
00666518  00 00 91 e5                                      ldr r0, [r1]
0066651c  01 70 a0 e1                                      mov r7, r1
00666520  24 d0 4d e2                                      sub sp, sp, #0x24
00666524  0c 00 84 e5                                      str r0, [r4, #0xc]
00666528  04 10 91 e5                                      ldr r1, [r1, #4]
0066652c  00 00 50 e3                                      cmp r0, #0
00666530  10 10 84 e5                                      str r1, [r4, #0x10]
00666534  03 00 00 0a                                      beq #0x666548
00666538  04 10 90 e5                                      ldr r1, [r0, #4]
0066653c  00 00 51 e3                                      cmp r1, #0
00666540  01 10 81 12                                      addne r1, r1, #1
00666544  04 10 80 15                                      strne r1, [r0, #4]
00666548  98 c4 9f e5                                      ldr ip, [pc, #0x498]
0066654c  98 04 9f e5                                      ldr r0, [pc, #0x498]
00666550  00 10 a0 e3                                      mov r1, #0
00666554  0c c0 95 e7                                      ldr ip, [r5, ip]
00666558  00 00 95 e7                                      ldr r0, [r5, r0]
0066655c  14 10 84 e5                                      str r1, [r4, #0x14]
00666560  04 c0 8c e2                                      add ip, ip, #4
00666564  08 c0 84 e5                                      str ip, [r4, #8]
00666568  08 00 80 e2                                      add r0, r0, #8
0066656c  01 c0 a0 e3                                      mov ip, #1
00666570  18 c0 c4 e5                                      strb ip, [r4, #0x18]
00666574  00 00 84 e5                                      str r0, [r4]
00666578  08 60 93 e5                                      ldr r6, [r3, #8]
0066657c  bf c4 a0 e3                                      mov ip, #0xbf000000
00666580  02 c5 8c e2                                      add ip, ip, #0x800000
00666584  fe 05 a0 e3                                      mov r0, #0x3f800000
00666588  44 e0 84 e2                                      add lr, r4, #0x44
0066658c  1c 60 84 e5                                      str r6, [r4, #0x1c]
00666590  2c c0 84 e5                                      str ip, [r4, #0x2c]
00666594  38 00 84 e5                                      str r0, [r4, #0x38]
00666598  20 10 c4 e5                                      strb r1, [r4, #0x20]
0066659c  22 10 c4 e5                                      strb r1, [r4, #0x22]
006665a0  23 10 c4 e5                                      strb r1, [r4, #0x23]
006665a4  24 c0 84 e5                                      str ip, [r4, #0x24]
006665a8  28 c0 84 e5                                      str ip, [r4, #0x28]
006665ac  30 00 84 e5                                      str r0, [r4, #0x30]
006665b0  34 00 84 e5                                      str r0, [r4, #0x34]
006665b4  3c 10 84 e5                                      str r1, [r4, #0x3c]
006665b8  40 10 84 e5                                      str r1, [r4, #0x40]
006665bc  44 10 84 e5                                      str r1, [r4, #0x44]
006665c0  04 10 8e e5                                      str r1, [lr, #4]
006665c4  4c 10 84 e5                                      str r1, [r4, #0x4c]
006665c8  50 10 84 e5                                      str r1, [r4, #0x50]
006665cc  54 10 84 e5                                      str r1, [r4, #0x54]
006665d0  58 10 84 e5                                      str r1, [r4, #0x58]
006665d4  5c 10 84 e5                                      str r1, [r4, #0x5c]
006665d8  60 10 84 e5                                      str r1, [r4, #0x60]
006665dc  64 10 84 e5                                      str r1, [r4, #0x64]
006665e0  68 10 84 e5                                      str r1, [r4, #0x68]
006665e4  6c 10 84 e5                                      str r1, [r4, #0x6c]
006665e8  74 10 84 e5                                      str r1, [r4, #0x74]
006665ec  78 10 84 e5                                      str r1, [r4, #0x78]
006665f0  7c 10 84 e5                                      str r1, [r4, #0x7c]
006665f4  80 10 84 e5                                      str r1, [r4, #0x80]
006665f8  98 10 84 e5                                      str r1, [r4, #0x98]
006665fc  84 10 84 e5                                      str r1, [r4, #0x84]
00666600  88 10 84 e5                                      str r1, [r4, #0x88]
00666604  8c 10 84 e5                                      str r1, [r4, #0x8c]
00666608  90 10 84 e5                                      str r1, [r4, #0x90]
0066660c  94 10 84 e5                                      str r1, [r4, #0x94]
00666610  04 30 93 e5                                      ldr r3, [r3, #4]
00666614  02 10 a0 e1                                      mov r1, r2
00666618  04 00 a0 e1                                      mov r0, r4
0066661c  48 20 9d e5                                      ldr r2, [sp, #0x48]
00666620  08 30 84 e5                                      str r3, [r4, #8]
00666624  33 f9 ff eb                                      bl #0x664af8
00666628  00 30 97 e5                                      ldr r3, [r7]
0066662c  24 30 93 e5                                      ldr r3, [r3, #0x24]
00666630  20 30 93 e5                                      ldr r3, [r3, #0x20]
00666634  04 90 93 e5                                      ldr sb, [r3, #4]
00666638  64 60 93 e5                                      ldr r6, [r3, #0x64]
0066663c  00 00 56 e3                                      cmp r6, #0
00666640  00 60 a0 d3                                      movle r6, #0
00666644  01 60 a0 c3                                      movgt r6, #1
00666648  00 00 59 e3                                      cmp sb, #0
0066664c  0b 00 00 0a                                      beq #0x666680
00666650  98 33 9f e5                                      ldr r3, [pc, #0x398]
00666654  14 10 99 e5                                      ldr r1, [sb, #0x14]
00666658  03 80 95 e7                                      ldr r8, [r5, r3]
0066665c  00 30 98 e5                                      ldr r3, [r8]
00666660  20 30 93 e5                                      ldr r3, [r3, #0x20]
00666664  34 30 93 e5                                      ldr r3, [r3, #0x34]
00666668  03 00 a0 e1                                      mov r0, r3
0066666c  00 30 93 e5                                      ldr r3, [r3]
00666670  0f e0 a0 e1                                      mov lr, pc
00666674  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00666678  00 90 50 e2                                      subs sb, r0, #0
0066667c  c9 00 00 0a                                      beq #0x6669a8
00666680  6c 33 9f e5                                      ldr r3, [pc, #0x36c]
00666684  00 00 56 e3                                      cmp r6, #0
00666688  10 90 8d e5                                      str sb, [sp, #0x10]
0066668c  03 30 95 e7                                      ldr r3, [r5, r3]
00666690  08 30 83 e2                                      add r3, r3, #8
00666694  0c 30 8d e5                                      str r3, [sp, #0xc]
00666698  47 00 00 1a                                      bne #0x6667bc
0066669c  00 00 59 e3                                      cmp sb, #0
006666a0  01 00 00 0a                                      beq #0x6666ac
006666a4  09 00 a0 e1                                      mov r0, sb
006666a8  b5 db f2 eb                                      bl #0x31d584
006666ac  00 10 a0 e3                                      mov r1, #0
006666b0  38 00 a0 e3                                      mov r0, #0x38
006666b4  bc 36 fb eb                                      bl #0x5341ac
006666b8  70 50 84 e2                                      add r5, r4, #0x70
006666bc  06 30 a0 e1                                      mov r3, r6
006666c0  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
006666c4  05 20 a0 e1                                      mov r2, r5
006666c8  00 70 a0 e1                                      mov r7, r0
006666cc  10 20 00 eb                                      bl #0x66e714
006666d0  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
006666d4  3c 70 84 e5                                      str r7, [r4, #0x3c]
006666d8  00 00 53 e3                                      cmp r3, #0
006666dc  03 00 00 0a                                      beq #0x6666f0
006666e0  03 00 a0 e1                                      mov r0, r3
006666e4  00 30 93 e5                                      ldr r3, [r3]
006666e8  0f e0 a0 e1                                      mov lr, pc
006666ec  04 f0 93 e5                                      ldr pc, [r3, #4]
006666f0  00 10 a0 e3                                      mov r1, #0
006666f4  30 00 a0 e3                                      mov r0, #0x30
006666f8  ab 36 fb eb                                      bl #0x5341ac
006666fc  06 30 a0 e1                                      mov r3, r6
00666700  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00666704  05 20 a0 e1                                      mov r2, r5
00666708  00 70 a0 e1                                      mov r7, r0
0066670c  72 14 00 eb                                      bl #0x66b8dc
00666710  40 30 94 e5                                      ldr r3, [r4, #0x40]
00666714  40 70 84 e5                                      str r7, [r4, #0x40]
00666718  00 00 53 e3                                      cmp r3, #0
0066671c  03 00 00 0a                                      beq #0x666730
00666720  03 00 a0 e1                                      mov r0, r3
00666724  00 30 93 e5                                      ldr r3, [r3]
00666728  0f e0 a0 e1                                      mov lr, pc
0066672c  04 f0 93 e5                                      ldr pc, [r3, #4]
00666730  00 10 a0 e3                                      mov r1, #0
00666734  30 00 a0 e3                                      mov r0, #0x30
00666738  9b 36 fb eb                                      bl #0x5341ac
0066673c  06 30 a0 e1                                      mov r3, r6
00666740  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00666744  05 20 a0 e1                                      mov r2, r5
00666748  00 70 a0 e1                                      mov r7, r0
0066674c  32 1a 00 eb                                      bl #0x66d01c
00666750  44 30 94 e5                                      ldr r3, [r4, #0x44]
00666754  44 70 84 e5                                      str r7, [r4, #0x44]
00666758  00 00 53 e3                                      cmp r3, #0
0066675c  03 00 00 0a                                      beq #0x666770
00666760  03 00 a0 e1                                      mov r0, r3
00666764  00 30 93 e5                                      ldr r3, [r3]
00666768  0f e0 a0 e1                                      mov lr, pc
0066676c  04 f0 93 e5                                      ldr pc, [r3, #4]
00666770  00 10 a0 e3                                      mov r1, #0
00666774  34 00 a0 e3                                      mov r0, #0x34
00666778  8b 36 fb eb                                      bl #0x5341ac
0066677c  06 30 a0 e1                                      mov r3, r6
00666780  05 20 a0 e1                                      mov r2, r5
00666784  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00666788  00 70 a0 e1                                      mov r7, r0
0066678c  b1 23 00 eb                                      bl #0x66f658
00666790  48 30 94 e5                                      ldr r3, [r4, #0x48]
00666794  48 70 84 e5                                      str r7, [r4, #0x48]
00666798  00 00 53 e3                                      cmp r3, #0
0066679c  03 00 00 0a                                      beq #0x6667b0
006667a0  03 00 a0 e1                                      mov r0, r3
006667a4  00 30 93 e5                                      ldr r3, [r3]
006667a8  0f e0 a0 e1                                      mov lr, pc
006667ac  04 f0 93 e5                                      ldr pc, [r3, #4]
006667b0  04 00 a0 e1                                      mov r0, r4
006667b4  24 d0 8d e2                                      add sp, sp, #0x24
006667b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006667bc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006667c0  0c a0 8d e2                                      add sl, sp, #0xc
006667c4  0a 20 a0 e1                                      mov r2, sl
006667c8  80 10 93 e5                                      ldr r1, [r3, #0x80]
006667cc  1c 00 8d e2                                      add r0, sp, #0x1c
006667d0  fe f4 ff eb                                      bl #0x663bd0
006667d4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006667d8  00 00 53 e3                                      cmp r3, #0
006667dc  00 20 93 15                                      ldrne r2, [r3]
006667e0  01 20 82 12                                      addne r2, r2, #1
006667e4  00 20 83 15                                      strne r2, [r3]
006667e8  4c 50 94 e5                                      ldr r5, [r4, #0x4c]
006667ec  00 00 55 e3                                      cmp r5, #0
006667f0  0a 00 00 0a                                      beq #0x666820
006667f4  00 30 95 e5                                      ldr r3, [r5]
006667f8  01 30 43 e2                                      sub r3, r3, #1
006667fc  00 00 53 e3                                      cmp r3, #0
00666800  00 30 85 e5                                      str r3, [r5]
00666804  05 00 00 1a                                      bne #0x666820
00666808  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0066680c  00 00 50 e3                                      cmp r0, #0
00666810  00 00 00 0a                                      beq #0x666818
00666814  27 9e f2 eb                                      bl #0x30e0b8
00666818  00 30 a0 e3                                      mov r3, #0
0066681c  0c 30 85 e5                                      str r3, [r5, #0xc]
00666820  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
00666824  00 00 55 e3                                      cmp r5, #0
00666828  4c 50 84 e5                                      str r5, [r4, #0x4c]
0066682c  0c 00 00 0a                                      beq #0x666864
00666830  00 30 95 e5                                      ldr r3, [r5]
00666834  01 30 43 e2                                      sub r3, r3, #1
00666838  00 00 53 e3                                      cmp r3, #0
0066683c  00 30 85 e5                                      str r3, [r5]
00666840  05 00 00 1a                                      bne #0x66685c
00666844  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00666848  00 00 50 e3                                      cmp r0, #0
0066684c  00 00 00 0a                                      beq #0x666854
00666850  18 9e f2 eb                                      bl #0x30e0b8
00666854  00 30 a0 e3                                      mov r3, #0
00666858  0c 30 85 e5                                      str r3, [r5, #0xc]
0066685c  00 30 a0 e3                                      mov r3, #0
00666860  1c 30 8d e5                                      str r3, [sp, #0x1c]
00666864  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00666868  20 20 8d e2                                      add r2, sp, #0x20
0066686c  50 00 84 e2                                      add r0, r4, #0x50
00666870  84 10 93 e5                                      ldr r1, [r3, #0x84]
00666874  00 30 a0 e3                                      mov r3, #0
00666878  08 30 22 e5                                      str r3, [r2, #-8]!
0066687c  c5 fd ff eb                                      bl #0x665f98
00666880  18 50 9d e5                                      ldr r5, [sp, #0x18]
00666884  00 00 55 e3                                      cmp r5, #0
00666888  06 00 00 0a                                      beq #0x6668a8
0066688c  00 30 95 e5                                      ldr r3, [r5]
00666890  01 30 43 e2                                      sub r3, r3, #1
00666894  00 00 53 e3                                      cmp r3, #0
00666898  00 30 85 e5                                      str r3, [r5]
0066689c  3a 00 00 0a                                      beq #0x66698c
006668a0  00 30 a0 e3                                      mov r3, #0
006668a4  18 30 8d e5                                      str r3, [sp, #0x18]
006668a8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
006668ac  84 20 93 e5                                      ldr r2, [r3, #0x84]
006668b0  00 00 52 e3                                      cmp r2, #0
006668b4  78 ff ff da                                      ble #0x66669c
006668b8  00 50 a0 e3                                      mov r5, #0
006668bc  14 b0 8d e2                                      add fp, sp, #0x14
006668c0  05 80 a0 e1                                      mov r8, r5
006668c4  88 30 93 e5                                      ldr r3, [r3, #0x88]
006668c8  0a 20 a0 e1                                      mov r2, sl
006668cc  0b 00 a0 e1                                      mov r0, fp
006668d0  85 31 83 e0                                      add r3, r3, r5, lsl #3
006668d4  04 10 93 e5                                      ldr r1, [r3, #4]
006668d8  50 70 94 e5                                      ldr r7, [r4, #0x50]
006668dc  d6 f4 ff eb                                      bl #0x663c3c
006668e0  14 30 9d e5                                      ldr r3, [sp, #0x14]
006668e4  05 21 a0 e1                                      lsl r2, r5, #2
006668e8  00 00 53 e3                                      cmp r3, #0
006668ec  00 10 93 15                                      ldrne r1, [r3]
006668f0  01 10 81 12                                      addne r1, r1, #1
006668f4  00 10 83 15                                      strne r1, [r3]
006668f8  02 30 97 e7                                      ldr r3, [r7, r2]
006668fc  00 00 53 e3                                      cmp r3, #0
00666900  0b 00 00 0a                                      beq #0x666934
00666904  00 10 93 e5                                      ldr r1, [r3]
00666908  01 10 41 e2                                      sub r1, r1, #1
0066690c  00 00 51 e3                                      cmp r1, #0
00666910  00 10 83 e5                                      str r1, [r3]
00666914  06 00 00 1a                                      bne #0x666934
00666918  0c 00 93 e5                                      ldr r0, [r3, #0xc]
0066691c  00 00 50 e3                                      cmp r0, #0
00666920  02 00 00 0a                                      beq #0x666930
00666924  0c 00 8d e8                                      stm sp, {r2, r3}
00666928  e2 9d f2 eb                                      bl #0x30e0b8
0066692c  0c 00 9d e8                                      ldm sp, {r2, r3}
00666930  0c 80 83 e5                                      str r8, [r3, #0xc]
00666934  14 30 9d e5                                      ldr r3, [sp, #0x14]
00666938  02 30 87 e7                                      str r3, [r7, r2]
0066693c  14 70 9d e5                                      ldr r7, [sp, #0x14]
00666940  00 00 57 e3                                      cmp r7, #0
00666944  0a 00 00 0a                                      beq #0x666974
00666948  00 30 97 e5                                      ldr r3, [r7]
0066694c  01 30 43 e2                                      sub r3, r3, #1
00666950  00 00 53 e3                                      cmp r3, #0
00666954  00 30 87 e5                                      str r3, [r7]
00666958  04 00 00 1a                                      bne #0x666970
0066695c  0c 00 97 e5                                      ldr r0, [r7, #0xc]
00666960  00 00 50 e3                                      cmp r0, #0
00666964  00 00 00 0a                                      beq #0x66696c
00666968  d2 9d f2 eb                                      bl #0x30e0b8
0066696c  0c 80 87 e5                                      str r8, [r7, #0xc]
00666970  14 80 8d e5                                      str r8, [sp, #0x14]
00666974  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00666978  01 50 85 e2                                      add r5, r5, #1
0066697c  84 20 93 e5                                      ldr r2, [r3, #0x84]
00666980  02 00 55 e1                                      cmp r5, r2
00666984  ce ff ff ba                                      blt #0x6668c4
00666988  43 ff ff ea                                      b #0x66669c
0066698c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00666990  00 00 50 e3                                      cmp r0, #0
00666994  00 00 00 0a                                      beq #0x66699c
00666998  c6 9d f2 eb                                      bl #0x30e0b8
0066699c  00 30 a0 e3                                      mov r3, #0
006669a0  0c 30 85 e5                                      str r3, [r5, #0xc]
006669a4  bd ff ff ea                                      b #0x6668a0
006669a8  00 20 97 e5                                      ldr r2, [r7]
006669ac  00 30 98 e5                                      ldr r3, [r8]
006669b0  24 20 92 e5                                      ldr r2, [r2, #0x24]
006669b4  20 30 93 e5                                      ldr r3, [r3, #0x20]
006669b8  20 20 92 e5                                      ldr r2, [r2, #0x20]
006669bc  34 30 93 e5                                      ldr r3, [r3, #0x34]
006669c0  04 20 92 e5                                      ldr r2, [r2, #4]
006669c4  03 00 a0 e1                                      mov r0, r3
006669c8  00 30 93 e5                                      ldr r3, [r3]
006669cc  14 10 92 e5                                      ldr r1, [r2, #0x14]
006669d0  0f e0 a0 e1                                      mov lr, pc
006669d4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006669d8  00 90 a0 e1                                      mov sb, r0
006669dc  27 ff ff ea                                      b #0x666680
; mapping-symbol data/literal pool
006669e0  90 e5 32 00 40 0a 00 00 b4 17 00 00 14 13 00 00  .byte 0x90, 0xe5, 0x32, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x14, 0x13, 0x00, 0x00
006669f0  48 44 00 00 fc 46 00 00                          .byte 0x48, 0x44, 0x00, 0x00, 0xfc, 0x46, 0x00, 0x00
