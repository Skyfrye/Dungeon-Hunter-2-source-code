; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006469c0, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh5cloneEv
; demangled: glitch::collada::CModularSkinnedMesh::clone() const
; decoder-mode: arm
006469c0  00 20 a0 e3                                      mov r2, #0
006469c4  00 20 80 e5                                      str r2, [r0]
006469c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x006469cc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh15getCategoryNameEi
; demangled: glitch::collada::CModularSkinnedMesh::getCategoryName(int) const
; decoder-mode: arm
006469cc  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
006469d0  00 20 93 e5                                      ldr r2, [r3]
006469d4  02 00 51 e1                                      cmp r1, r2
006469d8  04 30 93 b5                                      ldrlt r3, [r3, #4]
006469dc  00 00 a0 a3                                      movge r0, #0
006469e0  01 02 93 b7                                      ldrlt r0, [r3, r1, lsl #4]
006469e4  1e ff 2f e1                                      bx lr

; FUNCTION 0x006469e8, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh13getModuleNameEii
; demangled: glitch::collada::CModularSkinnedMesh::getModuleName(int, int) const
; decoder-mode: arm
006469e8  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
006469ec  00 00 93 e5                                      ldr r0, [r3]
006469f0  00 00 51 e1                                      cmp r1, r0
006469f4  04 00 00 aa                                      bge #0x646a0c
006469f8  04 30 93 e5                                      ldr r3, [r3, #4]
006469fc  01 12 83 e0                                      add r1, r3, r1, lsl #4
00646a00  08 30 91 e5                                      ldr r3, [r1, #8]
00646a04  03 00 52 e1                                      cmp r2, r3
00646a08  01 00 00 ba                                      blt #0x646a14
00646a0c  00 00 a0 e3                                      mov r0, #0
00646a10  1e ff 2f e1                                      bx lr
00646a14  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00646a18  82 21 83 e0                                      add r2, r3, r2, lsl #3
00646a1c  04 30 92 e5                                      ldr r3, [r2, #4]
00646a20  04 00 93 e5                                      ldr r0, [r3, #4]
00646a24  1e ff 2f e1                                      bx lr

; FUNCTION 0x00646a28, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh16getCategoryCountEv
; demangled: glitch::collada::CModularSkinnedMesh::getCategoryCount() const
; decoder-mode: arm
00646a28  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00646a2c  00 00 93 e5                                      ldr r0, [r3]
00646a30  1e ff 2f e1                                      bx lr

; FUNCTION 0x00646a34, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh22getCategoryModuleCountEi
; demangled: glitch::collada::CModularSkinnedMesh::getCategoryModuleCount(int) const
; decoder-mode: arm
00646a34  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00646a38  04 30 93 e5                                      ldr r3, [r3, #4]
00646a3c  01 32 83 e0                                      add r3, r3, r1, lsl #4
00646a40  08 00 93 e5                                      ldr r0, [r3, #8]
00646a44  1e ff 2f e1                                      bx lr

; FUNCTION 0x00646a48, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh18getCurrentModuleIdEi
; demangled: glitch::collada::CModularSkinnedMesh::getCurrentModuleId(int) const
; decoder-mode: arm
00646a48  24 30 90 e5                                      ldr r3, [r0, #0x24]
00646a4c  81 01 93 e7                                      ldr r0, [r3, r1, lsl #3]
00646a50  1e ff 2f e1                                      bx lr

; FUNCTION 0x00646a54, declared_size=56, range_size=56, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh20getCurrentModuleNameEi
; demangled: glitch::collada::CModularSkinnedMesh::getCurrentModuleName(int) const
; decoder-mode: arm
00646a54  70 40 2d e9                                      push {r4, r5, r6, lr}
00646a58  01 40 a0 e1                                      mov r4, r1
00646a5c  00 50 a0 e1                                      mov r5, r0
00646a60  f8 ff ff eb                                      bl #0x646a48
00646a64  01 00 70 e3                                      cmn r0, #1
00646a68  1c 30 95 15                                      ldrne r3, [r5, #0x1c]
00646a6c  00 00 a0 03                                      moveq r0, #0
00646a70  04 30 93 15                                      ldrne r3, [r3, #4]
00646a74  04 42 83 10                                      addne r4, r3, r4, lsl #4
00646a78  0c 30 94 15                                      ldrne r3, [r4, #0xc]
00646a7c  80 01 83 10                                      addne r0, r3, r0, lsl #3
00646a80  04 30 90 15                                      ldrne r3, [r0, #4]
00646a84  04 00 93 15                                      ldrne r0, [r3, #4]
00646a88  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00646a8c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh10reallocateEj
; demangled: glitch::collada::CModularSkinnedMesh::reallocate(unsigned int)
; decoder-mode: arm
00646a8c  00 00 a0 e3                                      mov r0, #0
00646a90  1e ff 2f e1                                      bx lr

; FUNCTION 0x00646a94, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh7getTypeEv
; demangled: glitch::collada::CModularSkinnedMesh::getType() const
; decoder-mode: arm
00646a94  03 00 a0 e3                                      mov r0, #3
00646a98  1e ff 2f e1                                      bx lr

; FUNCTION 0x00646a9c, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh9onAnimateEj
; demangled: glitch::collada::CModularSkinnedMesh::onAnimate(unsigned int)
; decoder-mode: arm
00646a9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00646aa0  24 40 90 e5                                      ldr r4, [r0, #0x24]
00646aa4  28 50 90 e5                                      ldr r5, [r0, #0x28]
00646aa8  00 70 a0 e1                                      mov r7, r0
00646aac  01 60 a0 e1                                      mov r6, r1
00646ab0  05 00 54 e1                                      cmp r4, r5
00646ab4  0a 00 00 0a                                      beq #0x646ae4
00646ab8  04 30 94 e5                                      ldr r3, [r4, #4]
00646abc  06 10 a0 e1                                      mov r1, r6
00646ac0  08 40 84 e2                                      add r4, r4, #8
00646ac4  00 00 53 e3                                      cmp r3, #0
00646ac8  03 00 a0 e1                                      mov r0, r3
00646acc  f7 ff ff 0a                                      beq #0x646ab0
00646ad0  00 30 93 e5                                      ldr r3, [r3]
00646ad4  0f e0 a0 e1                                      mov lr, pc
00646ad8  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00646adc  05 00 54 e1                                      cmp r4, r5
00646ae0  f4 ff ff 1a                                      bne #0x646ab8
00646ae4  01 30 a0 e3                                      mov r3, #1
00646ae8  59 30 c7 e5                                      strb r3, [r7, #0x59]
00646aec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00646af0, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh16needOutputBufferEv
; demangled: glitch::collada::CModularSkinnedMesh::needOutputBuffer() const
; decoder-mode: arm
00646af0  58 00 d0 e5                                      ldrb r0, [r0, #0x58]
00646af4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00646af8, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh15updateTechniqueEj
; demangled: glitch::collada::CModularSkinnedMesh::updateTechnique(unsigned int)
; decoder-mode: arm
00646af8  70 40 2d e9                                      push {r4, r5, r6, lr}
00646afc  30 30 90 e5                                      ldr r3, [r0, #0x30]
00646b00  00 60 a0 e1                                      mov r6, r0
00646b04  81 32 83 e0                                      add r3, r3, r1, lsl #5
00646b08  10 50 93 e5                                      ldr r5, [r3, #0x10]
00646b0c  0c 40 93 e5                                      ldr r4, [r3, #0xc]
00646b10  05 00 54 e1                                      cmp r4, r5
00646b14  0d 00 00 0a                                      beq #0x646b50
00646b18  00 20 94 e5                                      ldr r2, [r4]
00646b1c  24 30 96 e5                                      ldr r3, [r6, #0x24]
00646b20  00 10 a0 e3                                      mov r1, #0
00646b24  04 40 84 e2                                      add r4, r4, #4
00646b28  82 31 83 e0                                      add r3, r3, r2, lsl #3
00646b2c  04 30 93 e5                                      ldr r3, [r3, #4]
00646b30  01 00 53 e1                                      cmp r3, r1
00646b34  03 00 a0 e1                                      mov r0, r3
00646b38  f4 ff ff 0a                                      beq #0x646b10
00646b3c  00 30 93 e5                                      ldr r3, [r3]
00646b40  0f e0 a0 e1                                      mov lr, pc
00646b44  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00646b48  05 00 54 e1                                      cmp r4, r5
00646b4c  f1 ff ff 1a                                      bne #0x646b18
00646b50  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00646b54, declared_size=20, range_size=20, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh18getMeshBufferCountEv
; demangled: glitch::collada::CModularSkinnedMesh::getMeshBufferCount() const
; decoder-mode: arm
00646b54  30 30 90 e5                                      ldr r3, [r0, #0x30]
00646b58  34 00 90 e5                                      ldr r0, [r0, #0x34]
00646b5c  00 00 63 e0                                      rsb r0, r3, r0
00646b60  c0 02 a0 e1                                      asr r0, r0, #5
00646b64  1e ff 2f e1                                      bx lr

; FUNCTION 0x00646b68, declared_size=108, range_size=108, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh13getMeshBufferEj
; demangled: glitch::collada::CModularSkinnedMesh::getMeshBuffer(unsigned int) const
; decoder-mode: arm
00646b68  70 40 2d e9                                      push {r4, r5, r6, lr}
00646b6c  30 30 91 e5                                      ldr r3, [r1, #0x30]
00646b70  00 40 a0 e1                                      mov r4, r0
00646b74  82 52 83 e0                                      add r5, r3, r2, lsl #5
00646b78  1c c0 d5 e5                                      ldrb ip, [r5, #0x1c]
00646b7c  00 00 5c e3                                      cmp ip, #0
00646b80  07 00 00 0a                                      beq #0x646ba4
00646b84  82 32 93 e7                                      ldr r3, [r3, r2, lsl #5]
00646b88  00 00 53 e3                                      cmp r3, #0
00646b8c  00 30 80 e5                                      str r3, [r0]
00646b90  04 20 93 15                                      ldrne r2, [r3, #4]
00646b94  04 00 a0 e1                                      mov r0, r4
00646b98  01 20 82 12                                      addne r2, r2, #1
00646b9c  04 20 83 15                                      strne r2, [r3, #4]
00646ba0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00646ba4  0c e0 95 e5                                      ldr lr, [r5, #0xc]
00646ba8  24 30 91 e5                                      ldr r3, [r1, #0x24]
00646bac  0c 20 a0 e1                                      mov r2, ip
00646bb0  00 10 9e e5                                      ldr r1, [lr]
00646bb4  81 31 83 e0                                      add r3, r3, r1, lsl #3
00646bb8  04 30 93 e5                                      ldr r3, [r3, #4]
00646bbc  03 10 a0 e1                                      mov r1, r3
00646bc0  00 30 93 e5                                      ldr r3, [r3]
00646bc4  0f e0 a0 e1                                      mov lr, pc
00646bc8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00646bcc  04 00 a0 e1                                      mov r0, r4
00646bd0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00646bd4, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh11getMaterialEj
; demangled: glitch::collada::CModularSkinnedMesh::getMaterial(unsigned int) const
; decoder-mode: arm
00646bd4  30 30 91 e5                                      ldr r3, [r1, #0x30]
00646bd8  82 32 83 e0                                      add r3, r3, r2, lsl #5
00646bdc  04 30 93 e5                                      ldr r3, [r3, #4]
00646be0  00 00 53 e3                                      cmp r3, #0
00646be4  00 30 80 e5                                      str r3, [r0]
00646be8  00 20 93 15                                      ldrne r2, [r3]
00646bec  01 20 82 12                                      addne r2, r2, #1
00646bf0  00 20 83 15                                      strne r2, [r3]
00646bf4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00646bf8, declared_size=36, range_size=36, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh29getMaterialVertexAttributeMapEj
; demangled: glitch::collada::CModularSkinnedMesh::getMaterialVertexAttributeMap(unsigned int) const
; decoder-mode: arm
00646bf8  30 30 91 e5                                      ldr r3, [r1, #0x30]
00646bfc  82 32 83 e0                                      add r3, r3, r2, lsl #5
00646c00  08 30 93 e5                                      ldr r3, [r3, #8]
00646c04  00 00 53 e3                                      cmp r3, #0
00646c08  00 30 80 e5                                      str r3, [r0]
00646c0c  00 20 93 15                                      ldrne r2, [r3]
00646c10  01 20 82 12                                      addne r2, r2, #1
00646c14  00 20 83 15                                      strne r2, [r3]
00646c18  1e ff 2f e1                                      bx lr

; FUNCTION 0x00646c1c, declared_size=192, range_size=192, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh18computeBoundingBoxEv
; demangled: glitch::collada::CModularSkinnedMesh::computeBoundingBox()
; decoder-mode: arm
00646c1c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00646c20  24 40 90 e5                                      ldr r4, [r0, #0x24]
00646c24  28 50 90 e5                                      ldr r5, [r0, #0x28]
00646c28  00 70 a0 e1                                      mov r7, r0
00646c2c  05 00 54 e1                                      cmp r4, r5
00646c30  12 00 00 0a                                      beq #0x646c80
00646c34  04 30 94 e5                                      ldr r3, [r4, #4]
00646c38  00 00 53 e3                                      cmp r3, #0
00646c3c  22 00 00 0a                                      beq #0x646ccc
00646c40  03 00 a0 e1                                      mov r0, r3
00646c44  00 30 93 e5                                      ldr r3, [r3]
00646c48  0f e0 a0 e1                                      mov lr, pc
00646c4c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00646c50  00 30 90 e5                                      ldr r3, [r0]
00646c54  40 30 87 e5                                      str r3, [r7, #0x40]
00646c58  04 30 90 e5                                      ldr r3, [r0, #4]
00646c5c  44 30 87 e5                                      str r3, [r7, #0x44]
00646c60  08 30 90 e5                                      ldr r3, [r0, #8]
00646c64  48 30 87 e5                                      str r3, [r7, #0x48]
00646c68  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00646c6c  4c 30 87 e5                                      str r3, [r7, #0x4c]
00646c70  10 30 90 e5                                      ldr r3, [r0, #0x10]
00646c74  50 30 87 e5                                      str r3, [r7, #0x50]
00646c78  14 30 90 e5                                      ldr r3, [r0, #0x14]
00646c7c  54 30 87 e5                                      str r3, [r7, #0x54]
00646c80  08 40 84 e2                                      add r4, r4, #8
00646c84  05 00 54 e1                                      cmp r4, r5
00646c88  0c 00 00 0a                                      beq #0x646cc0
00646c8c  40 60 87 e2                                      add r6, r7, #0x40
00646c90  04 30 94 e5                                      ldr r3, [r4, #4]
00646c94  08 40 84 e2                                      add r4, r4, #8
00646c98  00 00 53 e2                                      subs r0, r3, #0
00646c9c  05 00 00 0a                                      beq #0x646cb8
00646ca0  00 30 93 e5                                      ldr r3, [r3]
00646ca4  0f e0 a0 e1                                      mov lr, pc
00646ca8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00646cac  00 10 a0 e1                                      mov r1, r0
00646cb0  06 00 a0 e1                                      mov r0, r6
00646cb4  25 55 f4 eb                                      bl #0x35c150
00646cb8  05 00 54 e1                                      cmp r4, r5
00646cbc  f3 ff ff 1a                                      bne #0x646c90
00646cc0  00 30 a0 e3                                      mov r3, #0
00646cc4  59 30 c7 e5                                      strb r3, [r7, #0x59]
00646cc8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00646ccc  08 40 84 e2                                      add r4, r4, #8
00646cd0  05 00 54 e1                                      cmp r4, r5
00646cd4  d6 ff ff 1a                                      bne #0x646c34
00646cd8  e8 ff ff ea                                      b #0x646c80

; FUNCTION 0x00646cdc, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh14getBoundingBoxEv
; demangled: glitch::collada::CModularSkinnedMesh::getBoundingBox() const
; decoder-mode: arm
00646cdc  10 40 2d e9                                      push {r4, lr}
00646ce0  59 30 d0 e5                                      ldrb r3, [r0, #0x59]
00646ce4  00 40 a0 e1                                      mov r4, r0
00646ce8  00 00 53 e3                                      cmp r3, #0
00646cec  00 00 00 0a                                      beq #0x646cf4
00646cf0  c9 ff ff eb                                      bl #0x646c1c
00646cf4  40 00 84 e2                                      add r0, r4, #0x40
00646cf8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006470a8, declared_size=144, range_size=144, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS3_INS4_27CMaterialVertexAttributeMapEEE
; demangled: glitch::collada::CModularSkinnedMesh::setMaterial(unsigned int, boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&)
; decoder-mode: arm
006470a8  70 40 2d e9                                      push {r4, r5, r6, lr}
006470ac  00 20 92 e5                                      ldr r2, [r2]
006470b0  08 d0 4d e2                                      sub sp, sp, #8
006470b4  00 40 a0 e1                                      mov r4, r0
006470b8  00 00 52 e3                                      cmp r2, #0
006470bc  30 00 90 e5                                      ldr r0, [r0, #0x30]
006470c0  04 20 8d e5                                      str r2, [sp, #4]
006470c4  81 52 a0 e1                                      lsl r5, r1, #5
006470c8  00 10 92 15                                      ldrne r1, [r2]
006470cc  03 60 a0 e1                                      mov r6, r3
006470d0  05 30 80 e0                                      add r3, r0, r5
006470d4  01 10 81 12                                      addne r1, r1, #1
006470d8  00 10 82 15                                      strne r1, [r2]
006470dc  04 20 9d 15                                      ldrne r2, [sp, #4]
006470e0  04 10 93 e5                                      ldr r1, [r3, #4]
006470e4  08 00 8d e2                                      add r0, sp, #8
006470e8  04 10 20 e5                                      str r1, [r0, #-4]!
006470ec  04 20 83 e5                                      str r2, [r3, #4]
006470f0  bc 26 f3 eb                                      bl #0x310be8
006470f4  00 30 96 e5                                      ldr r3, [r6]
006470f8  30 20 94 e5                                      ldr r2, [r4, #0x30]
006470fc  08 00 8d e2                                      add r0, sp, #8
00647100  00 30 8d e5                                      str r3, [sp]
00647104  00 00 53 e3                                      cmp r3, #0
00647108  05 50 82 e0                                      add r5, r2, r5
0064710c  00 20 93 15                                      ldrne r2, [r3]
00647110  01 20 82 12                                      addne r2, r2, #1
00647114  00 20 83 15                                      strne r2, [r3]
00647118  00 30 9d 15                                      ldrne r3, [sp]
0064711c  08 20 95 e5                                      ldr r2, [r5, #8]
00647120  08 20 20 e5                                      str r2, [r0, #-8]!
00647124  08 30 85 e5                                      str r3, [r5, #8]
00647128  0d 00 a0 e1                                      mov r0, sp
0064712c  4e cc fc eb                                      bl #0x57a26c
00647130  08 d0 8d e2                                      add sp, sp, #8
00647134  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00647138, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh20setIsSkinningEnabledEb
; demangled: glitch::collada::CModularSkinnedMesh::setIsSkinningEnabled(bool)
; decoder-mode: arm
00647138  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0064713c  14 30 90 e5                                      ldr r3, [r0, #0x14]
00647140  00 70 a0 e1                                      mov r7, r0
00647144  01 50 a0 e1                                      mov r5, r1
00647148  01 00 13 e3                                      tst r3, #1
0064714c  12 00 00 0a                                      beq #0x64719c
00647150  24 40 90 e5                                      ldr r4, [r0, #0x24]
00647154  28 60 90 e5                                      ldr r6, [r0, #0x28]
00647158  06 00 54 e1                                      cmp r4, r6
0064715c  0a 00 00 0a                                      beq #0x64718c
00647160  04 30 94 e5                                      ldr r3, [r4, #4]
00647164  05 10 a0 e1                                      mov r1, r5
00647168  08 40 84 e2                                      add r4, r4, #8
0064716c  00 00 53 e3                                      cmp r3, #0
00647170  03 00 a0 e1                                      mov r0, r3
00647174  f7 ff ff 0a                                      beq #0x647158
00647178  00 30 93 e5                                      ldr r3, [r3]
0064717c  0f e0 a0 e1                                      mov lr, pc
00647180  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00647184  06 00 54 e1                                      cmp r4, r6
00647188  f4 ff ff 1a                                      bne #0x647160
0064718c  07 00 a0 e1                                      mov r0, r7
00647190  05 10 a0 e1                                      mov r1, r5
00647194  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00647198  71 8a 00 ea                                      b #0x669b64
0064719c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006474b8, declared_size=128, range_size=128, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh11getModuleIdEPKc
; demangled: glitch::collada::CModularSkinnedMesh::getModuleId(char const*) const
; decoder-mode: arm
006474b8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006474bc  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
006474c0  01 70 a0 e1                                      mov r7, r1
006474c4  00 a0 93 e5                                      ldr sl, [r3]
006474c8  00 00 5a e3                                      cmp sl, #0
006474cc  17 00 00 da                                      ble #0x647530
006474d0  04 90 93 e5                                      ldr sb, [r3, #4]
006474d4  00 80 a0 e3                                      mov r8, #0
006474d8  08 32 89 e0                                      add r3, sb, r8, lsl #4
006474dc  08 50 93 e5                                      ldr r5, [r3, #8]
006474e0  00 00 55 e3                                      cmp r5, #0
006474e4  0e 00 00 da                                      ble #0x647524
006474e8  0c 60 93 e5                                      ldr r6, [r3, #0xc]
006474ec  00 40 a0 e3                                      mov r4, #0
006474f0  02 00 00 ea                                      b #0x647500
006474f4  01 40 84 e2                                      add r4, r4, #1
006474f8  05 00 54 e1                                      cmp r4, r5
006474fc  08 00 00 0a                                      beq #0x647524
00647500  84 31 86 e0                                      add r3, r6, r4, lsl #3
00647504  04 30 93 e5                                      ldr r3, [r3, #4]
00647508  07 10 a0 e1                                      mov r1, r7
0064750c  04 00 93 e5                                      ldr r0, [r3, #4]
00647510  81 1b f3 eb                                      bl #0x30e31c
00647514  00 00 50 e3                                      cmp r0, #0
00647518  f5 ff ff 1a                                      bne #0x6474f4
0064751c  04 00 a0 e1                                      mov r0, r4
00647520  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00647524  01 80 88 e2                                      add r8, r8, #1
00647528  0a 00 58 e1                                      cmp r8, sl
0064752c  e9 ff ff 1a                                      bne #0x6474d8
00647530  00 40 e0 e3                                      mvn r4, #0
00647534  f8 ff ff ea                                      b #0x64751c

; FUNCTION 0x00647538, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZNK6glitch7collada19CModularSkinnedMesh13getCategoryIdEPKc
; demangled: glitch::collada::CModularSkinnedMesh::getCategoryId(char const*) const
; decoder-mode: arm
00647538  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0064753c  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
00647540  01 60 a0 e1                                      mov r6, r1
00647544  00 50 93 e5                                      ldr r5, [r3]
00647548  00 00 55 e3                                      cmp r5, #0
0064754c  0c 00 00 da                                      ble #0x647584
00647550  04 70 93 e5                                      ldr r7, [r3, #4]
00647554  00 40 a0 e3                                      mov r4, #0
00647558  02 00 00 ea                                      b #0x647568
0064755c  01 40 84 e2                                      add r4, r4, #1
00647560  05 00 54 e1                                      cmp r4, r5
00647564  06 00 00 0a                                      beq #0x647584
00647568  04 02 97 e7                                      ldr r0, [r7, r4, lsl #4]
0064756c  06 10 a0 e1                                      mov r1, r6
00647570  69 1b f3 eb                                      bl #0x30e31c
00647574  00 00 50 e3                                      cmp r0, #0
00647578  f7 ff ff 1a                                      bne #0x64755c
0064757c  04 00 a0 e1                                      mov r0, r4
00647580  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00647584  00 40 e0 e3                                      mvn r4, #0
00647588  04 00 a0 e1                                      mov r0, r4
0064758c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00647774, declared_size=332, range_size=332, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverEj
; demangled: glitch::collada::CModularSkinnedMesh::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP, glitch::video::IVideoDriver*, unsigned int)
; decoder-mode: arm
00647774  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00647778  18 c0 d0 e5                                      ldrb ip, [r0, #0x18]
0064777c  14 d0 4d e2                                      sub sp, sp, #0x14
00647780  00 40 a0 e1                                      mov r4, r0
00647784  00 00 5c e3                                      cmp ip, #0
00647788  02 70 a0 e1                                      mov r7, r2
0064778c  03 60 a0 e1                                      mov r6, r3
00647790  07 00 00 0a                                      beq #0x6477b4
00647794  30 20 90 e5                                      ldr r2, [r0, #0x30]
00647798  83 c2 a0 e1                                      lsl ip, r3, #5
0064779c  0c 30 82 e0                                      add r3, r2, ip
006477a0  1c 50 d3 e5                                      ldrb r5, [r3, #0x1c]
006477a4  00 00 55 e3                                      cmp r5, #0
006477a8  05 00 00 1a                                      bne #0x6477c4
006477ac  01 00 51 e3                                      cmp r1, #1
006477b0  3c 00 00 0a                                      beq #0x6478a8
006477b4  10 70 a0 e3                                      mov r7, #0x10
006477b8  07 00 a0 e1                                      mov r0, r7
006477bc  14 d0 8d e2                                      add sp, sp, #0x14
006477c0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006477c4  86 52 92 e7                                      ldr r5, [r2, r6, lsl #5]
006477c8  00 00 55 e3                                      cmp r5, #0
006477cc  04 30 95 15                                      ldrne r3, [r5, #4]
006477d0  01 30 83 12                                      addne r3, r3, #1
006477d4  04 30 85 15                                      strne r3, [r5, #4]
006477d8  30 30 90 15                                      ldrne r3, [r0, #0x30]
006477dc  0c 30 83 10                                      addne r3, r3, ip
006477e0  04 30 93 e5                                      ldr r3, [r3, #4]
006477e4  01 80 71 e2                                      rsbs r8, r1, #1
006477e8  00 80 a0 33                                      movlo r8, #0
006477ec  03 00 a0 e1                                      mov r0, r3
006477f0  04 a0 93 e5                                      ldr sl, [r3, #4]
006477f4  4e f9 fd eb                                      bl #0x5c5d34
006477f8  18 30 9a e5                                      ldr r3, [sl, #0x18]
006477fc  0c 20 a0 e3                                      mov r2, #0xc
00647800  04 10 95 e5                                      ldr r1, [r5, #4]
00647804  92 30 23 e0                                      mla r3, r2, r0, r3
00647808  00 c0 97 e5                                      ldr ip, [r7]
0064780c  08 00 93 e5                                      ldr r0, [r3, #8]
00647810  01 10 81 e2                                      add r1, r1, #1
00647814  f0 c1 9c e5                                      ldr ip, [ip, #0x1f0]
00647818  20 e0 90 e5                                      ldr lr, [r0, #0x20]
0064781c  01 00 00 e3                                      movw r0, #1
00647820  02 00 40 e3                                      movt r0, #2
00647824  38 e0 9e e5                                      ldr lr, [lr, #0x38]
00647828  14 a0 85 e2                                      add sl, r5, #0x14
0064782c  04 10 85 e5                                      str r1, [r5, #4]
00647830  00 00 0e e0                                      and r0, lr, r0
00647834  00 10 a0 e3                                      mov r1, #0
00647838  30 e0 85 e2                                      add lr, r5, #0x30
0064783c  24 20 95 e5                                      ldr r2, [r5, #0x24]
00647840  28 30 95 e5                                      ldr r3, [r5, #0x28]
00647844  00 00 8d e5                                      str r0, [sp]
00647848  08 e0 8d e5                                      str lr, [sp, #8]
0064784c  0c 10 8d e5                                      str r1, [sp, #0xc]
00647850  07 00 a0 e1                                      mov r0, r7
00647854  08 10 a0 e1                                      mov r1, r8
00647858  04 a0 8d e5                                      str sl, [sp, #4]
0064785c  3c ff 2f e1                                      blx ip
00647860  00 70 a0 e1                                      mov r7, r0
00647864  05 00 a0 e1                                      mov r0, r5
00647868  45 57 f3 eb                                      bl #0x31d584
0064786c  04 00 17 e3                                      tst r7, #4
00647870  09 00 00 0a                                      beq #0x64789c
00647874  14 20 94 e5                                      ldr r2, [r4, #0x14]
00647878  01 10 a0 e3                                      mov r1, #1
0064787c  1f 30 06 e2                                      and r3, r6, #0x1f
00647880  11 33 82 e1                                      orr r3, r2, r1, lsl r3
00647884  04 00 a0 e1                                      mov r0, r4
00647888  14 30 84 e5                                      str r3, [r4, #0x14]
0064788c  06 10 a0 e1                                      mov r1, r6
00647890  00 30 94 e5                                      ldr r3, [r4]
00647894  0f e0 a0 e1                                      mov lr, pc
00647898  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0064789c  05 00 a0 e1                                      mov r0, r5
006478a0  37 57 f3 eb                                      bl #0x31d584
006478a4  c3 ff ff ea                                      b #0x6477b8
006478a8  00 30 90 e5                                      ldr r3, [r0]
006478ac  06 10 a0 e1                                      mov r1, r6
006478b0  0f e0 a0 e1                                      mov lr, pc
006478b4  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
006478b8  10 70 a0 e3                                      mov r7, #0x10
006478bc  bd ff ff ea                                      b #0x6477b8

; FUNCTION 0x00647afc, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMeshD1Ev
; demangled: glitch::collada::CModularSkinnedMesh::~CModularSkinnedMesh()
; decoder-mode: arm
00647afc  70 40 2d e9                                      push {r4, r5, r6, lr}
00647b00  40 40 9f e5                                      ldr r4, [pc, #0x40]
00647b04  40 30 9f e5                                      ldr r3, [pc, #0x40]
00647b08  00 50 a0 e1                                      mov r5, r0
00647b0c  04 40 8f e0                                      add r4, pc, r4
00647b10  03 30 94 e7                                      ldr r3, [r4, r3]
00647b14  08 30 83 e2                                      add r3, r3, #8
00647b18  30 30 80 e4                                      str r3, [r0], #0x30
00647b1c  e5 ff ff eb                                      bl #0x647ab8
00647b20  24 00 85 e2                                      add r0, r5, #0x24
00647b24  c6 fd ff eb                                      bl #0x647244
00647b28  20 30 9f e5                                      ldr r3, [pc, #0x20]
00647b2c  05 00 a0 e1                                      mov r0, r5
00647b30  03 30 94 e7                                      ldr r3, [r4, r3]
00647b34  08 30 83 e2                                      add r3, r3, #8
00647b38  0c 30 80 e4                                      str r3, [r0], #0xc
00647b3c  4c 46 ff eb                                      bl #0x619474
00647b40  05 00 a0 e1                                      mov r0, r5
00647b44  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00647b48  84 cf 34 00 38 3a 00 00 04 37 00 00              .byte 0x84, 0xcf, 0x34, 0x00, 0x38, 0x3a, 0x00, 0x00, 0x04, 0x37, 0x00, 0x00

; FUNCTION 0x00647b54, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMeshD0Ev
; demangled: glitch::collada::CModularSkinnedMesh::~CModularSkinnedMesh()
; decoder-mode: arm
00647b54  10 40 2d e9                                      push {r4, lr}
00647b58  00 40 a0 e1                                      mov r4, r0
00647b5c  e6 ff ff eb                                      bl #0x647afc
00647b60  04 00 a0 e1                                      mov r0, r4
00647b64  d1 19 f3 eb                                      bl #0x30e2b0
00647b68  04 00 a0 e1                                      mov r0, r4
00647b6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00647b70, declared_size=88, range_size=88, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMeshD2Ev
; demangled: glitch::collada::CModularSkinnedMesh::~CModularSkinnedMesh()
; decoder-mode: arm
00647b70  70 40 2d e9                                      push {r4, r5, r6, lr}
00647b74  40 40 9f e5                                      ldr r4, [pc, #0x40]
00647b78  40 30 9f e5                                      ldr r3, [pc, #0x40]
00647b7c  00 50 a0 e1                                      mov r5, r0
00647b80  04 40 8f e0                                      add r4, pc, r4
00647b84  03 30 94 e7                                      ldr r3, [r4, r3]
00647b88  08 30 83 e2                                      add r3, r3, #8
00647b8c  30 30 80 e4                                      str r3, [r0], #0x30
00647b90  c8 ff ff eb                                      bl #0x647ab8
00647b94  24 00 85 e2                                      add r0, r5, #0x24
00647b98  a9 fd ff eb                                      bl #0x647244
00647b9c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00647ba0  05 00 a0 e1                                      mov r0, r5
00647ba4  03 30 94 e7                                      ldr r3, [r4, r3]
00647ba8  08 30 83 e2                                      add r3, r3, #8
00647bac  0c 30 80 e4                                      str r3, [r0], #0xc
00647bb0  2f 46 ff eb                                      bl #0x619474
00647bb4  05 00 a0 e1                                      mov r0, r5
00647bb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00647bbc  10 cf 34 00 38 3a 00 00 04 37 00 00              .byte 0x10, 0xcf, 0x34, 0x00, 0x38, 0x3a, 0x00, 0x00, 0x04, 0x37, 0x00, 0x00

; FUNCTION 0x00647fcc, declared_size=896, range_size=896, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh4skinEj
; demangled: glitch::collada::CModularSkinnedMesh::skin(unsigned int)
; decoder-mode: arm
00647fcc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00647fd0  30 30 90 e5                                      ldr r3, [r0, #0x30]
00647fd4  4c d0 4d e2                                      sub sp, sp, #0x4c
00647fd8  00 70 a0 e1                                      mov r7, r0
00647fdc  81 42 83 e0                                      add r4, r3, r1, lsl #5
00647fe0  1c 20 d4 e5                                      ldrb r2, [r4, #0x1c]
00647fe4  00 00 52 e3                                      cmp r2, #0
00647fe8  13 00 00 1a                                      bne #0x64803c
00647fec  10 50 94 e5                                      ldr r5, [r4, #0x10]
00647ff0  0c 40 94 e5                                      ldr r4, [r4, #0xc]
00647ff4  05 00 54 e1                                      cmp r4, r5
00647ff8  0d 00 00 0a                                      beq #0x648034
00647ffc  00 20 94 e5                                      ldr r2, [r4]
00648000  24 30 97 e5                                      ldr r3, [r7, #0x24]
00648004  00 10 a0 e3                                      mov r1, #0
00648008  04 40 84 e2                                      add r4, r4, #4
0064800c  82 31 83 e0                                      add r3, r3, r2, lsl #3
00648010  04 30 93 e5                                      ldr r3, [r3, #4]
00648014  01 00 53 e1                                      cmp r3, r1
00648018  03 00 a0 e1                                      mov r0, r3
0064801c  f4 ff ff 0a                                      beq #0x647ff4
00648020  00 30 93 e5                                      ldr r3, [r3]
00648024  0f e0 a0 e1                                      mov lr, pc
00648028  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
0064802c  05 00 54 e1                                      cmp r4, r5
00648030  f1 ff ff 1a                                      bne #0x647ffc
00648034  4c d0 8d e2                                      add sp, sp, #0x4c
00648038  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0064803c  81 32 93 e7                                      ldr r3, [r3, r1, lsl #5]
00648040  00 90 a0 e3                                      mov sb, #0
00648044  14 30 93 e5                                      ldr r3, [r3, #0x14]
00648048  04 20 93 e5                                      ldr r2, [r3, #4]
0064804c  14 a0 83 e2                                      add sl, r3, #0x14
00648050  02 28 12 e2                                      ands r2, r2, #0x20000
00648054  0c 20 d3 15                                      ldrbne r2, [r3, #0xc]
00648058  01 20 82 12                                      addne r2, r2, #1
0064805c  72 20 ef 16                                      uxtbne r2, r2
00648060  02 22 8a 10                                      addne r2, sl, r2, lsl #4
00648064  14 20 8d e5                                      str r2, [sp, #0x14]
00648068  14 10 93 e5                                      ldr r1, [r3, #0x14]
0064806c  00 00 51 e3                                      cmp r1, #0
00648070  08 10 8d e5                                      str r1, [sp, #8]
00648074  08 c0 9d 15                                      ldrne ip, [sp, #8]
00648078  01 00 a0 01                                      moveq r0, r1
0064807c  04 10 a0 e3                                      mov r1, #4
00648080  04 20 9c 15                                      ldrne r2, [ip, #4]
00648084  01 20 82 12                                      addne r2, r2, #1
00648088  04 20 8c 15                                      strne r2, [ip, #4]
0064808c  14 00 93 15                                      ldrne r0, [r3, #0x14]
00648090  56 66 fd eb                                      bl #0x5a19f0
00648094  ff 30 a0 e3                                      mov r3, #0xff
00648098  1c 00 8d e5                                      str r0, [sp, #0x1c]
0064809c  3c 30 8d e5                                      str r3, [sp, #0x3c]
006480a0  34 90 8d e5                                      str sb, [sp, #0x34]
006480a4  38 90 8d e5                                      str sb, [sp, #0x38]
006480a8  b0 94 cd e1                                      strh sb, [sp, #0x40]
006480ac  b2 94 cd e1                                      strh sb, [sp, #0x42]
006480b0  10 b0 94 e5                                      ldr fp, [r4, #0x10]
006480b4  0c 50 94 e5                                      ldr r5, [r4, #0xc]
006480b8  0b 00 55 e1                                      cmp r5, fp
006480bc  73 00 00 0a                                      beq #0x648290
006480c0  44 10 8d e2                                      add r1, sp, #0x44
006480c4  24 20 8d e2                                      add r2, sp, #0x24
006480c8  34 30 8d e2                                      add r3, sp, #0x34
006480cc  10 10 8d e5                                      str r1, [sp, #0x10]
006480d0  0c 20 8d e5                                      str r2, [sp, #0xc]
006480d4  18 30 8d e5                                      str r3, [sp, #0x18]
006480d8  07 80 a0 e1                                      mov r8, r7
006480dc  4f 00 00 ea                                      b #0x648220
006480e0  00 30 94 e5                                      ldr r3, [r4]
006480e4  10 00 9d e5                                      ldr r0, [sp, #0x10]
006480e8  04 10 a0 e1                                      mov r1, r4
006480ec  00 20 a0 e3                                      mov r2, #0
006480f0  0f e0 a0 e1                                      mov lr, pc
006480f4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
006480f8  44 70 9d e5                                      ldr r7, [sp, #0x44]
006480fc  00 00 57 e3                                      cmp r7, #0
00648100  01 00 00 0a                                      beq #0x64810c
00648104  07 00 a0 e1                                      mov r0, r7
00648108  1d 55 f3 eb                                      bl #0x31d584
0064810c  14 60 97 e5                                      ldr r6, [r7, #0x14]
00648110  be 20 da e1                                      ldrh r2, [sl, #0xe]
00648114  24 10 97 e5                                      ldr r1, [r7, #0x24]
00648118  14 30 96 e5                                      ldr r3, [r6, #0x14]
0064811c  14 70 86 e2                                      add r7, r6, #0x14
00648120  91 92 61 e0                                      mls r1, r1, r2, sb
00648124  24 30 8d e5                                      str r3, [sp, #0x24]
00648128  04 10 8d e5                                      str r1, [sp, #4]
0064812c  00 00 53 e3                                      cmp r3, #0
00648130  04 20 93 15                                      ldrne r2, [r3, #4]
00648134  06 00 a0 e1                                      mov r0, r6
00648138  07 10 a0 e1                                      mov r1, r7
0064813c  01 20 82 12                                      addne r2, r2, #1
00648140  04 20 83 15                                      strne r2, [r3, #4]
00648144  04 30 97 e5                                      ldr r3, [r7, #4]
00648148  0a 20 a0 e1                                      mov r2, sl
0064814c  28 30 8d e5                                      str r3, [sp, #0x28]
00648150  ba c0 d7 e1                                      ldrh ip, [r7, #0xa]
00648154  04 30 9d e5                                      ldr r3, [sp, #4]
00648158  2c c0 8d e5                                      str ip, [sp, #0x2c]
0064815c  bc c0 d7 e1                                      ldrh ip, [r7, #0xc]
00648160  b0 c3 cd e1                                      strh ip, [sp, #0x30]
00648164  be c0 d7 e1                                      ldrh ip, [r7, #0xe]
00648168  b2 c3 cd e1                                      strh ip, [sp, #0x32]
0064816c  5b ff ff eb                                      bl #0x647ee0
00648170  04 30 96 e5                                      ldr r3, [r6, #4]
00648174  02 08 13 e3                                      tst r3, #0x20000
00648178  56 00 00 0a                                      beq #0x6482d8
0064817c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00648180  00 00 51 e3                                      cmp r1, #0
00648184  53 00 00 0a                                      beq #0x6482d8
00648188  0c 10 d6 e5                                      ldrb r1, [r6, #0xc]
0064818c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00648190  01 10 81 e2                                      add r1, r1, #1
00648194  71 10 ef e6                                      uxtb r1, r1
00648198  01 12 87 e0                                      add r1, r7, r1, lsl #4
0064819c  6c ff ff eb                                      bl #0x647f54
006481a0  0c 10 d6 e5                                      ldrb r1, [r6, #0xc]
006481a4  14 20 9d e5                                      ldr r2, [sp, #0x14]
006481a8  04 30 9d e5                                      ldr r3, [sp, #4]
006481ac  01 10 81 e2                                      add r1, r1, #1
006481b0  01 12 87 e0                                      add r1, r7, r1, lsl #4
006481b4  06 00 a0 e1                                      mov r0, r6
006481b8  48 ff ff eb                                      bl #0x647ee0
006481bc  04 00 a0 e1                                      mov r0, r4
006481c0  00 30 94 e5                                      ldr r3, [r4]
006481c4  00 10 a0 e3                                      mov r1, #0
006481c8  0f e0 a0 e1                                      mov lr, pc
006481cc  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
006481d0  08 30 96 e5                                      ldr r3, [r6, #8]
006481d4  be c0 da e1                                      ldrh ip, [sl, #0xe]
006481d8  06 00 a0 e1                                      mov r0, r6
006481dc  07 10 a0 e1                                      mov r1, r7
006481e0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006481e4  93 9c 29 e0                                      mla sb, r3, ip, sb
006481e8  22 ff ff eb                                      bl #0x647e78
006481ec  0c 30 d6 e5                                      ldrb r3, [r6, #0xc]
006481f0  06 00 a0 e1                                      mov r0, r6
006481f4  18 20 9d e5                                      ldr r2, [sp, #0x18]
006481f8  01 30 83 e2                                      add r3, r3, #1
006481fc  03 12 87 e0                                      add r1, r7, r3, lsl #4
00648200  1c ff ff eb                                      bl #0x647e78
00648204  24 00 9d e5                                      ldr r0, [sp, #0x24]
00648208  00 00 50 e3                                      cmp r0, #0
0064820c  00 00 00 0a                                      beq #0x648214
00648210  db 54 f3 eb                                      bl #0x31d584
00648214  04 50 85 e2                                      add r5, r5, #4
00648218  0b 00 55 e1                                      cmp r5, fp
0064821c  17 00 00 0a                                      beq #0x648280
00648220  00 20 95 e5                                      ldr r2, [r5]
00648224  24 30 98 e5                                      ldr r3, [r8, #0x24]
00648228  82 31 83 e0                                      add r3, r3, r2, lsl #3
0064822c  04 40 93 e5                                      ldr r4, [r3, #4]
00648230  00 00 54 e3                                      cmp r4, #0
00648234  f6 ff ff 0a                                      beq #0x648214
00648238  00 10 a0 e3                                      mov r1, #0
0064823c  04 00 a0 e1                                      mov r0, r4
00648240  00 30 94 e5                                      ldr r3, [r4]
00648244  0f e0 a0 e1                                      mov lr, pc
00648248  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0064824c  00 30 94 e5                                      ldr r3, [r4]
00648250  04 00 a0 e1                                      mov r0, r4
00648254  0f e0 a0 e1                                      mov lr, pc
00648258  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0064825c  00 10 50 e2                                      subs r1, r0, #0
00648260  9e ff ff 1a                                      bne #0x6480e0
00648264  04 00 a0 e1                                      mov r0, r4
00648268  00 30 94 e5                                      ldr r3, [r4]
0064826c  04 50 85 e2                                      add r5, r5, #4
00648270  0f e0 a0 e1                                      mov lr, pc
00648274  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00648278  0b 00 55 e1                                      cmp r5, fp
0064827c  e7 ff ff 1a                                      bne #0x648220
00648280  34 00 9d e5                                      ldr r0, [sp, #0x34]
00648284  00 00 50 e3                                      cmp r0, #0
00648288  00 00 00 0a                                      beq #0x648290
0064828c  bc 54 f3 eb                                      bl #0x31d584
00648290  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00648294  00 00 52 e3                                      cmp r2, #0
00648298  08 00 00 0a                                      beq #0x6482c0
0064829c  08 c0 9d e5                                      ldr ip, [sp, #8]
006482a0  13 30 dc e5                                      ldrb r3, [ip, #0x13]
006482a4  1f 20 03 e2                                      and r2, r3, #0x1f
006482a8  01 00 52 e3                                      cmp r2, #1
006482ac  16 00 00 9a                                      bls #0x64830c
006482b0  01 20 42 e2                                      sub r2, r2, #1
006482b4  1f 30 c3 e3                                      bic r3, r3, #0x1f
006482b8  03 30 82 e1                                      orr r3, r2, r3
006482bc  13 30 cc e5                                      strb r3, [ip, #0x13]
006482c0  08 30 9d e5                                      ldr r3, [sp, #8]
006482c4  00 00 53 e3                                      cmp r3, #0
006482c8  59 ff ff 0a                                      beq #0x648034
006482cc  03 00 a0 e1                                      mov r0, r3
006482d0  ab 54 f3 eb                                      bl #0x31d584
006482d4  56 ff ff ea                                      b #0x648034
006482d8  04 00 a0 e1                                      mov r0, r4
006482dc  00 30 94 e5                                      ldr r3, [r4]
006482e0  00 10 a0 e3                                      mov r1, #0
006482e4  0f e0 a0 e1                                      mov lr, pc
006482e8  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
006482ec  be c0 da e1                                      ldrh ip, [sl, #0xe]
006482f0  08 30 96 e5                                      ldr r3, [r6, #8]
006482f4  06 00 a0 e1                                      mov r0, r6
006482f8  07 10 a0 e1                                      mov r1, r7
006482fc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00648300  93 9c 29 e0                                      mla sb, r3, ip, sb
00648304  db fe ff eb                                      bl #0x647e78
00648308  bd ff ff ea                                      b #0x648204
0064830c  08 10 9d e5                                      ldr r1, [sp, #8]
00648310  12 30 d1 e5                                      ldrb r3, [r1, #0x12]
00648314  20 00 13 e3                                      tst r3, #0x20
00648318  06 00 00 1a                                      bne #0x648338
0064831c  08 20 9d e5                                      ldr r2, [sp, #8]
00648320  00 30 a0 e3                                      mov r3, #0
00648324  13 30 c2 e5                                      strb r3, [r2, #0x13]
00648328  08 30 9d e5                                      ldr r3, [sp, #8]
0064832c  00 00 53 e3                                      cmp r3, #0
00648330  e5 ff ff 1a                                      bne #0x6482cc
00648334  3e ff ff ea                                      b #0x648034
00648338  00 30 91 e5                                      ldr r3, [r1]
0064833c  01 00 a0 e1                                      mov r0, r1
00648340  0f e0 a0 e1                                      mov lr, pc
00648344  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00648348  f3 ff ff ea                                      b #0x64831c

; FUNCTION 0x006483c8, declared_size=2540, range_size=2540, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh12updateBufferEb
; demangled: glitch::collada::CModularSkinnedMesh::updateBuffer(bool)
; decoder-mode: arm
006483c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006483cc  c4 29 9f e5                                      ldr r2, [pc, #0x9c4]
006483d0  c4 39 9f e5                                      ldr r3, [pc, #0x9c4]
006483d4  4f df 4d e2                                      sub sp, sp, #0x13c
006483d8  02 20 8f e0                                      add r2, pc, r2
006483dc  38 20 8d e5                                      str r2, [sp, #0x38]
006483e0  40 30 8d e5                                      str r3, [sp, #0x40]
006483e4  03 c0 92 e7                                      ldr ip, [r2, r3]
006483e8  28 50 90 e5                                      ldr r5, [r0, #0x28]
006483ec  00 40 a0 e1                                      mov r4, r0
006483f0  24 00 90 e5                                      ldr r0, [r0, #0x24]
006483f4  30 30 94 e5                                      ldr r3, [r4, #0x30]
006483f8  34 20 94 e5                                      ldr r2, [r4, #0x34]
006483fc  00 c0 9c e5                                      ldr ip, [ip]
00648400  05 00 60 e0                                      rsb r0, r0, r5
00648404  c0 01 a0 e1                                      asr r0, r0, #3
00648408  02 00 53 e1                                      cmp r3, r2
0064840c  34 c1 8d e5                                      str ip, [sp, #0x134]
00648410  3c 10 8d e5                                      str r1, [sp, #0x3c]
00648414  1c 00 8d e5                                      str r0, [sp, #0x1c]
00648418  30 50 84 e2                                      add r5, r4, #0x30
0064841c  03 00 00 0a                                      beq #0x648430
00648420  03 10 a0 e1                                      mov r1, r3
00648424  05 00 a0 e1                                      mov r0, r5
00648428  b0 30 8d e2                                      add r3, sp, #0xb0
0064842c  72 fe ff eb                                      bl #0x647dfc
00648430  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00648434  00 30 a0 e3                                      mov r3, #0
00648438  ac 30 8d e5                                      str r3, [sp, #0xac]
0064843c  00 00 5c e3                                      cmp ip, #0
00648440  3b 00 00 0a                                      beq #0x648534
00648444  8c 00 8d e2                                      add r0, sp, #0x8c
00648448  ac 10 8d e2                                      add r1, sp, #0xac
0064844c  a8 a0 8d e2                                      add sl, sp, #0xa8
00648450  4c 70 8d e2                                      add r7, sp, #0x4c
00648454  18 00 8d e5                                      str r0, [sp, #0x18]
00648458  20 10 8d e5                                      str r1, [sp, #0x20]
0064845c  24 20 94 e5                                      ldr r2, [r4, #0x24]
00648460  83 31 82 e0                                      add r3, r2, r3, lsl #3
00648464  04 80 93 e5                                      ldr r8, [r3, #4]
00648468  00 00 58 e3                                      cmp r8, #0
0064846c  2a 00 00 0a                                      beq #0x64851c
00648470  0a 00 a0 e1                                      mov r0, sl
00648474  08 10 a0 e1                                      mov r1, r8
00648478  00 20 a0 e3                                      mov r2, #0
0064847c  00 30 98 e5                                      ldr r3, [r8]
00648480  0f e0 a0 e1                                      mov lr, pc
00648484  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00648488  00 30 98 e5                                      ldr r3, [r8]
0064848c  08 00 a0 e1                                      mov r0, r8
00648490  0f e0 a0 e1                                      mov lr, pc
00648494  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00648498  00 00 50 e3                                      cmp r0, #0
0064849c  71 01 00 0a                                      beq #0x648a68
006484a0  30 30 94 e5                                      ldr r3, [r4, #0x30]
006484a4  34 b0 94 e5                                      ldr fp, [r4, #0x34]
006484a8  0b b0 63 e0                                      rsb fp, r3, fp
006484ac  cb b2 b0 e1                                      asrs fp, fp, #5
006484b0  6c 01 00 0a                                      beq #0x648a68
006484b4  00 60 a0 e3                                      mov r6, #0
006484b8  03 00 00 ea                                      b #0x6484cc
006484bc  01 60 86 e2                                      add r6, r6, #1
006484c0  0b 00 56 e1                                      cmp r6, fp
006484c4  67 01 00 0a                                      beq #0x648a68
006484c8  30 30 94 e5                                      ldr r3, [r4, #0x30]
006484cc  86 92 a0 e1                                      lsl sb, r6, #5
006484d0  09 30 83 e0                                      add r3, r3, sb
006484d4  04 00 93 e5                                      ldr r0, [r3, #4]
006484d8  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
006484dc  b3 2c f4 eb                                      bl #0x3537b0
006484e0  00 00 50 e3                                      cmp r0, #0
006484e4  f4 ff ff 0a                                      beq #0x6484bc
006484e8  30 30 94 e5                                      ldr r3, [r4, #0x30]
006484ec  09 90 83 e0                                      add sb, r3, sb
006484f0  10 10 99 e5                                      ldr r1, [sb, #0x10]
006484f4  14 30 99 e5                                      ldr r3, [sb, #0x14]
006484f8  03 00 51 e1                                      cmp r1, r3
006484fc  9d 01 00 0a                                      beq #0x648b78
00648500  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00648504  00 30 81 e5                                      str r3, [r1]
00648508  10 30 99 e5                                      ldr r3, [sb, #0x10]
0064850c  04 30 83 e2                                      add r3, r3, #4
00648510  10 30 89 e5                                      str r3, [sb, #0x10]
00648514  0a 00 a0 e1                                      mov r0, sl
00648518  b2 21 f3 eb                                      bl #0x310be8
0064851c  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00648520  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00648524  01 30 83 e2                                      add r3, r3, #1
00648528  02 00 53 e1                                      cmp r3, r2
0064852c  ac 30 8d e5                                      str r3, [sp, #0xac]
00648530  c9 ff ff 3a                                      blo #0x64845c
00648534  34 30 94 e5                                      ldr r3, [r4, #0x34]
00648538  30 a0 94 e5                                      ldr sl, [r4, #0x30]
0064853c  2c 30 8d e5                                      str r3, [sp, #0x2c]
00648540  00 30 a0 e3                                      mov r3, #0
00648544  58 30 c4 e5                                      strb r3, [r4, #0x58]
00648548  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0064854c  0c 00 5a e1                                      cmp sl, ip
00648550  39 01 00 0a                                      beq #0x648a3c
00648554  44 08 9f e5                                      ldr r0, [pc, #0x844]
00648558  02 18 e0 e3                                      mvn r1, #0x20000
0064855c  01 10 41 e2                                      sub r1, r1, #1
00648560  98 20 8d e2                                      add r2, sp, #0x98
00648564  94 30 8d e2                                      add r3, sp, #0x94
00648568  90 c0 8d e2                                      add ip, sp, #0x90
0064856c  44 00 8d e5                                      str r0, [sp, #0x44]
00648570  18 10 8d e5                                      str r1, [sp, #0x18]
00648574  1c 20 8d e5                                      str r2, [sp, #0x1c]
00648578  20 30 8d e5                                      str r3, [sp, #0x20]
0064857c  24 c0 8d e5                                      str ip, [sp, #0x24]
00648580  04 80 a0 e1                                      mov r8, r4
00648584  03 00 00 ea                                      b #0x648598
00648588  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0064858c  20 a0 8a e2                                      add sl, sl, #0x20
00648590  03 00 5a e1                                      cmp sl, r3
00648594  28 01 00 0a                                      beq #0x648a3c
00648598  1c 30 da e5                                      ldrb r3, [sl, #0x1c]
0064859c  00 00 53 e3                                      cmp r3, #0
006485a0  f8 ff ff 0a                                      beq #0x648588
006485a4  01 40 a0 e3                                      mov r4, #1
006485a8  58 40 c8 e5                                      strb r4, [r8, #0x58]
006485ac  04 30 9a e5                                      ldr r3, [sl, #4]
006485b0  03 00 a0 e1                                      mov r0, r3
006485b4  04 50 93 e5                                      ldr r5, [r3, #4]
006485b8  dd f5 fd eb                                      bl #0x5c5d34
006485bc  18 30 95 e5                                      ldr r3, [r5, #0x18]
006485c0  0c 20 a0 e3                                      mov r2, #0xc
006485c4  92 30 23 e0                                      mla r3, r2, r0, r3
006485c8  a8 00 8d e2                                      add r0, sp, #0xa8
006485cc  08 30 93 e5                                      ldr r3, [r3, #8]
006485d0  20 30 93 e5                                      ldr r3, [r3, #0x20]
006485d4  38 10 93 e5                                      ldr r1, [r3, #0x38]
006485d8  5f 63 fd eb                                      bl #0x5a135c
006485dc  04 30 9a e5                                      ldr r3, [sl, #4]
006485e0  00 e0 a0 e3                                      mov lr, #0
006485e4  0e 20 a0 e1                                      mov r2, lr
006485e8  04 10 93 e5                                      ldr r1, [r3, #4]
006485ec  a4 00 8d e2                                      add r0, sp, #0xa4
006485f0  04 30 a0 e3                                      mov r3, #4
006485f4  04 c0 91 e5                                      ldr ip, [r1, #4]
006485f8  0c 10 a0 e1                                      mov r1, ip
006485fc  00 c0 9c e5                                      ldr ip, [ip]
00648600  08 40 8d e5                                      str r4, [sp, #8]
00648604  00 e0 8d e5                                      str lr, [sp]
00648608  04 e0 8d e5                                      str lr, [sp, #4]
0064860c  0f e0 a0 e1                                      mov lr, pc
00648610  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00648614  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
00648618  00 00 53 e3                                      cmp r3, #0
0064861c  04 20 93 15                                      ldrne r2, [r3, #4]
00648620  04 20 82 10                                      addne r2, r2, r4
00648624  04 20 83 15                                      strne r2, [r3, #4]
00648628  18 00 9a e5                                      ldr r0, [sl, #0x18]
0064862c  18 30 8a e5                                      str r3, [sl, #0x18]
00648630  00 00 50 e3                                      cmp r0, #0
00648634  00 00 00 0a                                      beq #0x64863c
00648638  d1 53 f3 eb                                      bl #0x31d584
0064863c  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
00648640  00 00 50 e3                                      cmp r0, #0
00648644  00 00 00 0a                                      beq #0x64864c
00648648  cd 53 f3 eb                                      bl #0x31d584
0064864c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00648650  18 10 8a e2                                      add r1, sl, #0x18
00648654  00 00 50 e3                                      cmp r0, #0
00648658  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
0064865c  30 01 00 0a                                      beq #0x648b24
00648660  02 28 e0 e3                                      mvn r2, #0x20000
00648664  01 20 42 e2                                      sub r2, r2, #1
00648668  d4 63 fd eb                                      bl #0x5a15c0
0064866c  28 00 8d e5                                      str r0, [sp, #0x28]
00648670  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
00648674  00 30 a0 e3                                      mov r3, #0
00648678  06 c0 a0 e3                                      mov ip, #6
0064867c  14 10 80 e2                                      add r1, r0, #0x14
00648680  ba 38 cd e1                                      strh r3, [sp, #0x8a]
00648684  7c 30 8d e5                                      str r3, [sp, #0x7c]
00648688  80 30 8d e5                                      str r3, [sp, #0x80]
0064868c  7c 20 8d e2                                      add r2, sp, #0x7c
00648690  03 30 a0 e3                                      mov r3, #3
00648694  84 c0 8d e5                                      str ip, [sp, #0x84]
00648698  b8 38 cd e1                                      strh r3, [sp, #0x88]
0064869c  f5 fd ff eb                                      bl #0x647e78
006486a0  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
006486a4  00 00 50 e3                                      cmp r0, #0
006486a8  00 00 00 0a                                      beq #0x6486b0
006486ac  b4 53 f3 eb                                      bl #0x31d584
006486b0  a8 20 9d e5                                      ldr r2, [sp, #0xa8]
006486b4  04 30 92 e5                                      ldr r3, [r2, #4]
006486b8  02 08 13 e3                                      tst r3, #0x20000
006486bc  11 00 00 0a                                      beq #0x648708
006486c0  0c 10 d2 e5                                      ldrb r1, [r2, #0xc]
006486c4  06 c0 a0 e3                                      mov ip, #6
006486c8  00 30 a0 e3                                      mov r3, #0
006486cc  01 12 82 e0                                      add r1, r2, r1, lsl #4
006486d0  02 00 a0 e1                                      mov r0, r2
006486d4  74 c0 8d e5                                      str ip, [sp, #0x74]
006486d8  24 10 81 e2                                      add r1, r1, #0x24
006486dc  03 c0 a0 e3                                      mov ip, #3
006486e0  6c 20 8d e2                                      add r2, sp, #0x6c
006486e4  ba 37 cd e1                                      strh r3, [sp, #0x7a]
006486e8  6c 30 8d e5                                      str r3, [sp, #0x6c]
006486ec  70 30 8d e5                                      str r3, [sp, #0x70]
006486f0  b8 c7 cd e1                                      strh ip, [sp, #0x78]
006486f4  df fd ff eb                                      bl #0x647e78
006486f8  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
006486fc  00 00 50 e3                                      cmp r0, #0
00648700  00 00 00 0a                                      beq #0x648708
00648704  9e 53 f3 eb                                      bl #0x31d584
00648708  0c 50 9a e5                                      ldr r5, [sl, #0xc]
0064870c  10 60 9a e5                                      ldr r6, [sl, #0x10]
00648710  06 00 55 e1                                      cmp r5, r6
00648714  00 70 a0 03                                      moveq r7, #0
00648718  07 90 a0 01                                      moveq sb, r7
0064871c  1e 00 00 0a                                      beq #0x64879c
00648720  00 70 a0 e3                                      mov r7, #0
00648724  07 90 a0 e1                                      mov sb, r7
00648728  a0 b0 8d e2                                      add fp, sp, #0xa0
0064872c  00 20 95 e5                                      ldr r2, [r5]
00648730  24 30 98 e5                                      ldr r3, [r8, #0x24]
00648734  82 31 83 e0                                      add r3, r3, r2, lsl #3
00648738  04 40 93 e5                                      ldr r4, [r3, #4]
0064873c  00 00 54 e3                                      cmp r4, #0
00648740  12 00 00 0a                                      beq #0x648790
00648744  00 30 94 e5                                      ldr r3, [r4]
00648748  04 00 a0 e1                                      mov r0, r4
0064874c  0f e0 a0 e1                                      mov lr, pc
00648750  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00648754  00 00 50 e3                                      cmp r0, #0
00648758  0c 00 00 0a                                      beq #0x648790
0064875c  04 10 a0 e1                                      mov r1, r4
00648760  00 20 a0 e3                                      mov r2, #0
00648764  0b 00 a0 e1                                      mov r0, fp
00648768  00 30 94 e5                                      ldr r3, [r4]
0064876c  0f e0 a0 e1                                      mov lr, pc
00648770  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00648774  a0 00 9d e5                                      ldr r0, [sp, #0xa0]
00648778  20 30 90 e5                                      ldr r3, [r0, #0x20]
0064877c  03 90 89 e0                                      add sb, sb, r3
00648780  7f 53 f3 eb                                      bl #0x31d584
00648784  04 00 a0 e1                                      mov r0, r4
00648788  ef fe ff eb                                      bl #0x64834c
0064878c  00 70 87 e0                                      add r7, r7, r0
00648790  04 50 85 e2                                      add r5, r5, #4
00648794  06 00 55 e1                                      cmp r5, r6
00648798  e3 ff ff 1a                                      bne #0x64872c
0064879c  a8 30 9d e5                                      ldr r3, [sp, #0xa8]
006487a0  08 70 83 e5                                      str r7, [r3, #8]
006487a4  00 e0 9a e5                                      ldr lr, [sl]
006487a8  00 00 5e e3                                      cmp lr, #0
006487ac  29 01 00 0a                                      beq #0x648c58
006487b0  3c 30 98 e5                                      ldr r3, [r8, #0x3c]
006487b4  28 00 9d e5                                      ldr r0, [sp, #0x28]
006487b8  89 20 a0 e1                                      lsl r2, sb, #1
006487bc  01 00 53 e3                                      cmp r3, #1
006487c0  90 07 01 e0                                      mul r1, r0, r7
006487c4  df 00 00 0a                                      beq #0x648b48
006487c8  02 00 53 e3                                      cmp r3, #2
006487cc  ed 00 00 0a                                      beq #0x648b88
006487d0  00 00 53 e3                                      cmp r3, #0
006487d4  db 00 00 0a                                      beq #0x648b48
006487d8  00 30 9a e5                                      ldr r3, [sl]
006487dc  28 30 8d e5                                      str r3, [sp, #0x28]
006487e0  18 00 93 e5                                      ldr r0, [r3, #0x18]
006487e4  04 10 a0 e3                                      mov r1, #4
006487e8  80 64 fd eb                                      bl #0x5a19f0
006487ec  28 c0 9d e5                                      ldr ip, [sp, #0x28]
006487f0  0c 70 9a e5                                      ldr r7, [sl, #0xc]
006487f4  10 20 9a e5                                      ldr r2, [sl, #0x10]
006487f8  1c 30 9c e5                                      ldr r3, [ip, #0x1c]
006487fc  02 00 57 e1                                      cmp r7, r2
00648800  03 30 80 e0                                      add r3, r0, r3
00648804  30 30 8d e5                                      str r3, [sp, #0x30]
00648808  6e 00 00 0a                                      beq #0x6489c8
0064880c  00 90 a0 e3                                      mov sb, #0
00648810  34 a0 8d e5                                      str sl, [sp, #0x34]
00648814  03 40 a0 e1                                      mov r4, r3
00648818  09 b0 a0 e1                                      mov fp, sb
0064881c  02 a0 a0 e1                                      mov sl, r2
00648820  00 20 97 e5                                      ldr r2, [r7]
00648824  24 30 98 e5                                      ldr r3, [r8, #0x24]
00648828  82 31 83 e0                                      add r3, r3, r2, lsl #3
0064882c  04 60 93 e5                                      ldr r6, [r3, #4]
00648830  00 00 56 e3                                      cmp r6, #0
00648834  5f 00 00 0a                                      beq #0x6489b8
00648838  00 30 96 e5                                      ldr r3, [r6]
0064883c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00648840  06 10 a0 e1                                      mov r1, r6
00648844  00 20 a0 e3                                      mov r2, #0
00648848  0f e0 a0 e1                                      mov lr, pc
0064884c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00648850  98 50 9d e5                                      ldr r5, [sp, #0x98]
00648854  00 00 55 e3                                      cmp r5, #0
00648858  01 00 00 0a                                      beq #0x648864
0064885c  05 00 a0 e1                                      mov r0, r5
00648860  47 53 f3 eb                                      bl #0x31d584
00648864  14 50 95 e5                                      ldr r5, [r5, #0x14]
00648868  00 20 a0 e3                                      mov r2, #0
0064886c  00 00 55 e3                                      cmp r5, #0
00648870  00 30 95 15                                      ldrne r3, [r5]
00648874  94 50 8d 05                                      streq r5, [sp, #0x94]
00648878  a8 00 9d 05                                      ldreq r0, [sp, #0xa8]
0064887c  01 30 83 12                                      addne r3, r3, #1
00648880  00 30 85 15                                      strne r3, [r5]
00648884  94 50 8d 15                                      strne r5, [sp, #0x94]
00648888  00 30 95 15                                      ldrne r3, [r5]
0064888c  a8 00 9d 15                                      ldrne r0, [sp, #0xa8]
00648890  01 30 83 12                                      addne r3, r3, #1
00648894  00 30 85 15                                      strne r3, [r5]
00648898  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0064889c  08 30 95 e5                                      ldr r3, [r5, #8]
006488a0  20 10 9d e5                                      ldr r1, [sp, #0x20]
006488a4  00 18 8d e8                                      stm sp, {fp, ip}
006488a8  cd 61 fd eb                                      bl #0x5a0fe4
006488ac  94 30 9d e5                                      ldr r3, [sp, #0x94]
006488b0  00 00 53 e3                                      cmp r3, #0
006488b4  0a 00 00 0a                                      beq #0x6488e4
006488b8  00 20 93 e5                                      ldr r2, [r3]
006488bc  01 20 42 e2                                      sub r2, r2, #1
006488c0  00 00 52 e3                                      cmp r2, #0
006488c4  00 20 83 e5                                      str r2, [r3]
006488c8  05 00 00 1a                                      bne #0x6488e4
006488cc  03 00 a0 e1                                      mov r0, r3
006488d0  14 30 8d e5                                      str r3, [sp, #0x14]
006488d4  50 60 fd eb                                      bl #0x5a0a1c
006488d8  14 30 9d e5                                      ldr r3, [sp, #0x14]
006488dc  03 00 a0 e1                                      mov r0, r3
006488e0  72 16 f3 eb                                      bl #0x30e2b0
006488e4  08 c0 95 e5                                      ldr ip, [r5, #8]
006488e8  06 10 a0 e1                                      mov r1, r6
006488ec  00 30 96 e5                                      ldr r3, [r6]
006488f0  24 00 9d e5                                      ldr r0, [sp, #0x24]
006488f4  00 20 a0 e3                                      mov r2, #0
006488f8  0c b0 8b e0                                      add fp, fp, ip
006488fc  0f e0 a0 e1                                      mov lr, pc
00648900  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00648904  90 60 9d e5                                      ldr r6, [sp, #0x90]
00648908  00 00 56 e3                                      cmp r6, #0
0064890c  01 00 00 0a                                      beq #0x648918
00648910  06 00 a0 e1                                      mov r0, r6
00648914  1a 53 f3 eb                                      bl #0x31d584
00648918  18 00 96 e5                                      ldr r0, [r6, #0x18]
0064891c  01 10 a0 e3                                      mov r1, #1
00648920  6d 64 fd eb                                      bl #0x5a1adc
00648924  1c 20 96 e5                                      ldr r2, [r6, #0x1c]
00648928  20 30 96 e5                                      ldr r3, [r6, #0x20]
0064892c  02 00 80 e0                                      add r0, r0, r2
00648930  83 30 80 e0                                      add r3, r0, r3, lsl #1
00648934  00 00 53 e1                                      cmp r3, r0
00648938  0c 00 00 0a                                      beq #0x648970
0064893c  02 20 80 e2                                      add r2, r0, #2
00648940  03 30 62 e0                                      rsb r3, r2, r3
00648944  01 c0 c3 e3                                      bic ip, r3, #1
00648948  02 c0 8c e2                                      add ip, ip, #2
0064894c  79 10 ff e6                                      uxth r1, sb
00648950  00 30 a0 e3                                      mov r3, #0
00648954  b3 20 90 e1                                      ldrh r2, [r0, r3]
00648958  02 20 81 e0                                      add r2, r1, r2
0064895c  b3 20 84 e1                                      strh r2, [r4, r3]
00648960  02 30 83 e2                                      add r3, r3, #2
00648964  0c 00 53 e1                                      cmp r3, ip
00648968  f9 ff ff 1a                                      bne #0x648954
0064896c  03 40 84 e0                                      add r4, r4, r3
00648970  00 00 50 e3                                      cmp r0, #0
00648974  08 00 00 0a                                      beq #0x64899c
00648978  18 60 96 e5                                      ldr r6, [r6, #0x18]
0064897c  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
00648980  1f 20 03 e2                                      and r2, r3, #0x1f
00648984  01 00 52 e3                                      cmp r2, #1
00648988  5f 00 00 9a                                      bls #0x648b0c
0064898c  01 20 42 e2                                      sub r2, r2, #1
00648990  1f 30 c3 e3                                      bic r3, r3, #0x1f
00648994  03 30 82 e1                                      orr r3, r2, r3
00648998  13 30 c6 e5                                      strb r3, [r6, #0x13]
0064899c  00 30 95 e5                                      ldr r3, [r5]
006489a0  08 20 95 e5                                      ldr r2, [r5, #8]
006489a4  01 30 43 e2                                      sub r3, r3, #1
006489a8  00 00 53 e3                                      cmp r3, #0
006489ac  02 90 89 e0                                      add sb, sb, r2
006489b0  00 30 85 e5                                      str r3, [r5]
006489b4  4f 00 00 0a                                      beq #0x648af8
006489b8  04 70 87 e2                                      add r7, r7, #4
006489bc  0a 00 57 e1                                      cmp r7, sl
006489c0  96 ff ff 1a                                      bne #0x648820
006489c4  34 a0 9d e5                                      ldr sl, [sp, #0x34]
006489c8  30 10 9d e5                                      ldr r1, [sp, #0x30]
006489cc  00 00 51 e3                                      cmp r1, #0
006489d0  09 00 00 0a                                      beq #0x6489fc
006489d4  28 20 9d e5                                      ldr r2, [sp, #0x28]
006489d8  18 40 92 e5                                      ldr r4, [r2, #0x18]
006489dc  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006489e0  1f 20 03 e2                                      and r2, r3, #0x1f
006489e4  01 00 52 e3                                      cmp r2, #1
006489e8  88 00 00 9a                                      bls #0x648c10
006489ec  01 20 42 e2                                      sub r2, r2, #1
006489f0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006489f4  03 30 82 e1                                      orr r3, r2, r3
006489f8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006489fc  a8 40 9d e5                                      ldr r4, [sp, #0xa8]
00648a00  00 00 54 e3                                      cmp r4, #0
00648a04  df fe ff 0a                                      beq #0x648588
00648a08  00 30 94 e5                                      ldr r3, [r4]
00648a0c  01 30 43 e2                                      sub r3, r3, #1
00648a10  00 00 53 e3                                      cmp r3, #0
00648a14  00 30 84 e5                                      str r3, [r4]
00648a18  da fe ff 1a                                      bne #0x648588
00648a1c  04 00 a0 e1                                      mov r0, r4
00648a20  fd 5f fd eb                                      bl #0x5a0a1c
00648a24  04 00 a0 e1                                      mov r0, r4
00648a28  20 16 f3 eb                                      bl #0x30e2b0
00648a2c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00648a30  20 a0 8a e2                                      add sl, sl, #0x20
00648a34  03 00 5a e1                                      cmp sl, r3
00648a38  d6 fe ff 1a                                      bne #0x648598
00648a3c  00 50 a0 e3                                      mov r5, #0
00648a40  38 00 9d e5                                      ldr r0, [sp, #0x38]
00648a44  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00648a48  34 21 9d e5                                      ldr r2, [sp, #0x134]
00648a4c  0c 30 90 e7                                      ldr r3, [r0, ip]
00648a50  05 00 a0 e1                                      mov r0, r5
00648a54  00 30 93 e5                                      ldr r3, [r3]
00648a58  03 00 52 e1                                      cmp r2, r3
00648a5c  ca 00 00 1a                                      bne #0x648d8c
00648a60  4f df 8d e2                                      add sp, sp, #0x13c
00648a64  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00648a68  07 00 a0 e1                                      mov r0, r7
00648a6c  c8 f7 ff eb                                      bl #0x646994
00648a70  07 10 a0 e1                                      mov r1, r7
00648a74  05 00 a0 e1                                      mov r0, r5
00648a78  52 fc ff eb                                      bl #0x647bc8
00648a7c  07 00 a0 e1                                      mov r0, r7
00648a80  f8 fb ff eb                                      bl #0x647a68
00648a84  34 00 94 e5                                      ldr r0, [r4, #0x34]
00648a88  20 60 40 e2                                      sub r6, r0, #0x20
00648a8c  10 10 96 e5                                      ldr r1, [r6, #0x10]
00648a90  14 30 96 e5                                      ldr r3, [r6, #0x14]
00648a94  03 00 51 e1                                      cmp r1, r3
00648a98  32 00 00 0a                                      beq #0x648b68
00648a9c  ac 30 9d e5                                      ldr r3, [sp, #0xac]
00648aa0  00 30 81 e5                                      str r3, [r1]
00648aa4  10 30 96 e5                                      ldr r3, [r6, #0x10]
00648aa8  04 30 83 e2                                      add r3, r3, #4
00648aac  10 30 86 e5                                      str r3, [r6, #0x10]
00648ab0  a8 20 9d e5                                      ldr r2, [sp, #0xa8]
00648ab4  8c 20 8d e5                                      str r2, [sp, #0x8c]
00648ab8  00 00 52 e3                                      cmp r2, #0
00648abc  00 30 92 15                                      ldrne r3, [r2]
00648ac0  01 30 83 12                                      addne r3, r3, #1
00648ac4  00 30 82 15                                      strne r3, [r2]
00648ac8  8c 20 9d 15                                      ldrne r2, [sp, #0x8c]
00648acc  04 30 96 e5                                      ldr r3, [r6, #4]
00648ad0  18 00 9d e5                                      ldr r0, [sp, #0x18]
00648ad4  8c 30 8d e5                                      str r3, [sp, #0x8c]
00648ad8  04 20 86 e5                                      str r2, [r6, #4]
00648adc  41 20 f3 eb                                      bl #0x310be8
00648ae0  08 00 a0 e1                                      mov r0, r8
00648ae4  00 30 98 e5                                      ldr r3, [r8]
00648ae8  0f e0 a0 e1                                      mov lr, pc
00648aec  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00648af0  1c 00 c6 e5                                      strb r0, [r6, #0x1c]
00648af4  86 fe ff ea                                      b #0x648514
00648af8  05 00 a0 e1                                      mov r0, r5
00648afc  c6 5f fd eb                                      bl #0x5a0a1c
00648b00  05 00 a0 e1                                      mov r0, r5
00648b04  e9 15 f3 eb                                      bl #0x30e2b0
00648b08  aa ff ff ea                                      b #0x6489b8
00648b0c  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
00648b10  20 00 13 e3                                      tst r3, #0x20
00648b14  06 00 00 1a                                      bne #0x648b34
00648b18  00 00 a0 e3                                      mov r0, #0
00648b1c  13 00 c6 e5                                      strb r0, [r6, #0x13]
00648b20  9d ff ff ea                                      b #0x64899c
00648b24  00 20 e0 e3                                      mvn r2, #0
00648b28  a4 62 fd eb                                      bl #0x5a15c0
00648b2c  28 00 8d e5                                      str r0, [sp, #0x28]
00648b30  f4 fe ff ea                                      b #0x648708
00648b34  00 30 96 e5                                      ldr r3, [r6]
00648b38  06 00 a0 e1                                      mov r0, r6
00648b3c  0f e0 a0 e1                                      mov lr, pc
00648b40  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00648b44  f3 ff ff ea                                      b #0x648b18
00648b48  0a 00 a0 e1                                      mov r0, sl
00648b4c  87 fb ff eb                                      bl #0x647970
00648b50  00 00 50 e3                                      cmp r0, #0
00648b54  8d 00 00 1a                                      bne #0x648d90
00648b58  00 20 9a e5                                      ldr r2, [sl]
00648b5c  28 20 8d e5                                      str r2, [sp, #0x28]
00648b60  18 00 92 e5                                      ldr r0, [r2, #0x18]
00648b64  1e ff ff ea                                      b #0x6487e4
00648b68  14 00 40 e2                                      sub r0, r0, #0x14
00648b6c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00648b70  52 fb ff eb                                      bl #0x6478c0
00648b74  cd ff ff ea                                      b #0x648ab0
00648b78  0c 00 89 e2                                      add r0, sb, #0xc
00648b7c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00648b80  4e fb ff eb                                      bl #0x6478c0
00648b84  62 fe ff ea                                      b #0x648514
00648b88  18 30 9a e5                                      ldr r3, [sl, #0x18]
00648b8c  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00648b90  03 00 51 e1                                      cmp r1, r3
00648b94  23 00 00 8a                                      bhi #0x648c28
00648b98  00 10 9a e5                                      ldr r1, [sl]
00648b9c  28 10 8d e5                                      str r1, [sp, #0x28]
00648ba0  18 00 91 e5                                      ldr r0, [r1, #0x18]
00648ba4  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00648ba8  03 00 52 e1                                      cmp r2, r3
00648bac  0c ff ff 9a                                      bls #0x6487e4
00648bb0  ec 11 9f e5                                      ldr r1, [pc, #0x1ec]
00648bb4  b4 40 8d e2                                      add r4, sp, #0xb4
00648bb8  04 00 a0 e1                                      mov r0, r4
00648bbc  01 10 8f e0                                      add r1, pc, r1
00648bc0  c7 17 f3 eb                                      bl #0x30eae4
00648bc4  dc 01 9f e5                                      ldr r0, [pc, #0x1dc]
00648bc8  04 10 a0 e1                                      mov r1, r4
00648bcc  03 20 a0 e3                                      mov r2, #3
00648bd0  00 00 8f e0                                      add r0, pc, r0
00648bd4  43 08 ff eb                                      bl #0x60ace8
00648bd8  02 50 a0 e3                                      mov r5, #2
00648bdc  a8 40 9d e5                                      ldr r4, [sp, #0xa8]
00648be0  00 00 54 e3                                      cmp r4, #0
00648be4  95 ff ff 0a                                      beq #0x648a40
00648be8  00 30 94 e5                                      ldr r3, [r4]
00648bec  01 30 43 e2                                      sub r3, r3, #1
00648bf0  00 00 53 e3                                      cmp r3, #0
00648bf4  00 30 84 e5                                      str r3, [r4]
00648bf8  90 ff ff 1a                                      bne #0x648a40
00648bfc  04 00 a0 e1                                      mov r0, r4
00648c00  85 5f fd eb                                      bl #0x5a0a1c
00648c04  04 00 a0 e1                                      mov r0, r4
00648c08  a8 15 f3 eb                                      bl #0x30e2b0
00648c0c  8b ff ff ea                                      b #0x648a40
00648c10  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00648c14  20 00 13 e3                                      tst r3, #0x20
00648c18  56 00 00 1a                                      bne #0x648d78
00648c1c  00 30 a0 e3                                      mov r3, #0
00648c20  13 30 c4 e5                                      strb r3, [r4, #0x13]
00648c24  74 ff ff ea                                      b #0x6489fc
00648c28  01 20 a0 e1                                      mov r2, r1
00648c2c  78 11 9f e5                                      ldr r1, [pc, #0x178]
00648c30  b4 40 8d e2                                      add r4, sp, #0xb4
00648c34  04 00 a0 e1                                      mov r0, r4
00648c38  01 10 8f e0                                      add r1, pc, r1
00648c3c  a8 17 f3 eb                                      bl #0x30eae4
00648c40  68 01 9f e5                                      ldr r0, [pc, #0x168]
00648c44  04 10 a0 e1                                      mov r1, r4
00648c48  03 20 a0 e3                                      mov r2, #3
00648c4c  00 00 8f e0                                      add r0, pc, r0
00648c50  24 08 ff eb                                      bl #0x60ace8
00648c54  df ff ff ea                                      b #0x648bd8
00648c58  04 30 9a e5                                      ldr r3, [sl, #4]
00648c5c  01 40 a0 e3                                      mov r4, #1
00648c60  04 20 a0 e1                                      mov r2, r4
00648c64  04 10 93 e5                                      ldr r1, [r3, #4]
00648c68  9c 00 8d e2                                      add r0, sp, #0x9c
00648c6c  04 30 a0 e3                                      mov r3, #4
00648c70  04 c0 91 e5                                      ldr ip, [r1, #4]
00648c74  0c 10 a0 e1                                      mov r1, ip
00648c78  00 c0 9c e5                                      ldr ip, [ip]
00648c7c  04 e0 8d e5                                      str lr, [sp, #4]
00648c80  00 e0 8d e5                                      str lr, [sp]
00648c84  08 40 8d e5                                      str r4, [sp, #8]
00648c88  0f e0 a0 e1                                      mov lr, pc
00648c8c  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00648c90  9c 40 9d e5                                      ldr r4, [sp, #0x9c]
00648c94  00 10 a0 e3                                      mov r1, #0
00648c98  38 00 a0 e3                                      mov r0, #0x38
00648c9c  00 00 54 e3                                      cmp r4, #0
00648ca0  04 30 94 15                                      ldrne r3, [r4, #4]
00648ca4  01 30 83 12                                      addne r3, r3, #1
00648ca8  04 30 84 15                                      strne r3, [r4, #4]
00648cac  3e ad fb eb                                      bl #0x5341ac
00648cb0  38 20 9d e5                                      ldr r2, [sp, #0x38]
00648cb4  00 30 a0 e1                                      mov r3, r0
00648cb8  44 00 9d e5                                      ldr r0, [sp, #0x44]
00648cbc  06 c0 a0 e3                                      mov ip, #6
00648cc0  00 10 92 e7                                      ldr r1, [r2, r0]
00648cc4  00 20 a0 e3                                      mov r2, #0
00648cc8  04 20 83 e5                                      str r2, [r3, #4]
00648ccc  08 10 81 e2                                      add r1, r1, #8
00648cd0  00 10 83 e5                                      str r1, [r3]
00648cd4  10 20 83 e5                                      str r2, [r3, #0x10]
00648cd8  08 20 83 e5                                      str r2, [r3, #8]
00648cdc  0c 20 83 e5                                      str r2, [r3, #0xc]
00648ce0  a8 20 9d e5                                      ldr r2, [sp, #0xa8]
00648ce4  01 00 a0 e3                                      mov r0, #1
00648ce8  14 20 83 e5                                      str r2, [r3, #0x14]
00648cec  00 00 52 e3                                      cmp r2, #0
00648cf0  00 10 92 15                                      ldrne r1, [r2]
00648cf4  01 10 81 12                                      addne r1, r1, #1
00648cf8  00 10 82 15                                      strne r1, [r2]
00648cfc  00 00 54 e3                                      cmp r4, #0
00648d00  18 40 83 e5                                      str r4, [r3, #0x18]
00648d04  04 20 94 15                                      ldrne r2, [r4, #4]
00648d08  01 20 82 12                                      addne r2, r2, #1
00648d0c  04 20 84 15                                      strne r2, [r4, #4]
00648d10  04 10 93 e5                                      ldr r1, [r3, #4]
00648d14  00 20 a0 e3                                      mov r2, #0
00648d18  30 20 83 e5                                      str r2, [r3, #0x30]
00648d1c  01 10 81 e2                                      add r1, r1, #1
00648d20  34 00 c3 e5                                      strb r0, [r3, #0x34]
00648d24  04 10 83 e5                                      str r1, [r3, #4]
00648d28  1c 20 83 e5                                      str r2, [r3, #0x1c]
00648d2c  20 90 83 e5                                      str sb, [r3, #0x20]
00648d30  24 20 83 e5                                      str r2, [r3, #0x24]
00648d34  28 70 83 e5                                      str r7, [r3, #0x28]
00648d38  bc 02 c3 e1                                      strh r0, [r3, #0x2c]
00648d3c  be c2 c3 e1                                      strh ip, [r3, #0x2e]
00648d40  00 00 9a e5                                      ldr r0, [sl]
00648d44  00 30 8a e5                                      str r3, [sl]
00648d48  02 00 50 e1                                      cmp r0, r2
00648d4c  00 00 00 0a                                      beq #0x648d54
00648d50  0b 52 f3 eb                                      bl #0x31d584
00648d54  00 00 54 e3                                      cmp r4, #0
00648d58  01 00 00 0a                                      beq #0x648d64
00648d5c  04 00 a0 e1                                      mov r0, r4
00648d60  07 52 f3 eb                                      bl #0x31d584
00648d64  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
00648d68  00 00 50 e3                                      cmp r0, #0
00648d6c  8f fe ff 0a                                      beq #0x6487b0
00648d70  03 52 f3 eb                                      bl #0x31d584
00648d74  8d fe ff ea                                      b #0x6487b0
00648d78  00 30 94 e5                                      ldr r3, [r4]
00648d7c  04 00 a0 e1                                      mov r0, r4
00648d80  0f e0 a0 e1                                      mov lr, pc
00648d84  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00648d88  a3 ff ff ea                                      b #0x648c1c
00648d8c  5f 15 f3 eb                                      bl #0x30e310
00648d90  00 50 a0 e1                                      mov r5, r0
00648d94  90 ff ff ea                                      b #0x648bdc
; mapping-symbol data/literal pool
00648d98  b8 c6 34 00 ac 40 00 00 54 0c 00 00 24 ca 29 00  .byte 0xb8, 0xc6, 0x34, 0x00, 0xac, 0x40, 0x00, 0x00, 0x54, 0x0c, 0x00, 0x00, 0x24, 0xca, 0x29, 0x00
00648da8  00 ca 29 00 a8 c9 29 00 84 c9 29 00              .byte 0x00, 0xca, 0x29, 0x00, 0xa8, 0xc9, 0x29, 0x00, 0x84, 0xc9, 0x29, 0x00

; FUNCTION 0x00648db4, declared_size=100, range_size=100, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh9setModuleEjRKN5boost13intrusive_ptrINS0_12ISkinnedMeshEEE
; demangled: glitch::collada::CModularSkinnedMesh::setModule(unsigned int, boost::intrusive_ptr<glitch::collada::ISkinnedMesh> const&)
; decoder-mode: arm
00648db4  10 40 2d e9                                      push {r4, lr}
00648db8  24 30 90 e5                                      ldr r3, [r0, #0x24]
00648dbc  00 40 a0 e1                                      mov r4, r0
00648dc0  00 20 92 e5                                      ldr r2, [r2]
00648dc4  81 31 83 e0                                      add r3, r3, r1, lsl #3
00648dc8  04 00 93 e5                                      ldr r0, [r3, #4]
00648dcc  02 00 50 e1                                      cmp r0, r2
00648dd0  0e 00 00 0a                                      beq #0x648e10
00648dd4  00 00 52 e3                                      cmp r2, #0
00648dd8  04 10 92 15                                      ldrne r1, [r2, #4]
00648ddc  01 10 81 12                                      addne r1, r1, #1
00648de0  04 10 82 15                                      strne r1, [r2, #4]
00648de4  04 00 93 15                                      ldrne r0, [r3, #4]
00648de8  04 20 83 e5                                      str r2, [r3, #4]
00648dec  00 00 50 e3                                      cmp r0, #0
00648df0  00 00 00 0a                                      beq #0x648df8
00648df4  e2 51 f3 eb                                      bl #0x31d584
00648df8  14 10 94 e5                                      ldr r1, [r4, #0x14]
00648dfc  04 00 a0 e1                                      mov r0, r4
00648e00  01 10 21 e2                                      eor r1, r1, #1
00648e04  01 10 01 e2                                      and r1, r1, #1
00648e08  10 40 bd e8                                      pop {r4, lr}
00648e0c  6d fd ff ea                                      b #0x6483c8
00648e10  00 00 a0 e3                                      mov r0, #0
00648e14  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00648e18, declared_size=284, range_size=284, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh14setModuleCountEjb
; demangled: glitch::collada::CModularSkinnedMesh::setModuleCount(unsigned int, bool)
; decoder-mode: arm
00648e18  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00648e1c  24 80 90 e5                                      ldr r8, [r0, #0x24]
00648e20  28 60 90 e5                                      ldr r6, [r0, #0x28]
00648e24  0c d0 4d e2                                      sub sp, sp, #0xc
00648e28  00 40 a0 e1                                      mov r4, r0
00648e2c  06 60 68 e0                                      rsb r6, r8, r6
00648e30  c6 61 a0 e1                                      asr r6, r6, #3
00648e34  06 00 51 e1                                      cmp r1, r6
00648e38  01 50 a0 e1                                      mov r5, r1
00648e3c  02 70 a0 e1                                      mov r7, r2
00648e40  10 00 00 2a                                      bhs #0x648e88
00648e44  81 91 a0 e1                                      lsl sb, r1, #3
00648e48  01 a0 a0 e1                                      mov sl, r1
00648e4c  00 b0 e0 e3                                      mvn fp, #0
00648e50  00 00 00 ea                                      b #0x648e58
00648e54  24 80 94 e5                                      ldr r8, [r4, #0x24]
00648e58  09 80 88 e0                                      add r8, r8, sb
00648e5c  04 00 98 e5                                      ldr r0, [r8, #4]
00648e60  00 30 a0 e3                                      mov r3, #0
00648e64  01 a0 8a e2                                      add sl, sl, #1
00648e68  03 00 50 e1                                      cmp r0, r3
00648e6c  04 30 88 e5                                      str r3, [r8, #4]
00648e70  00 00 00 0a                                      beq #0x648e78
00648e74  c2 51 f3 eb                                      bl #0x31d584
00648e78  06 00 5a e1                                      cmp sl, r6
00648e7c  00 b0 88 e5                                      str fp, [r8]
00648e80  08 90 89 e2                                      add sb, sb, #8
00648e84  f2 ff ff 3a                                      blo #0x648e54
00648e88  00 30 e0 e3                                      mvn r3, #0
00648e8c  24 00 84 e2                                      add r0, r4, #0x24
00648e90  00 30 8d e5                                      str r3, [sp]
00648e94  05 10 a0 e1                                      mov r1, r5
00648e98  00 30 a0 e3                                      mov r3, #0
00648e9c  0d 20 a0 e1                                      mov r2, sp
00648ea0  04 30 8d e5                                      str r3, [sp, #4]
00648ea4  1e fa ff eb                                      bl #0x647724
00648ea8  04 00 9d e5                                      ldr r0, [sp, #4]
00648eac  00 00 50 e3                                      cmp r0, #0
00648eb0  00 00 00 0a                                      beq #0x648eb8
00648eb4  b2 51 f3 eb                                      bl #0x31d584
00648eb8  06 00 55 e1                                      cmp r5, r6
00648ebc  0f 00 00 9a                                      bls #0x648f00
00648ec0  86 91 a0 e1                                      lsl sb, r6, #3
00648ec4  06 a0 a0 e1                                      mov sl, r6
00648ec8  00 b0 e0 e3                                      mvn fp, #0
00648ecc  24 80 94 e5                                      ldr r8, [r4, #0x24]
00648ed0  00 30 a0 e3                                      mov r3, #0
00648ed4  01 a0 8a e2                                      add sl, sl, #1
00648ed8  09 80 88 e0                                      add r8, r8, sb
00648edc  04 00 98 e5                                      ldr r0, [r8, #4]
00648ee0  08 90 89 e2                                      add sb, sb, #8
00648ee4  04 30 88 e5                                      str r3, [r8, #4]
00648ee8  03 00 50 e1                                      cmp r0, r3
00648eec  00 00 00 0a                                      beq #0x648ef4
00648ef0  a3 51 f3 eb                                      bl #0x31d584
00648ef4  0a 00 55 e1                                      cmp r5, sl
00648ef8  00 b0 88 e5                                      str fp, [r8]
00648efc  f2 ff ff 8a                                      bhi #0x648ecc
00648f00  00 00 57 e3                                      cmp r7, #0
00648f04  01 00 00 0a                                      beq #0x648f10
00648f08  06 00 55 e1                                      cmp r5, r6
00648f0c  02 00 00 3a                                      blo #0x648f1c
00648f10  00 00 a0 e3                                      mov r0, #0
00648f14  0c d0 8d e2                                      add sp, sp, #0xc
00648f18  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00648f1c  14 10 94 e5                                      ldr r1, [r4, #0x14]
00648f20  04 00 a0 e1                                      mov r0, r4
00648f24  01 10 21 e2                                      eor r1, r1, #1
00648f28  01 10 01 e2                                      and r1, r1, #1
00648f2c  25 fd ff eb                                      bl #0x6483c8
00648f30  f7 ff ff ea                                      b #0x648f14

; FUNCTION 0x00648f34, declared_size=156, range_size=156, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh10setModulesEPKN5boost13intrusive_ptrINS0_12ISkinnedMeshEEEj
; demangled: glitch::collada::CModularSkinnedMesh::setModules(boost::intrusive_ptr<glitch::collada::ISkinnedMesh> const*, unsigned int)
; decoder-mode: arm
00648f34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00648f38  00 50 52 e2                                      subs r5, r2, #0
00648f3c  01 60 a0 e1                                      mov r6, r1
00648f40  00 40 a0 e1                                      mov r4, r0
00648f44  1d 00 00 1a                                      bne #0x648fc0
00648f48  28 50 90 e5                                      ldr r5, [r0, #0x28]
00648f4c  24 30 90 e5                                      ldr r3, [r0, #0x24]
00648f50  05 50 63 e0                                      rsb r5, r3, r5
00648f54  c5 51 a0 e1                                      asr r5, r5, #3
00648f58  05 10 a0 e1                                      mov r1, r5
00648f5c  ad ff ff eb                                      bl #0x648e18
00648f60  00 00 55 e3                                      cmp r5, #0
00648f64  0f 00 00 0a                                      beq #0x648fa8
00648f68  00 70 a0 e3                                      mov r7, #0
00648f6c  07 31 96 e7                                      ldr r3, [r6, r7, lsl #2]
00648f70  24 20 94 e5                                      ldr r2, [r4, #0x24]
00648f74  00 00 53 e3                                      cmp r3, #0
00648f78  04 10 93 15                                      ldrne r1, [r3, #4]
00648f7c  87 21 82 e0                                      add r2, r2, r7, lsl #3
00648f80  01 70 87 e2                                      add r7, r7, #1
00648f84  01 10 81 12                                      addne r1, r1, #1
00648f88  04 10 83 15                                      strne r1, [r3, #4]
00648f8c  04 00 92 e5                                      ldr r0, [r2, #4]
00648f90  04 30 82 e5                                      str r3, [r2, #4]
00648f94  00 00 50 e3                                      cmp r0, #0
00648f98  00 00 00 0a                                      beq #0x648fa0
00648f9c  78 51 f3 eb                                      bl #0x31d584
00648fa0  05 00 57 e1                                      cmp r7, r5
00648fa4  f0 ff ff 3a                                      blo #0x648f6c
00648fa8  14 10 94 e5                                      ldr r1, [r4, #0x14]
00648fac  04 00 a0 e1                                      mov r0, r4
00648fb0  01 10 21 e2                                      eor r1, r1, #1
00648fb4  01 10 01 e2                                      and r1, r1, #1
00648fb8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00648fbc  01 fd ff ea                                      b #0x6483c8
00648fc0  05 10 a0 e1                                      mov r1, r5
00648fc4  00 20 a0 e3                                      mov r2, #0
00648fc8  92 ff ff eb                                      bl #0x648e18
00648fcc  e5 ff ff ea                                      b #0x648f68

; FUNCTION 0x00648fd0, declared_size=276, range_size=276, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh17setCategoryModuleEiib
; demangled: glitch::collada::CModularSkinnedMesh::setCategoryModule(int, int, bool)
; decoder-mode: arm
00648fd0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00648fd4  24 50 90 e5                                      ldr r5, [r0, #0x24]
00648fd8  01 40 a0 e1                                      mov r4, r1
00648fdc  f8 a0 9f e5                                      ldr sl, [pc, #0xf8]
00648fe0  81 11 95 e7                                      ldr r1, [r5, r1, lsl #3]
00648fe4  10 d0 4d e2                                      sub sp, sp, #0x10
00648fe8  0a a0 8f e0                                      add sl, pc, sl
00648fec  02 00 51 e1                                      cmp r1, r2
00648ff0  00 60 a0 e1                                      mov r6, r0
00648ff4  02 70 a0 e1                                      mov r7, r2
00648ff8  03 90 a0 e1                                      mov sb, r3
00648ffc  84 81 85 e0                                      add r8, r5, r4, lsl #3
00649000  2d 00 00 0a                                      beq #0x6490bc
00649004  04 00 98 e5                                      ldr r0, [r8, #4]
00649008  00 00 50 e3                                      cmp r0, #0
0064900c  04 00 00 0a                                      beq #0x649024
00649010  00 30 a0 e3                                      mov r3, #0
00649014  04 30 88 e5                                      str r3, [r8, #4]
00649018  59 51 f3 eb                                      bl #0x31d584
0064901c  00 30 e0 e3                                      mvn r3, #0
00649020  84 31 85 e7                                      str r3, [r5, r4, lsl #3]
00649024  01 00 77 e3                                      cmn r7, #1
00649028  21 00 00 0a                                      beq #0x6490b4
0064902c  ac 20 9f e5                                      ldr r2, [pc, #0xac]
00649030  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
00649034  20 c0 96 e5                                      ldr ip, [r6, #0x20]
00649038  02 20 9a e7                                      ldr r2, [sl, r2]
0064903c  04 30 93 e5                                      ldr r3, [r3, #4]
00649040  0c 00 8d e2                                      add r0, sp, #0xc
00649044  00 20 92 e5                                      ldr r2, [r2]
00649048  04 32 83 e0                                      add r3, r3, r4, lsl #4
0064904c  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00649050  20 20 92 e5                                      ldr r2, [r2, #0x20]
00649054  0c 10 86 e2                                      add r1, r6, #0xc
00649058  87 31 83 e0                                      add r3, r3, r7, lsl #3
0064905c  04 30 93 e5                                      ldr r3, [r3, #4]
00649060  10 20 92 e5                                      ldr r2, [r2, #0x10]
00649064  00 c0 8d e5                                      str ip, [sp]
00649068  01 c0 a0 e3                                      mov ip, #1
0064906c  04 c0 8d e5                                      str ip, [sp, #4]
00649070  1c 47 ff eb                                      bl #0x61ace8
00649074  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00649078  00 00 53 e3                                      cmp r3, #0
0064907c  0c 00 00 0a                                      beq #0x6490b4
00649080  04 20 93 e5                                      ldr r2, [r3, #4]
00649084  01 20 82 e2                                      add r2, r2, #1
00649088  04 20 83 e5                                      str r2, [r3, #4]
0064908c  04 00 98 e5                                      ldr r0, [r8, #4]
00649090  04 30 88 e5                                      str r3, [r8, #4]
00649094  00 00 50 e3                                      cmp r0, #0
00649098  00 00 00 0a                                      beq #0x6490a0
0064909c  38 51 f3 eb                                      bl #0x31d584
006490a0  84 71 85 e7                                      str r7, [r5, r4, lsl #3]
006490a4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006490a8  00 00 50 e3                                      cmp r0, #0
006490ac  00 00 00 0a                                      beq #0x6490b4
006490b0  33 51 f3 eb                                      bl #0x31d584
006490b4  00 00 59 e3                                      cmp sb, #0
006490b8  01 00 00 1a                                      bne #0x6490c4
006490bc  10 d0 8d e2                                      add sp, sp, #0x10
006490c0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006490c4  14 10 96 e5                                      ldr r1, [r6, #0x14]
006490c8  06 00 a0 e1                                      mov r0, r6
006490cc  01 10 21 e2                                      eor r1, r1, #1
006490d0  01 10 01 e2                                      and r1, r1, #1
006490d4  bb fc ff eb                                      bl #0x6483c8
006490d8  f7 ff ff ea                                      b #0x6490bc
; mapping-symbol data/literal pool
006490dc  a8 ba 34 00 48 44 00 00                          .byte 0xa8, 0xba, 0x34, 0x00, 0x48, 0x44, 0x00, 0x00

; FUNCTION 0x006490e4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMesh17setCategoryModuleEPKcS3_b
; demangled: glitch::collada::CModularSkinnedMesh::setCategoryModule(char const*, char const*, bool)
; decoder-mode: arm
006490e4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006490e8  02 60 a0 e1                                      mov r6, r2
006490ec  00 40 a0 e1                                      mov r4, r0
006490f0  03 50 a0 e1                                      mov r5, r3
006490f4  0f f9 ff eb                                      bl #0x647538
006490f8  06 10 a0 e1                                      mov r1, r6
006490fc  00 70 a0 e1                                      mov r7, r0
00649100  04 00 a0 e1                                      mov r0, r4
00649104  eb f8 ff eb                                      bl #0x6474b8
00649108  07 10 a0 e1                                      mov r1, r7
0064910c  00 20 a0 e1                                      mov r2, r0
00649110  05 30 a0 e1                                      mov r3, r5
00649114  04 00 a0 e1                                      mov r0, r4
00649118  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0064911c  ab ff ff ea                                      b #0x648fd0

; FUNCTION 0x00649120, declared_size=364, range_size=364, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMeshC1ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE
; demangled: glitch::collada::CModularSkinnedMesh::CModularSkinnedMesh(glitch::collada::CColladaDatabase const&, glitch::collada::SInstanceModularSkin*, glitch::collada::CRootSceneNode*, int, bool, glitch::video::IVideoDriver*)
; decoder-mode: arm
00649120  54 c1 9f e5                                      ldr ip, [pc, #0x154]
00649124  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00649128  50 e1 9f e5                                      ldr lr, [pc, #0x150]
0064912c  0c c0 8f e0                                      add ip, pc, ip
00649130  00 40 a0 e1                                      mov r4, r0
00649134  0e e0 9c e7                                      ldr lr, [ip, lr]
00649138  00 00 a0 e3                                      mov r0, #0
0064913c  04 00 84 e5                                      str r0, [r4, #4]
00649140  08 e0 8e e2                                      add lr, lr, #8
00649144  00 e0 84 e5                                      str lr, [r4]
00649148  00 00 91 e5                                      ldr r0, [r1]
0064914c  0c 00 84 e5                                      str r0, [r4, #0xc]
00649150  04 10 91 e5                                      ldr r1, [r1, #4]
00649154  00 00 50 e3                                      cmp r0, #0
00649158  10 10 84 e5                                      str r1, [r4, #0x10]
0064915c  1c 70 dd e5                                      ldrb r7, [sp, #0x1c]
00649160  03 00 00 0a                                      beq #0x649174
00649164  04 10 90 e5                                      ldr r1, [r0, #4]
00649168  00 00 51 e3                                      cmp r1, #0
0064916c  01 10 81 12                                      addne r1, r1, #1
00649170  04 10 80 15                                      strne r1, [r0, #4]
00649174  08 51 9f e5                                      ldr r5, [pc, #0x108]
00649178  08 11 9f e5                                      ldr r1, [pc, #0x108]
0064917c  bf e4 a0 e3                                      mov lr, #0xbf000000
00649180  05 50 9c e7                                      ldr r5, [ip, r5]
00649184  01 10 9c e7                                      ldr r1, [ip, r1]
00649188  02 e5 8e e2                                      add lr, lr, #0x800000
0064918c  fe 05 a0 e3                                      mov r0, #0x3f800000
00649190  08 60 81 e2                                      add r6, r1, #8
00649194  01 c0 a0 e3                                      mov ip, #1
00649198  00 10 a0 e3                                      mov r1, #0
0064919c  04 50 85 e2                                      add r5, r5, #4
006491a0  08 50 84 e5                                      str r5, [r4, #8]
006491a4  00 60 84 e5                                      str r6, [r4]
006491a8  20 30 84 e5                                      str r3, [r4, #0x20]
006491ac  48 e0 84 e5                                      str lr, [r4, #0x48]
006491b0  54 00 84 e5                                      str r0, [r4, #0x54]
006491b4  58 10 c4 e5                                      strb r1, [r4, #0x58]
006491b8  14 10 84 e5                                      str r1, [r4, #0x14]
006491bc  18 c0 c4 e5                                      strb ip, [r4, #0x18]
006491c0  1c 20 84 e5                                      str r2, [r4, #0x1c]
006491c4  24 10 84 e5                                      str r1, [r4, #0x24]
006491c8  28 10 84 e5                                      str r1, [r4, #0x28]
006491cc  2c 10 84 e5                                      str r1, [r4, #0x2c]
006491d0  30 10 84 e5                                      str r1, [r4, #0x30]
006491d4  34 10 84 e5                                      str r1, [r4, #0x34]
006491d8  38 10 84 e5                                      str r1, [r4, #0x38]
006491dc  3c 10 84 e5                                      str r1, [r4, #0x3c]
006491e0  40 e0 84 e5                                      str lr, [r4, #0x40]
006491e4  44 e0 84 e5                                      str lr, [r4, #0x44]
006491e8  4c 00 84 e5                                      str r0, [r4, #0x4c]
006491ec  50 00 84 e5                                      str r0, [r4, #0x50]
006491f0  59 c0 c4 e5                                      strb ip, [r4, #0x59]
006491f4  00 30 92 e5                                      ldr r3, [r2]
006491f8  08 60 92 e5                                      ldr r6, [r2, #8]
006491fc  18 20 9d e5                                      ldr r2, [sp, #0x18]
00649200  03 60 86 e0                                      add r6, r6, r3
00649204  01 00 52 e1                                      cmp r2, r1
00649208  19 00 00 da                                      ble #0x649274
0064920c  04 00 a0 e1                                      mov r0, r4
00649210  06 10 a0 e1                                      mov r1, r6
00649214  00 20 a0 e3                                      mov r2, #0
00649218  fe fe ff eb                                      bl #0x648e18
0064921c  00 00 56 e3                                      cmp r6, #0
00649220  0e 00 00 0a                                      beq #0x649260
00649224  00 50 a0 e3                                      mov r5, #0
00649228  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0064922c  04 00 a0 e1                                      mov r0, r4
00649230  04 30 93 e5                                      ldr r3, [r3, #4]
00649234  05 32 83 e0                                      add r3, r3, r5, lsl #4
00649238  04 10 93 e5                                      ldr r1, [r3, #4]
0064923c  9d f8 ff eb                                      bl #0x6474b8
00649240  05 10 a0 e1                                      mov r1, r5
00649244  00 20 a0 e1                                      mov r2, r0
00649248  01 50 85 e2                                      add r5, r5, #1
0064924c  04 00 a0 e1                                      mov r0, r4
00649250  00 30 a0 e3                                      mov r3, #0
00649254  5d ff ff eb                                      bl #0x648fd0
00649258  05 00 56 e1                                      cmp r6, r5
0064925c  f1 ff ff 1a                                      bne #0x649228
00649260  07 10 a0 e1                                      mov r1, r7
00649264  04 00 a0 e1                                      mov r0, r4
00649268  56 fc ff eb                                      bl #0x6483c8
0064926c  04 00 a0 e1                                      mov r0, r4
00649270  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00649274  3c c0 84 05                                      streq ip, [r4, #0x3c]
00649278  e3 ff ff ea                                      b #0x64920c
; mapping-symbol data/literal pool
0064927c  64 b9 34 00 40 0a 00 00 b4 17 00 00 38 3a 00 00  .byte 0x64, 0xb9, 0x34, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x38, 0x3a, 0x00, 0x00

; FUNCTION 0x0064928c, declared_size=364, range_size=364, mode=arm
; class-group: glitch::collada::CModularSkinnedMesh
; alias: _ZN6glitch7collada19CModularSkinnedMeshC2ERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeEibPNS_5video12IVideoDriverE
; demangled: glitch::collada::CModularSkinnedMesh::CModularSkinnedMesh(glitch::collada::CColladaDatabase const&, glitch::collada::SInstanceModularSkin*, glitch::collada::CRootSceneNode*, int, bool, glitch::video::IVideoDriver*)
; decoder-mode: arm
0064928c  54 c1 9f e5                                      ldr ip, [pc, #0x154]
00649290  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00649294  50 e1 9f e5                                      ldr lr, [pc, #0x150]
00649298  0c c0 8f e0                                      add ip, pc, ip
0064929c  00 40 a0 e1                                      mov r4, r0
006492a0  0e e0 9c e7                                      ldr lr, [ip, lr]
006492a4  00 00 a0 e3                                      mov r0, #0
006492a8  04 00 84 e5                                      str r0, [r4, #4]
006492ac  08 e0 8e e2                                      add lr, lr, #8
006492b0  00 e0 84 e5                                      str lr, [r4]
006492b4  00 00 91 e5                                      ldr r0, [r1]
006492b8  0c 00 84 e5                                      str r0, [r4, #0xc]
006492bc  04 10 91 e5                                      ldr r1, [r1, #4]
006492c0  00 00 50 e3                                      cmp r0, #0
006492c4  10 10 84 e5                                      str r1, [r4, #0x10]
006492c8  1c 70 dd e5                                      ldrb r7, [sp, #0x1c]
006492cc  03 00 00 0a                                      beq #0x6492e0
006492d0  04 10 90 e5                                      ldr r1, [r0, #4]
006492d4  00 00 51 e3                                      cmp r1, #0
006492d8  01 10 81 12                                      addne r1, r1, #1
006492dc  04 10 80 15                                      strne r1, [r0, #4]
006492e0  08 51 9f e5                                      ldr r5, [pc, #0x108]
006492e4  08 11 9f e5                                      ldr r1, [pc, #0x108]
006492e8  bf e4 a0 e3                                      mov lr, #0xbf000000
006492ec  05 50 9c e7                                      ldr r5, [ip, r5]
006492f0  01 10 9c e7                                      ldr r1, [ip, r1]
006492f4  02 e5 8e e2                                      add lr, lr, #0x800000
006492f8  fe 05 a0 e3                                      mov r0, #0x3f800000
006492fc  08 60 81 e2                                      add r6, r1, #8
00649300  01 c0 a0 e3                                      mov ip, #1
00649304  00 10 a0 e3                                      mov r1, #0
00649308  04 50 85 e2                                      add r5, r5, #4
0064930c  08 50 84 e5                                      str r5, [r4, #8]
00649310  00 60 84 e5                                      str r6, [r4]
00649314  20 30 84 e5                                      str r3, [r4, #0x20]
00649318  48 e0 84 e5                                      str lr, [r4, #0x48]
0064931c  54 00 84 e5                                      str r0, [r4, #0x54]
00649320  58 10 c4 e5                                      strb r1, [r4, #0x58]
00649324  14 10 84 e5                                      str r1, [r4, #0x14]
00649328  18 c0 c4 e5                                      strb ip, [r4, #0x18]
0064932c  1c 20 84 e5                                      str r2, [r4, #0x1c]
00649330  24 10 84 e5                                      str r1, [r4, #0x24]
00649334  28 10 84 e5                                      str r1, [r4, #0x28]
00649338  2c 10 84 e5                                      str r1, [r4, #0x2c]
0064933c  30 10 84 e5                                      str r1, [r4, #0x30]
00649340  34 10 84 e5                                      str r1, [r4, #0x34]
00649344  38 10 84 e5                                      str r1, [r4, #0x38]
00649348  3c 10 84 e5                                      str r1, [r4, #0x3c]
0064934c  40 e0 84 e5                                      str lr, [r4, #0x40]
00649350  44 e0 84 e5                                      str lr, [r4, #0x44]
00649354  4c 00 84 e5                                      str r0, [r4, #0x4c]
00649358  50 00 84 e5                                      str r0, [r4, #0x50]
0064935c  59 c0 c4 e5                                      strb ip, [r4, #0x59]
00649360  00 30 92 e5                                      ldr r3, [r2]
00649364  08 60 92 e5                                      ldr r6, [r2, #8]
00649368  18 20 9d e5                                      ldr r2, [sp, #0x18]
0064936c  03 60 86 e0                                      add r6, r6, r3
00649370  01 00 52 e1                                      cmp r2, r1
00649374  19 00 00 da                                      ble #0x6493e0
00649378  04 00 a0 e1                                      mov r0, r4
0064937c  06 10 a0 e1                                      mov r1, r6
00649380  00 20 a0 e3                                      mov r2, #0
00649384  a3 fe ff eb                                      bl #0x648e18
00649388  00 00 56 e3                                      cmp r6, #0
0064938c  0e 00 00 0a                                      beq #0x6493cc
00649390  00 50 a0 e3                                      mov r5, #0
00649394  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00649398  04 00 a0 e1                                      mov r0, r4
0064939c  04 30 93 e5                                      ldr r3, [r3, #4]
006493a0  05 32 83 e0                                      add r3, r3, r5, lsl #4
006493a4  04 10 93 e5                                      ldr r1, [r3, #4]
006493a8  42 f8 ff eb                                      bl #0x6474b8
006493ac  05 10 a0 e1                                      mov r1, r5
006493b0  00 20 a0 e1                                      mov r2, r0
006493b4  01 50 85 e2                                      add r5, r5, #1
006493b8  04 00 a0 e1                                      mov r0, r4
006493bc  00 30 a0 e3                                      mov r3, #0
006493c0  02 ff ff eb                                      bl #0x648fd0
006493c4  05 00 56 e1                                      cmp r6, r5
006493c8  f1 ff ff 1a                                      bne #0x649394
006493cc  07 10 a0 e1                                      mov r1, r7
006493d0  04 00 a0 e1                                      mov r0, r4
006493d4  fb fb ff eb                                      bl #0x6483c8
006493d8  04 00 a0 e1                                      mov r0, r4
006493dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006493e0  3c c0 84 05                                      streq ip, [r4, #0x3c]
006493e4  e3 ff ff ea                                      b #0x649378
; mapping-symbol data/literal pool
006493e8  f8 b7 34 00 40 0a 00 00 b4 17 00 00 38 3a 00 00  .byte 0xf8, 0xb7, 0x34, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x38, 0x3a, 0x00, 0x00
