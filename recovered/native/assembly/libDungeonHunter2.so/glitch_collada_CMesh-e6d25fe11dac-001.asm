; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00644a3c, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZNK6glitch7collada5CMesh7getTypeEv
; demangled: glitch::collada::CMesh::getType() const
; decoder-mode: arm
00644a3c  00 00 a0 e3                                      mov r0, #0
00644a40  1e ff 2f e1                                      bx lr

; FUNCTION 0x00644a44, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZNK6glitch7collada5CMesh18getMeshBufferCountEv
; demangled: glitch::collada::CMesh::getMeshBufferCount() const
; decoder-mode: arm
00644a44  18 30 90 e5                                      ldr r3, [r0, #0x18]
00644a48  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
00644a4c  02 30 63 e0                                      rsb r3, r3, r2
00644a50  43 31 a0 e1                                      asr r3, r3, #2
00644a54  03 01 83 e0                                      add r0, r3, r3, lsl #2
00644a58  00 02 80 e0                                      add r0, r0, r0, lsl #4
00644a5c  00 04 80 e0                                      add r0, r0, r0, lsl #8
00644a60  00 08 80 e0                                      add r0, r0, r0, lsl #16
00644a64  80 00 83 e0                                      add r0, r3, r0, lsl #1
00644a68  1e ff 2f e1                                      bx lr

; FUNCTION 0x00644a6c, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZNK6glitch7collada5CMesh13getMeshBufferEj
; demangled: glitch::collada::CMesh::getMeshBuffer(unsigned int) const
; decoder-mode: arm
00644a6c  1c c0 91 e5                                      ldr ip, [r1, #0x1c]
00644a70  18 30 91 e5                                      ldr r3, [r1, #0x18]
00644a74  0c c0 63 e0                                      rsb ip, r3, ip
00644a78  4c c1 a0 e1                                      asr ip, ip, #2
00644a7c  0c 11 8c e0                                      add r1, ip, ip, lsl #2
00644a80  01 12 81 e0                                      add r1, r1, r1, lsl #4
00644a84  01 14 81 e0                                      add r1, r1, r1, lsl #8
00644a88  01 18 81 e0                                      add r1, r1, r1, lsl #16
00644a8c  81 c0 8c e0                                      add ip, ip, r1, lsl #1
00644a90  0c 00 52 e1                                      cmp r2, ip
00644a94  08 00 00 2a                                      bhs #0x644abc
00644a98  0c 10 a0 e3                                      mov r1, #0xc
00644a9c  91 02 02 e0                                      mul r2, r1, r2
00644aa0  02 30 93 e7                                      ldr r3, [r3, r2]
00644aa4  00 00 53 e3                                      cmp r3, #0
00644aa8  00 30 80 e5                                      str r3, [r0]
00644aac  04 20 93 15                                      ldrne r2, [r3, #4]
00644ab0  01 20 82 12                                      addne r2, r2, #1
00644ab4  04 20 83 15                                      strne r2, [r3, #4]
00644ab8  1e ff 2f e1                                      bx lr
00644abc  00 30 a0 e3                                      mov r3, #0
00644ac0  00 30 80 e5                                      str r3, [r0]
00644ac4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00644ac8, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZNK6glitch7collada5CMesh11getMaterialEj
; demangled: glitch::collada::CMesh::getMaterial(unsigned int) const
; decoder-mode: arm
00644ac8  1c c0 91 e5                                      ldr ip, [r1, #0x1c]
00644acc  18 30 91 e5                                      ldr r3, [r1, #0x18]
00644ad0  0c c0 63 e0                                      rsb ip, r3, ip
00644ad4  4c c1 a0 e1                                      asr ip, ip, #2
00644ad8  0c 11 8c e0                                      add r1, ip, ip, lsl #2
00644adc  01 12 81 e0                                      add r1, r1, r1, lsl #4
00644ae0  01 14 81 e0                                      add r1, r1, r1, lsl #8
00644ae4  01 18 81 e0                                      add r1, r1, r1, lsl #16
00644ae8  81 c0 8c e0                                      add ip, ip, r1, lsl #1
00644aec  0c 00 52 e1                                      cmp r2, ip
00644af0  08 00 00 2a                                      bhs #0x644b18
00644af4  0c 10 a0 e3                                      mov r1, #0xc
00644af8  91 32 23 e0                                      mla r3, r1, r2, r3
00644afc  04 30 93 e5                                      ldr r3, [r3, #4]
00644b00  00 00 53 e3                                      cmp r3, #0
00644b04  00 30 80 e5                                      str r3, [r0]
00644b08  00 20 93 15                                      ldrne r2, [r3]
00644b0c  01 20 82 12                                      addne r2, r2, #1
00644b10  00 20 83 15                                      strne r2, [r3]
00644b14  1e ff 2f e1                                      bx lr
00644b18  00 30 a0 e3                                      mov r3, #0
00644b1c  00 30 80 e5                                      str r3, [r0]
00644b20  1e ff 2f e1                                      bx lr

; FUNCTION 0x00644b24, declared_size=92, range_size=92, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZNK6glitch7collada5CMesh29getMaterialVertexAttributeMapEj
; demangled: glitch::collada::CMesh::getMaterialVertexAttributeMap(unsigned int) const
; decoder-mode: arm
00644b24  1c c0 91 e5                                      ldr ip, [r1, #0x1c]
00644b28  18 30 91 e5                                      ldr r3, [r1, #0x18]
00644b2c  0c c0 63 e0                                      rsb ip, r3, ip
00644b30  4c c1 a0 e1                                      asr ip, ip, #2
00644b34  0c 11 8c e0                                      add r1, ip, ip, lsl #2
00644b38  01 12 81 e0                                      add r1, r1, r1, lsl #4
00644b3c  01 14 81 e0                                      add r1, r1, r1, lsl #8
00644b40  01 18 81 e0                                      add r1, r1, r1, lsl #16
00644b44  81 c0 8c e0                                      add ip, ip, r1, lsl #1
00644b48  0c 00 52 e1                                      cmp r2, ip
00644b4c  08 00 00 2a                                      bhs #0x644b74
00644b50  0c 10 a0 e3                                      mov r1, #0xc
00644b54  91 32 23 e0                                      mla r3, r1, r2, r3
00644b58  08 30 93 e5                                      ldr r3, [r3, #8]
00644b5c  00 00 53 e3                                      cmp r3, #0
00644b60  00 30 80 e5                                      str r3, [r0]
00644b64  00 20 93 15                                      ldrne r2, [r3]
00644b68  01 20 82 12                                      addne r2, r2, #1
00644b6c  00 20 83 15                                      strne r2, [r3]
00644b70  1e ff 2f e1                                      bx lr
00644b74  00 30 a0 e3                                      mov r3, #0
00644b78  00 30 80 e5                                      str r3, [r0]
00644b7c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00644b80, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZNK6glitch7collada5CMesh14getBoundingBoxEv
; demangled: glitch::collada::CMesh::getBoundingBox() const
; decoder-mode: arm
00644b80  24 00 80 e2                                      add r0, r0, #0x24
00644b84  1e ff 2f e1                                      bx lr

; FUNCTION 0x00644b88, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZN6glitch7collada5CMesh14setBoundingBoxERKNS_4core8aabbox3dIfEE
; demangled: glitch::collada::CMesh::setBoundingBox(glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
00644b88  00 30 91 e5                                      ldr r3, [r1]
00644b8c  24 30 80 e5                                      str r3, [r0, #0x24]
00644b90  04 30 91 e5                                      ldr r3, [r1, #4]
00644b94  28 30 80 e5                                      str r3, [r0, #0x28]
00644b98  08 30 91 e5                                      ldr r3, [r1, #8]
00644b9c  2c 30 80 e5                                      str r3, [r0, #0x2c]
00644ba0  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00644ba4  30 30 80 e5                                      str r3, [r0, #0x30]
00644ba8  10 30 91 e5                                      ldr r3, [r1, #0x10]
00644bac  34 30 80 e5                                      str r3, [r0, #0x34]
00644bb0  14 30 91 e5                                      ldr r3, [r1, #0x14]
00644bb4  38 30 80 e5                                      str r3, [r0, #0x38]
00644bb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00644bdc, declared_size=172, range_size=172, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZN6glitch7collada5CMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS3_INS4_27CMaterialVertexAttributeMapEEE
; demangled: glitch::collada::CMesh::setMaterial(unsigned int, boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&)
; decoder-mode: arm
00644bdc  30 40 2d e9                                      push {r4, r5, lr}
00644be0  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
00644be4  18 00 90 e5                                      ldr r0, [r0, #0x18]
00644be8  03 50 a0 e1                                      mov r5, r3
00644bec  0c d0 4d e2                                      sub sp, sp, #0xc
00644bf0  0c c0 60 e0                                      rsb ip, r0, ip
00644bf4  4c c1 a0 e1                                      asr ip, ip, #2
00644bf8  0c 31 8c e0                                      add r3, ip, ip, lsl #2
00644bfc  03 32 83 e0                                      add r3, r3, r3, lsl #4
00644c00  03 34 83 e0                                      add r3, r3, r3, lsl #8
00644c04  03 38 83 e0                                      add r3, r3, r3, lsl #16
00644c08  83 c0 8c e0                                      add ip, ip, r3, lsl #1
00644c0c  0c 00 51 e1                                      cmp r1, ip
00644c10  1a 00 00 2a                                      bhs #0x644c80
00644c14  00 30 92 e5                                      ldr r3, [r2]
00644c18  0c 40 a0 e3                                      mov r4, #0xc
00644c1c  94 01 24 e0                                      mla r4, r4, r1, r0
00644c20  04 30 8d e5                                      str r3, [sp, #4]
00644c24  00 00 53 e3                                      cmp r3, #0
00644c28  00 20 93 15                                      ldrne r2, [r3]
00644c2c  08 00 8d e2                                      add r0, sp, #8
00644c30  01 20 82 12                                      addne r2, r2, #1
00644c34  00 20 83 15                                      strne r2, [r3]
00644c38  04 20 94 e5                                      ldr r2, [r4, #4]
00644c3c  04 30 9d 15                                      ldrne r3, [sp, #4]
00644c40  04 20 20 e5                                      str r2, [r0, #-4]!
00644c44  04 30 84 e5                                      str r3, [r4, #4]
00644c48  e6 2f f3 eb                                      bl #0x310be8
00644c4c  00 30 95 e5                                      ldr r3, [r5]
00644c50  08 00 8d e2                                      add r0, sp, #8
00644c54  00 30 8d e5                                      str r3, [sp]
00644c58  00 00 53 e3                                      cmp r3, #0
00644c5c  00 20 93 15                                      ldrne r2, [r3]
00644c60  01 20 82 12                                      addne r2, r2, #1
00644c64  00 20 83 15                                      strne r2, [r3]
00644c68  00 30 9d 15                                      ldrne r3, [sp]
00644c6c  08 20 94 e5                                      ldr r2, [r4, #8]
00644c70  08 20 20 e5                                      str r2, [r0, #-8]!
00644c74  08 30 84 e5                                      str r3, [r4, #8]
00644c78  0d 00 a0 e1                                      mov r0, sp
00644c7c  7a d5 fc eb                                      bl #0x57a26c
00644c80  0c d0 8d e2                                      add sp, sp, #0xc
00644c84  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00644cfc, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZN6glitch7collada5CMeshD1Ev
; demangled: glitch::collada::CMesh::~CMesh()
; decoder-mode: arm
00644cfc  70 40 2d e9                                      push {r4, r5, r6, lr}
00644d00  38 40 9f e5                                      ldr r4, [pc, #0x38]
00644d04  38 30 9f e5                                      ldr r3, [pc, #0x38]
00644d08  00 50 a0 e1                                      mov r5, r0
00644d0c  04 40 8f e0                                      add r4, pc, r4
00644d10  03 30 94 e7                                      ldr r3, [r4, r3]
00644d14  08 30 83 e2                                      add r3, r3, #8
00644d18  18 30 80 e4                                      str r3, [r0], #0x18
00644d1c  e5 ff ff eb                                      bl #0x644cb8
00644d20  20 30 9f e5                                      ldr r3, [pc, #0x20]
00644d24  05 00 a0 e1                                      mov r0, r5
00644d28  03 30 94 e7                                      ldr r3, [r4, r3]
00644d2c  08 30 83 e2                                      add r3, r3, #8
00644d30  0c 30 80 e4                                      str r3, [r0], #0xc
00644d34  ce 51 ff eb                                      bl #0x619474
00644d38  05 00 a0 e1                                      mov r0, r5
00644d3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00644d40  84 fd 34 00 c0 3d 00 00 04 37 00 00              .byte 0x84, 0xfd, 0x34, 0x00, 0xc0, 0x3d, 0x00, 0x00, 0x04, 0x37, 0x00, 0x00

; FUNCTION 0x00644d4c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZN6glitch7collada5CMeshD0Ev
; demangled: glitch::collada::CMesh::~CMesh()
; decoder-mode: arm
00644d4c  10 40 2d e9                                      push {r4, lr}
00644d50  00 40 a0 e1                                      mov r4, r0
00644d54  e8 ff ff eb                                      bl #0x644cfc
00644d58  04 00 a0 e1                                      mov r0, r4
00644d5c  53 25 f3 eb                                      bl #0x30e2b0
00644d60  04 00 a0 e1                                      mov r0, r4
00644d64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00644d68, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZN6glitch7collada5CMeshD2Ev
; demangled: glitch::collada::CMesh::~CMesh()
; decoder-mode: arm
00644d68  70 40 2d e9                                      push {r4, r5, r6, lr}
00644d6c  38 40 9f e5                                      ldr r4, [pc, #0x38]
00644d70  38 30 9f e5                                      ldr r3, [pc, #0x38]
00644d74  00 50 a0 e1                                      mov r5, r0
00644d78  04 40 8f e0                                      add r4, pc, r4
00644d7c  03 30 94 e7                                      ldr r3, [r4, r3]
00644d80  08 30 83 e2                                      add r3, r3, #8
00644d84  18 30 80 e4                                      str r3, [r0], #0x18
00644d88  ca ff ff eb                                      bl #0x644cb8
00644d8c  20 30 9f e5                                      ldr r3, [pc, #0x20]
00644d90  05 00 a0 e1                                      mov r0, r5
00644d94  03 30 94 e7                                      ldr r3, [r4, r3]
00644d98  08 30 83 e2                                      add r3, r3, #8
00644d9c  0c 30 80 e4                                      str r3, [r0], #0xc
00644da0  b3 51 ff eb                                      bl #0x619474
00644da4  05 00 a0 e1                                      mov r0, r5
00644da8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00644dac  18 fd 34 00 c0 3d 00 00 04 37 00 00              .byte 0x18, 0xfd, 0x34, 0x00, 0xc0, 0x3d, 0x00, 0x00, 0x04, 0x37, 0x00, 0x00

; FUNCTION 0x00644eb8, declared_size=208, range_size=208, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZN6glitch7collada5CMeshC1ERKS1_
; demangled: glitch::collada::CMesh::CMesh(glitch::collada::CMesh const&)
; decoder-mode: arm
00644eb8  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00644ebc  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
00644ec0  70 40 2d e9                                      push {r4, r5, r6, lr}
00644ec4  03 30 8f e0                                      add r3, pc, r3
00644ec8  02 20 93 e7                                      ldr r2, [r3, r2]
00644ecc  00 40 a0 e1                                      mov r4, r0
00644ed0  00 00 a0 e3                                      mov r0, #0
00644ed4  08 20 82 e2                                      add r2, r2, #8
00644ed8  04 00 84 e5                                      str r0, [r4, #4]
00644edc  00 20 84 e5                                      str r2, [r4]
00644ee0  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00644ee4  01 50 a0 e1                                      mov r5, r1
00644ee8  0c 20 84 e5                                      str r2, [r4, #0xc]
00644eec  10 10 91 e5                                      ldr r1, [r1, #0x10]
00644ef0  00 00 52 e1                                      cmp r2, r0
00644ef4  10 10 84 e5                                      str r1, [r4, #0x10]
00644ef8  03 00 00 0a                                      beq #0x644f0c
00644efc  04 10 92 e5                                      ldr r1, [r2, #4]
00644f00  00 00 51 e1                                      cmp r1, r0
00644f04  01 10 81 12                                      addne r1, r1, #1
00644f08  04 10 82 15                                      strne r1, [r2, #4]
00644f0c  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00644f10  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00644f14  04 00 a0 e1                                      mov r0, r4
00644f18  01 10 93 e7                                      ldr r1, [r3, r1]
00644f1c  02 20 93 e7                                      ldr r2, [r3, r2]
00644f20  00 30 a0 e3                                      mov r3, #0
00644f24  04 10 81 e2                                      add r1, r1, #4
00644f28  08 20 82 e2                                      add r2, r2, #8
00644f2c  08 10 84 e5                                      str r1, [r4, #8]
00644f30  14 30 84 e5                                      str r3, [r4, #0x14]
00644f34  18 10 85 e2                                      add r1, r5, #0x18
00644f38  18 20 80 e4                                      str r2, [r0], #0x18
00644f3c  9d ff ff eb                                      bl #0x644db8
00644f40  24 30 95 e5                                      ldr r3, [r5, #0x24]
00644f44  04 00 a0 e1                                      mov r0, r4
00644f48  24 30 84 e5                                      str r3, [r4, #0x24]
00644f4c  28 30 95 e5                                      ldr r3, [r5, #0x28]
00644f50  28 30 84 e5                                      str r3, [r4, #0x28]
00644f54  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
00644f58  2c 30 84 e5                                      str r3, [r4, #0x2c]
00644f5c  30 30 95 e5                                      ldr r3, [r5, #0x30]
00644f60  30 30 84 e5                                      str r3, [r4, #0x30]
00644f64  34 30 95 e5                                      ldr r3, [r5, #0x34]
00644f68  34 30 84 e5                                      str r3, [r4, #0x34]
00644f6c  38 30 95 e5                                      ldr r3, [r5, #0x38]
00644f70  38 30 84 e5                                      str r3, [r4, #0x38]
00644f74  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00644f78  cc fb 34 00 40 0a 00 00 b4 17 00 00 c0 3d 00 00  .byte 0xcc, 0xfb, 0x34, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0xc0, 0x3d, 0x00, 0x00

; FUNCTION 0x00644f88, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZNK6glitch7collada5CMesh5cloneEv
; demangled: glitch::collada::CMesh::clone() const
; decoder-mode: arm
00644f88  70 40 2d e9                                      push {r4, r5, r6, lr}
00644f8c  00 50 a0 e1                                      mov r5, r0
00644f90  01 60 a0 e1                                      mov r6, r1
00644f94  3c 00 a0 e3                                      mov r0, #0x3c
00644f98  00 10 a0 e3                                      mov r1, #0
00644f9c  82 bc fb eb                                      bl #0x5341ac
00644fa0  06 10 a0 e1                                      mov r1, r6
00644fa4  00 40 a0 e1                                      mov r4, r0
00644fa8  c2 ff ff eb                                      bl #0x644eb8
00644fac  00 00 54 e3                                      cmp r4, #0
00644fb0  00 40 85 e5                                      str r4, [r5]
00644fb4  04 30 94 15                                      ldrne r3, [r4, #4]
00644fb8  05 00 a0 e1                                      mov r0, r5
00644fbc  01 30 83 12                                      addne r3, r3, #1
00644fc0  04 30 84 15                                      strne r3, [r4, #4]
00644fc4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00644fc8, declared_size=208, range_size=208, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZN6glitch7collada5CMeshC2ERKS1_
; demangled: glitch::collada::CMesh::CMesh(glitch::collada::CMesh const&)
; decoder-mode: arm
00644fc8  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00644fcc  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
00644fd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00644fd4  03 30 8f e0                                      add r3, pc, r3
00644fd8  02 20 93 e7                                      ldr r2, [r3, r2]
00644fdc  00 40 a0 e1                                      mov r4, r0
00644fe0  00 00 a0 e3                                      mov r0, #0
00644fe4  08 20 82 e2                                      add r2, r2, #8
00644fe8  04 00 84 e5                                      str r0, [r4, #4]
00644fec  00 20 84 e5                                      str r2, [r4]
00644ff0  0c 20 91 e5                                      ldr r2, [r1, #0xc]
00644ff4  01 50 a0 e1                                      mov r5, r1
00644ff8  0c 20 84 e5                                      str r2, [r4, #0xc]
00644ffc  10 10 91 e5                                      ldr r1, [r1, #0x10]
00645000  00 00 52 e1                                      cmp r2, r0
00645004  10 10 84 e5                                      str r1, [r4, #0x10]
00645008  03 00 00 0a                                      beq #0x64501c
0064500c  04 10 92 e5                                      ldr r1, [r2, #4]
00645010  00 00 51 e1                                      cmp r1, r0
00645014  01 10 81 12                                      addne r1, r1, #1
00645018  04 10 82 15                                      strne r1, [r2, #4]
0064501c  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
00645020  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00645024  04 00 a0 e1                                      mov r0, r4
00645028  01 10 93 e7                                      ldr r1, [r3, r1]
0064502c  02 20 93 e7                                      ldr r2, [r3, r2]
00645030  00 30 a0 e3                                      mov r3, #0
00645034  04 10 81 e2                                      add r1, r1, #4
00645038  08 20 82 e2                                      add r2, r2, #8
0064503c  08 10 84 e5                                      str r1, [r4, #8]
00645040  14 30 84 e5                                      str r3, [r4, #0x14]
00645044  18 10 85 e2                                      add r1, r5, #0x18
00645048  18 20 80 e4                                      str r2, [r0], #0x18
0064504c  59 ff ff eb                                      bl #0x644db8
00645050  24 30 95 e5                                      ldr r3, [r5, #0x24]
00645054  04 00 a0 e1                                      mov r0, r4
00645058  24 30 84 e5                                      str r3, [r4, #0x24]
0064505c  28 30 95 e5                                      ldr r3, [r5, #0x28]
00645060  28 30 84 e5                                      str r3, [r4, #0x28]
00645064  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
00645068  2c 30 84 e5                                      str r3, [r4, #0x2c]
0064506c  30 30 95 e5                                      ldr r3, [r5, #0x30]
00645070  30 30 84 e5                                      str r3, [r4, #0x30]
00645074  34 30 95 e5                                      ldr r3, [r5, #0x34]
00645078  34 30 84 e5                                      str r3, [r4, #0x34]
0064507c  38 30 95 e5                                      ldr r3, [r5, #0x38]
00645080  38 30 84 e5                                      str r3, [r4, #0x38]
00645084  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00645088  bc fa 34 00 40 0a 00 00 b4 17 00 00 c0 3d 00 00  .byte 0xbc, 0xfa, 0x34, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0xc0, 0x3d, 0x00, 0x00

; FUNCTION 0x00645588, declared_size=1504, range_size=1504, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZN6glitch7collada5CMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKNS0_9SGeometryERKNS0_13SBufferConfigESD_b
; demangled: glitch::collada::CMesh::CMesh(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SGeometry const&, glitch::collada::SBufferConfig const&, glitch::collada::SBufferConfig const&, bool)
; decoder-mode: arm
00645588  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064558c  bc 45 9f e5                                      ldr r4, [pc, #0x5bc]
00645590  bc c5 9f e5                                      ldr ip, [pc, #0x5bc]
00645594  00 b0 a0 e1                                      mov fp, r0
00645598  04 40 8f e0                                      add r4, pc, r4
0064559c  0c c0 94 e7                                      ldr ip, [r4, ip]
006455a0  00 00 a0 e3                                      mov r0, #0
006455a4  04 00 8b e5                                      str r0, [fp, #4]
006455a8  08 c0 8c e2                                      add ip, ip, #8
006455ac  00 c0 8b e5                                      str ip, [fp]
006455b0  01 50 a0 e1                                      mov r5, r1
006455b4  00 10 91 e5                                      ldr r1, [r1]
006455b8  74 d0 4d e2                                      sub sp, sp, #0x74
006455bc  2c 20 8d e5                                      str r2, [sp, #0x2c]
006455c0  34 30 8d e5                                      str r3, [sp, #0x34]
006455c4  0c 10 8b e5                                      str r1, [fp, #0xc]
006455c8  04 30 95 e5                                      ldr r3, [r5, #4]
006455cc  00 00 51 e1                                      cmp r1, r0
006455d0  10 30 8b e5                                      str r3, [fp, #0x10]
006455d4  a0 20 dd e5                                      ldrb r2, [sp, #0xa0]
006455d8  10 20 8d e5                                      str r2, [sp, #0x10]
006455dc  03 00 00 0a                                      beq #0x6455f0
006455e0  04 30 91 e5                                      ldr r3, [r1, #4]
006455e4  00 00 53 e1                                      cmp r3, r0
006455e8  01 30 83 12                                      addne r3, r3, #1
006455ec  04 30 81 15                                      strne r3, [r1, #4]
006455f0  60 05 9f e5                                      ldr r0, [pc, #0x560]
006455f4  60 35 9f e5                                      ldr r3, [pc, #0x560]
006455f8  bf 14 a0 e3                                      mov r1, #0xbf000000
006455fc  00 00 94 e7                                      ldr r0, [r4, r0]
00645600  03 30 94 e7                                      ldr r3, [r4, r3]
00645604  fe 25 a0 e3                                      mov r2, #0x3f800000
00645608  02 15 81 e2                                      add r1, r1, #0x800000
0064560c  08 c0 83 e2                                      add ip, r3, #8
00645610  04 00 80 e2                                      add r0, r0, #4
00645614  00 30 a0 e3                                      mov r3, #0
00645618  08 00 8b e5                                      str r0, [fp, #8]
0064561c  2c 10 8b e5                                      str r1, [fp, #0x2c]
00645620  38 20 8b e5                                      str r2, [fp, #0x38]
00645624  24 10 8b e5                                      str r1, [fp, #0x24]
00645628  28 10 8b e5                                      str r1, [fp, #0x28]
0064562c  30 20 8b e5                                      str r2, [fp, #0x30]
00645630  34 20 8b e5                                      str r2, [fp, #0x34]
00645634  00 c0 8b e5                                      str ip, [fp]
00645638  20 30 8b e5                                      str r3, [fp, #0x20]
0064563c  14 30 8b e5                                      str r3, [fp, #0x14]
00645640  18 30 8b e5                                      str r3, [fp, #0x18]
00645644  1c 30 8b e5                                      str r3, [fp, #0x1c]
00645648  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0064564c  18 10 8b e2                                      add r1, fp, #0x18
00645650  01 00 a0 e1                                      mov r0, r1
00645654  00 30 9c e5                                      ldr r3, [ip]
00645658  1c 10 8d e5                                      str r1, [sp, #0x1c]
0064565c  08 30 8b e5                                      str r3, [fp, #8]
00645660  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00645664  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00645668  03 10 a0 e1                                      mov r1, r3
0064566c  18 30 8d e5                                      str r3, [sp, #0x18]
00645670  b2 fe ff eb                                      bl #0x645140
00645674  00 30 95 e5                                      ldr r3, [r5]
00645678  34 20 9d e5                                      ldr r2, [sp, #0x34]
0064567c  24 30 93 e5                                      ldr r3, [r3, #0x24]
00645680  0c 70 92 e5                                      ldr r7, [r2, #0xc]
00645684  20 20 93 e5                                      ldr r2, [r3, #0x20]
00645688  04 30 92 e5                                      ldr r3, [r2, #4]
0064568c  64 20 92 e5                                      ldr r2, [r2, #0x64]
00645690  00 00 52 e3                                      cmp r2, #0
00645694  00 20 a0 d3                                      movle r2, #0
00645698  01 20 a0 c3                                      movgt r2, #1
0064569c  00 00 53 e3                                      cmp r3, #0
006456a0  14 20 8d e5                                      str r2, [sp, #0x14]
006456a4  38 30 8d 05                                      streq r3, [sp, #0x38]
006456a8  0a 00 00 0a                                      beq #0x6456d8
006456ac  14 10 93 e5                                      ldr r1, [r3, #0x14]
006456b0  a8 34 9f e5                                      ldr r3, [pc, #0x4a8]
006456b4  03 30 94 e7                                      ldr r3, [r4, r3]
006456b8  00 30 93 e5                                      ldr r3, [r3]
006456bc  20 30 93 e5                                      ldr r3, [r3, #0x20]
006456c0  34 30 93 e5                                      ldr r3, [r3, #0x34]
006456c4  03 00 a0 e1                                      mov r0, r3
006456c8  00 30 93 e5                                      ldr r3, [r3]
006456cc  0f e0 a0 e1                                      mov lr, pc
006456d0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006456d4  38 00 8d e5                                      str r0, [sp, #0x38]
006456d8  84 34 9f e5                                      ldr r3, [pc, #0x484]
006456dc  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006456e0  38 10 9d e5                                      ldr r1, [sp, #0x38]
006456e4  03 30 94 e7                                      ldr r3, [r4, r3]
006456e8  00 00 5c e3                                      cmp ip, #0
006456ec  58 10 8d e5                                      str r1, [sp, #0x58]
006456f0  08 30 83 e2                                      add r3, r3, #8
006456f4  54 30 8d e5                                      str r3, [sp, #0x54]
006456f8  02 00 00 0a                                      beq #0x645708
006456fc  00 30 97 e5                                      ldr r3, [r7]
00645700  00 00 53 e3                                      cmp r3, #0
00645704  f3 00 00 1a                                      bne #0x645ad8
00645708  00 10 a0 e3                                      mov r1, #0
0064570c  30 10 8d e5                                      str r1, [sp, #0x30]
00645710  18 20 9d e5                                      ldr r2, [sp, #0x18]
00645714  00 00 52 e3                                      cmp r2, #0
00645718  c6 00 00 0a                                      beq #0x645a38
0064571c  5c c0 8d e2                                      add ip, sp, #0x5c
00645720  60 10 8d e2                                      add r1, sp, #0x60
00645724  00 80 a0 e3                                      mov r8, #0
00645728  48 30 8d e2                                      add r3, sp, #0x48
0064572c  20 c0 8d e5                                      str ip, [sp, #0x20]
00645730  24 10 8d e5                                      str r1, [sp, #0x24]
00645734  64 20 8d e2                                      add r2, sp, #0x64
00645738  54 c0 8d e2                                      add ip, sp, #0x54
0064573c  68 10 8d e2                                      add r1, sp, #0x68
00645740  44 b0 8d e5                                      str fp, [sp, #0x44]
00645744  08 a0 a0 e1                                      mov sl, r8
00645748  08 90 a0 e1                                      mov sb, r8
0064574c  3c 20 8d e5                                      str r2, [sp, #0x3c]
00645750  28 c0 8d e5                                      str ip, [sp, #0x28]
00645754  40 10 8d e5                                      str r1, [sp, #0x40]
00645758  03 b0 a0 e1                                      mov fp, r3
0064575c  71 00 00 ea                                      b #0x645928
00645760  10 30 97 e5                                      ldr r3, [r7, #0x10]
00645764  ff cf 0f e3                                      movw ip, #0xffff
00645768  08 30 83 e0                                      add r3, r3, r8
0064576c  24 20 93 e5                                      ldr r2, [r3, #0x24]
00645770  0c 00 52 e1                                      cmp r2, ip
00645774  92 00 00 da                                      ble #0x6459c4
00645778  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
0064577c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00645780  28 20 9d e5                                      ldr r2, [sp, #0x28]
00645784  cc fe ff eb                                      bl #0x6452bc
00645788  68 30 9d e5                                      ldr r3, [sp, #0x68]
0064578c  00 00 53 e3                                      cmp r3, #0
00645790  67 00 00 0a                                      beq #0x645934
00645794  00 20 93 e5                                      ldr r2, [r3]
00645798  01 20 82 e2                                      add r2, r2, #1
0064579c  00 20 83 e5                                      str r2, [r3]
006457a0  68 50 9d e5                                      ldr r5, [sp, #0x68]
006457a4  00 00 55 e3                                      cmp r5, #0
006457a8  62 00 00 0a                                      beq #0x645938
006457ac  00 30 95 e5                                      ldr r3, [r5]
006457b0  01 30 43 e2                                      sub r3, r3, #1
006457b4  00 00 53 e3                                      cmp r3, #0
006457b8  00 30 85 e5                                      str r3, [r5]
006457bc  05 00 00 1a                                      bne #0x6457d8
006457c0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006457c4  00 00 50 e3                                      cmp r0, #0
006457c8  00 00 00 0a                                      beq #0x6457d0
006457cc  39 22 f3 eb                                      bl #0x30e0b8
006457d0  00 10 a0 e3                                      mov r1, #0
006457d4  0c 10 85 e5                                      str r1, [r5, #0xc]
006457d8  68 90 8d e5                                      str sb, [sp, #0x68]
006457dc  09 60 a0 e1                                      mov r6, sb
006457e0  10 30 9d e5                                      ldr r3, [sp, #0x10]
006457e4  00 00 53 e3                                      cmp r3, #0
006457e8  56 00 00 0a                                      beq #0x645948
006457ec  10 30 97 e5                                      ldr r3, [r7, #0x10]
006457f0  08 30 83 e0                                      add r3, r3, r8
006457f4  34 40 93 e5                                      ldr r4, [r3, #0x34]
006457f8  00 00 54 e3                                      cmp r4, #0
006457fc  51 00 00 0a                                      beq #0x645948
00645800  04 30 94 e5                                      ldr r3, [r4, #4]
00645804  01 30 83 e2                                      add r3, r3, #1
00645808  04 30 84 e5                                      str r3, [r4, #4]
0064580c  00 00 54 e3                                      cmp r4, #0
00645810  60 90 8d e5                                      str sb, [sp, #0x60]
00645814  5c 90 8d e5                                      str sb, [sp, #0x5c]
00645818  48 40 8d e5                                      str r4, [sp, #0x48]
0064581c  4c 40 8d 05                                      streq r4, [sp, #0x4c]
00645820  08 00 00 0a                                      beq #0x645848
00645824  04 30 94 e5                                      ldr r3, [r4, #4]
00645828  01 30 83 e2                                      add r3, r3, #1
0064582c  04 30 84 e5                                      str r3, [r4, #4]
00645830  60 30 9d e5                                      ldr r3, [sp, #0x60]
00645834  00 00 53 e3                                      cmp r3, #0
00645838  4c 30 8d e5                                      str r3, [sp, #0x4c]
0064583c  00 20 93 15                                      ldrne r2, [r3]
00645840  01 20 82 12                                      addne r2, r2, #1
00645844  00 20 83 15                                      strne r2, [r3]
00645848  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0064584c  0b 10 a0 e1                                      mov r1, fp
00645850  00 00 53 e3                                      cmp r3, #0
00645854  50 30 8d e5                                      str r3, [sp, #0x50]
00645858  00 20 93 15                                      ldrne r2, [r3]
0064585c  01 20 82 12                                      addne r2, r2, #1
00645860  00 20 83 15                                      strne r2, [r3]
00645864  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00645868  c9 fe ff eb                                      bl #0x645394
0064586c  0b 00 a0 e1                                      mov r0, fp
00645870  04 fd ff eb                                      bl #0x644c88
00645874  20 00 9d e5                                      ldr r0, [sp, #0x20]
00645878  7b d2 fc eb                                      bl #0x57a26c
0064587c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00645880  d8 2c f3 eb                                      bl #0x310be8
00645884  10 10 9d e5                                      ldr r1, [sp, #0x10]
00645888  00 00 51 e3                                      cmp r1, #0
0064588c  04 00 00 0a                                      beq #0x6458a4
00645890  10 30 97 e5                                      ldr r3, [r7, #0x10]
00645894  08 30 83 e0                                      add r3, r3, r8
00645898  34 20 93 e5                                      ldr r2, [r3, #0x34]
0064589c  00 00 52 e3                                      cmp r2, #0
006458a0  39 00 00 0a                                      beq #0x64598c
006458a4  00 00 54 e3                                      cmp r4, #0
006458a8  42 00 00 1a                                      bne #0x6459b8
006458ac  00 00 55 e3                                      cmp r5, #0
006458b0  0a 00 00 0a                                      beq #0x6458e0
006458b4  00 30 95 e5                                      ldr r3, [r5]
006458b8  01 30 43 e2                                      sub r3, r3, #1
006458bc  00 00 53 e3                                      cmp r3, #0
006458c0  00 30 85 e5                                      str r3, [r5]
006458c4  05 00 00 1a                                      bne #0x6458e0
006458c8  0c 00 95 e5                                      ldr r0, [r5, #0xc]
006458cc  00 00 50 e3                                      cmp r0, #0
006458d0  00 00 00 0a                                      beq #0x6458d8
006458d4  f7 21 f3 eb                                      bl #0x30e0b8
006458d8  00 20 a0 e3                                      mov r2, #0
006458dc  0c 20 85 e5                                      str r2, [r5, #0xc]
006458e0  00 00 56 e3                                      cmp r6, #0
006458e4  0a 00 00 0a                                      beq #0x645914
006458e8  00 30 96 e5                                      ldr r3, [r6]
006458ec  01 30 43 e2                                      sub r3, r3, #1
006458f0  00 00 53 e3                                      cmp r3, #0
006458f4  00 30 86 e5                                      str r3, [r6]
006458f8  05 00 00 1a                                      bne #0x645914
006458fc  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00645900  00 00 50 e3                                      cmp r0, #0
00645904  00 00 00 0a                                      beq #0x64590c
00645908  ea 21 f3 eb                                      bl #0x30e0b8
0064590c  00 30 a0 e3                                      mov r3, #0
00645910  0c 30 86 e5                                      str r3, [r6, #0xc]
00645914  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00645918  01 a0 8a e2                                      add sl, sl, #1
0064591c  38 80 88 e2                                      add r8, r8, #0x38
00645920  0a 00 5c e1                                      cmp ip, sl
00645924  42 00 00 0a                                      beq #0x645a34
00645928  14 20 9d e5                                      ldr r2, [sp, #0x14]
0064592c  00 00 52 e3                                      cmp r2, #0
00645930  8a ff ff 1a                                      bne #0x645760
00645934  00 50 a0 e3                                      mov r5, #0
00645938  10 30 9d e5                                      ldr r3, [sp, #0x10]
0064593c  05 60 a0 e1                                      mov r6, r5
00645940  00 00 53 e3                                      cmp r3, #0
00645944  a8 ff ff 1a                                      bne #0x6457ec
00645948  00 10 a0 e3                                      mov r1, #0
0064594c  38 00 a0 e3                                      mov r0, #0x38
00645950  15 ba fb eb                                      bl #0x5341ac
00645954  98 c0 9d e5                                      ldr ip, [sp, #0x98]
00645958  00 40 a0 e1                                      mov r4, r0
0064595c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00645960  00 c0 8d e5                                      str ip, [sp]
00645964  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
00645968  07 20 a0 e1                                      mov r2, r7
0064596c  0a 30 a0 e1                                      mov r3, sl
00645970  04 c0 8d e5                                      str ip, [sp, #4]
00645974  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00645978  08 c0 8d e5                                      str ip, [sp, #8]
0064597c  1d e0 01 eb                                      bl #0x6bd9f8
00645980  00 00 54 e3                                      cmp r4, #0
00645984  9d ff ff 1a                                      bne #0x645800
00645988  9f ff ff ea                                      b #0x64580c
0064598c  00 00 54 e3                                      cmp r4, #0
00645990  34 40 83 05                                      streq r4, [r3, #0x34]
00645994  c4 ff ff 0a                                      beq #0x6458ac
00645998  04 20 94 e5                                      ldr r2, [r4, #4]
0064599c  01 20 82 e2                                      add r2, r2, #1
006459a0  04 20 84 e5                                      str r2, [r4, #4]
006459a4  34 00 93 e5                                      ldr r0, [r3, #0x34]
006459a8  34 40 83 e5                                      str r4, [r3, #0x34]
006459ac  00 00 50 e3                                      cmp r0, #0
006459b0  00 00 00 0a                                      beq #0x6459b8
006459b4  f2 5e f3 eb                                      bl #0x31d584
006459b8  04 00 a0 e1                                      mov r0, r4
006459bc  f0 5e f3 eb                                      bl #0x31d584
006459c0  b9 ff ff ea                                      b #0x6458ac
006459c4  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
006459c8  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
006459cc  28 20 9d e5                                      ldr r2, [sp, #0x28]
006459d0  54 fe ff eb                                      bl #0x645328
006459d4  64 30 9d e5                                      ldr r3, [sp, #0x64]
006459d8  00 00 53 e3                                      cmp r3, #0
006459dc  d4 ff ff 0a                                      beq #0x645934
006459e0  00 20 93 e5                                      ldr r2, [r3]
006459e4  01 20 82 e2                                      add r2, r2, #1
006459e8  00 20 83 e5                                      str r2, [r3]
006459ec  64 60 9d e5                                      ldr r6, [sp, #0x64]
006459f0  00 00 56 e3                                      cmp r6, #0
006459f4  06 50 a0 01                                      moveq r5, r6
006459f8  78 ff ff 0a                                      beq #0x6457e0
006459fc  00 30 96 e5                                      ldr r3, [r6]
00645a00  01 30 43 e2                                      sub r3, r3, #1
00645a04  00 00 53 e3                                      cmp r3, #0
00645a08  00 30 86 e5                                      str r3, [r6]
00645a0c  05 00 00 1a                                      bne #0x645a28
00645a10  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00645a14  00 00 50 e3                                      cmp r0, #0
00645a18  00 00 00 0a                                      beq #0x645a20
00645a1c  a5 21 f3 eb                                      bl #0x30e0b8
00645a20  00 20 a0 e3                                      mov r2, #0
00645a24  0c 20 86 e5                                      str r2, [r6, #0xc]
00645a28  64 90 8d e5                                      str sb, [sp, #0x64]
00645a2c  09 50 a0 e1                                      mov r5, sb
00645a30  6a ff ff ea                                      b #0x6457e0
00645a34  44 b0 9d e5                                      ldr fp, [sp, #0x44]
00645a38  38 10 9d e5                                      ldr r1, [sp, #0x38]
00645a3c  00 00 51 e3                                      cmp r1, #0
00645a40  01 00 00 0a                                      beq #0x645a4c
00645a44  01 00 a0 e1                                      mov r0, r1
00645a48  cd 5e f3 eb                                      bl #0x31d584
00645a4c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00645a50  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00645a54  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00645a58  00 00 5c e3                                      cmp ip, #0
00645a5c  14 10 83 e2                                      add r1, r3, #0x14
00645a60  20 20 83 e2                                      add r2, r3, #0x20
00645a64  08 40 91 e5                                      ldr r4, [r1, #8]
00645a68  20 c0 93 e5                                      ldr ip, [r3, #0x20]
00645a6c  14 50 93 e5                                      ldr r5, [r3, #0x14]
00645a70  08 00 92 e5                                      ldr r0, [r2, #8]
00645a74  04 10 91 e5                                      ldr r1, [r1, #4]
00645a78  04 30 92 e5                                      ldr r3, [r2, #4]
00645a7c  24 50 8b e5                                      str r5, [fp, #0x24]
00645a80  28 10 8b e5                                      str r1, [fp, #0x28]
00645a84  2c 40 8b e5                                      str r4, [fp, #0x2c]
00645a88  30 c0 8b e5                                      str ip, [fp, #0x30]
00645a8c  34 30 8b e5                                      str r3, [fp, #0x34]
00645a90  38 00 8b e5                                      str r0, [fp, #0x38]
00645a94  0c 00 00 0a                                      beq #0x645acc
00645a98  30 10 9d e5                                      ldr r1, [sp, #0x30]
00645a9c  00 30 91 e5                                      ldr r3, [r1]
00645aa0  01 30 43 e2                                      sub r3, r3, #1
00645aa4  00 00 53 e3                                      cmp r3, #0
00645aa8  00 30 81 e5                                      str r3, [r1]
00645aac  06 00 00 1a                                      bne #0x645acc
00645ab0  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00645ab4  00 00 50 e3                                      cmp r0, #0
00645ab8  00 00 00 0a                                      beq #0x645ac0
00645abc  7d 21 f3 eb                                      bl #0x30e0b8
00645ac0  30 20 9d e5                                      ldr r2, [sp, #0x30]
00645ac4  00 30 a0 e3                                      mov r3, #0
00645ac8  0c 30 82 e5                                      str r3, [r2, #0xc]
00645acc  0b 00 a0 e1                                      mov r0, fp
00645ad0  74 d0 8d e2                                      add sp, sp, #0x74
00645ad4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00645ad8  08 30 97 e5                                      ldr r3, [r7, #8]
00645adc  54 20 8d e2                                      add r2, sp, #0x54
00645ae0  6c 00 8d e2                                      add r0, sp, #0x6c
00645ae4  24 10 93 e5                                      ldr r1, [r3, #0x24]
00645ae8  d8 fd ff eb                                      bl #0x645250
00645aec  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00645af0  00 00 52 e3                                      cmp r2, #0
00645af4  03 ff ff 0a                                      beq #0x645708
00645af8  00 30 92 e5                                      ldr r3, [r2]
00645afc  01 30 83 e2                                      add r3, r3, #1
00645b00  00 30 82 e5                                      str r3, [r2]
00645b04  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00645b08  00 00 52 e3                                      cmp r2, #0
00645b0c  30 20 8d e5                                      str r2, [sp, #0x30]
00645b10  fe fe ff 0a                                      beq #0x645710
00645b14  00 30 92 e5                                      ldr r3, [r2]
00645b18  01 30 43 e2                                      sub r3, r3, #1
00645b1c  00 00 53 e3                                      cmp r3, #0
00645b20  00 30 82 e5                                      str r3, [r2]
00645b24  06 00 00 1a                                      bne #0x645b44
00645b28  0c 00 92 e5                                      ldr r0, [r2, #0xc]
00645b2c  00 00 50 e3                                      cmp r0, #0
00645b30  00 00 00 0a                                      beq #0x645b38
00645b34  5f 21 f3 eb                                      bl #0x30e0b8
00645b38  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00645b3c  00 30 a0 e3                                      mov r3, #0
00645b40  0c 30 8c e5                                      str r3, [ip, #0xc]
00645b44  00 30 a0 e3                                      mov r3, #0
00645b48  6c 30 8d e5                                      str r3, [sp, #0x6c]
00645b4c  ef fe ff ea                                      b #0x645710
; mapping-symbol data/literal pool
00645b50  f8 f4 34 00 40 0a 00 00 b4 17 00 00 c0 3d 00 00  .byte 0xf8, 0xf4, 0x34, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0xc0, 0x3d, 0x00, 0x00
00645b60  48 44 00 00 fc 46 00 00                          .byte 0x48, 0x44, 0x00, 0x00, 0xfc, 0x46, 0x00, 0x00

; FUNCTION 0x00645b68, declared_size=1504, range_size=1504, mode=arm
; class-group: glitch::collada::CMesh
; alias: _ZN6glitch7collada5CMeshC2ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERKNS0_9SGeometryERKNS0_13SBufferConfigESD_b
; demangled: glitch::collada::CMesh::CMesh(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SGeometry const&, glitch::collada::SBufferConfig const&, glitch::collada::SBufferConfig const&, bool)
; decoder-mode: arm
00645b68  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00645b6c  bc 45 9f e5                                      ldr r4, [pc, #0x5bc]
00645b70  bc c5 9f e5                                      ldr ip, [pc, #0x5bc]
00645b74  00 b0 a0 e1                                      mov fp, r0
00645b78  04 40 8f e0                                      add r4, pc, r4
00645b7c  0c c0 94 e7                                      ldr ip, [r4, ip]
00645b80  00 00 a0 e3                                      mov r0, #0
00645b84  04 00 8b e5                                      str r0, [fp, #4]
00645b88  08 c0 8c e2                                      add ip, ip, #8
00645b8c  00 c0 8b e5                                      str ip, [fp]
00645b90  01 50 a0 e1                                      mov r5, r1
00645b94  00 10 91 e5                                      ldr r1, [r1]
00645b98  74 d0 4d e2                                      sub sp, sp, #0x74
00645b9c  2c 20 8d e5                                      str r2, [sp, #0x2c]
00645ba0  34 30 8d e5                                      str r3, [sp, #0x34]
00645ba4  0c 10 8b e5                                      str r1, [fp, #0xc]
00645ba8  04 30 95 e5                                      ldr r3, [r5, #4]
00645bac  00 00 51 e1                                      cmp r1, r0
00645bb0  10 30 8b e5                                      str r3, [fp, #0x10]
00645bb4  a0 20 dd e5                                      ldrb r2, [sp, #0xa0]
00645bb8  10 20 8d e5                                      str r2, [sp, #0x10]
00645bbc  03 00 00 0a                                      beq #0x645bd0
00645bc0  04 30 91 e5                                      ldr r3, [r1, #4]
00645bc4  00 00 53 e1                                      cmp r3, r0
00645bc8  01 30 83 12                                      addne r3, r3, #1
00645bcc  04 30 81 15                                      strne r3, [r1, #4]
00645bd0  60 05 9f e5                                      ldr r0, [pc, #0x560]
00645bd4  60 35 9f e5                                      ldr r3, [pc, #0x560]
00645bd8  bf 14 a0 e3                                      mov r1, #0xbf000000
00645bdc  00 00 94 e7                                      ldr r0, [r4, r0]
00645be0  03 30 94 e7                                      ldr r3, [r4, r3]
00645be4  fe 25 a0 e3                                      mov r2, #0x3f800000
00645be8  02 15 81 e2                                      add r1, r1, #0x800000
00645bec  08 c0 83 e2                                      add ip, r3, #8
00645bf0  04 00 80 e2                                      add r0, r0, #4
00645bf4  00 30 a0 e3                                      mov r3, #0
00645bf8  08 00 8b e5                                      str r0, [fp, #8]
00645bfc  2c 10 8b e5                                      str r1, [fp, #0x2c]
00645c00  38 20 8b e5                                      str r2, [fp, #0x38]
00645c04  24 10 8b e5                                      str r1, [fp, #0x24]
00645c08  28 10 8b e5                                      str r1, [fp, #0x28]
00645c0c  30 20 8b e5                                      str r2, [fp, #0x30]
00645c10  34 20 8b e5                                      str r2, [fp, #0x34]
00645c14  00 c0 8b e5                                      str ip, [fp]
00645c18  20 30 8b e5                                      str r3, [fp, #0x20]
00645c1c  14 30 8b e5                                      str r3, [fp, #0x14]
00645c20  18 30 8b e5                                      str r3, [fp, #0x18]
00645c24  1c 30 8b e5                                      str r3, [fp, #0x1c]
00645c28  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00645c2c  18 10 8b e2                                      add r1, fp, #0x18
00645c30  01 00 a0 e1                                      mov r0, r1
00645c34  00 30 9c e5                                      ldr r3, [ip]
00645c38  1c 10 8d e5                                      str r1, [sp, #0x1c]
00645c3c  08 30 8b e5                                      str r3, [fp, #8]
00645c40  0c 30 9c e5                                      ldr r3, [ip, #0xc]
00645c44  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00645c48  03 10 a0 e1                                      mov r1, r3
00645c4c  18 30 8d e5                                      str r3, [sp, #0x18]
00645c50  3a fd ff eb                                      bl #0x645140
00645c54  00 30 95 e5                                      ldr r3, [r5]
00645c58  34 20 9d e5                                      ldr r2, [sp, #0x34]
00645c5c  24 30 93 e5                                      ldr r3, [r3, #0x24]
00645c60  0c 70 92 e5                                      ldr r7, [r2, #0xc]
00645c64  20 20 93 e5                                      ldr r2, [r3, #0x20]
00645c68  04 30 92 e5                                      ldr r3, [r2, #4]
00645c6c  64 20 92 e5                                      ldr r2, [r2, #0x64]
00645c70  00 00 52 e3                                      cmp r2, #0
00645c74  00 20 a0 d3                                      movle r2, #0
00645c78  01 20 a0 c3                                      movgt r2, #1
00645c7c  00 00 53 e3                                      cmp r3, #0
00645c80  14 20 8d e5                                      str r2, [sp, #0x14]
00645c84  38 30 8d 05                                      streq r3, [sp, #0x38]
00645c88  0a 00 00 0a                                      beq #0x645cb8
00645c8c  14 10 93 e5                                      ldr r1, [r3, #0x14]
00645c90  a8 34 9f e5                                      ldr r3, [pc, #0x4a8]
00645c94  03 30 94 e7                                      ldr r3, [r4, r3]
00645c98  00 30 93 e5                                      ldr r3, [r3]
00645c9c  20 30 93 e5                                      ldr r3, [r3, #0x20]
00645ca0  34 30 93 e5                                      ldr r3, [r3, #0x34]
00645ca4  03 00 a0 e1                                      mov r0, r3
00645ca8  00 30 93 e5                                      ldr r3, [r3]
00645cac  0f e0 a0 e1                                      mov lr, pc
00645cb0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00645cb4  38 00 8d e5                                      str r0, [sp, #0x38]
00645cb8  84 34 9f e5                                      ldr r3, [pc, #0x484]
00645cbc  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00645cc0  38 10 9d e5                                      ldr r1, [sp, #0x38]
00645cc4  03 30 94 e7                                      ldr r3, [r4, r3]
00645cc8  00 00 5c e3                                      cmp ip, #0
00645ccc  58 10 8d e5                                      str r1, [sp, #0x58]
00645cd0  08 30 83 e2                                      add r3, r3, #8
00645cd4  54 30 8d e5                                      str r3, [sp, #0x54]
00645cd8  02 00 00 0a                                      beq #0x645ce8
00645cdc  00 30 97 e5                                      ldr r3, [r7]
00645ce0  00 00 53 e3                                      cmp r3, #0
00645ce4  f3 00 00 1a                                      bne #0x6460b8
00645ce8  00 10 a0 e3                                      mov r1, #0
00645cec  30 10 8d e5                                      str r1, [sp, #0x30]
00645cf0  18 20 9d e5                                      ldr r2, [sp, #0x18]
00645cf4  00 00 52 e3                                      cmp r2, #0
00645cf8  c6 00 00 0a                                      beq #0x646018
00645cfc  5c c0 8d e2                                      add ip, sp, #0x5c
00645d00  60 10 8d e2                                      add r1, sp, #0x60
00645d04  00 80 a0 e3                                      mov r8, #0
00645d08  48 30 8d e2                                      add r3, sp, #0x48
00645d0c  20 c0 8d e5                                      str ip, [sp, #0x20]
00645d10  24 10 8d e5                                      str r1, [sp, #0x24]
00645d14  64 20 8d e2                                      add r2, sp, #0x64
00645d18  54 c0 8d e2                                      add ip, sp, #0x54
00645d1c  68 10 8d e2                                      add r1, sp, #0x68
00645d20  44 b0 8d e5                                      str fp, [sp, #0x44]
00645d24  08 a0 a0 e1                                      mov sl, r8
00645d28  08 90 a0 e1                                      mov sb, r8
00645d2c  3c 20 8d e5                                      str r2, [sp, #0x3c]
00645d30  28 c0 8d e5                                      str ip, [sp, #0x28]
00645d34  40 10 8d e5                                      str r1, [sp, #0x40]
00645d38  03 b0 a0 e1                                      mov fp, r3
00645d3c  71 00 00 ea                                      b #0x645f08
00645d40  10 30 97 e5                                      ldr r3, [r7, #0x10]
00645d44  ff cf 0f e3                                      movw ip, #0xffff
00645d48  08 30 83 e0                                      add r3, r3, r8
00645d4c  24 20 93 e5                                      ldr r2, [r3, #0x24]
00645d50  0c 00 52 e1                                      cmp r2, ip
00645d54  92 00 00 da                                      ble #0x645fa4
00645d58  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
00645d5c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00645d60  28 20 9d e5                                      ldr r2, [sp, #0x28]
00645d64  54 fd ff eb                                      bl #0x6452bc
00645d68  68 30 9d e5                                      ldr r3, [sp, #0x68]
00645d6c  00 00 53 e3                                      cmp r3, #0
00645d70  67 00 00 0a                                      beq #0x645f14
00645d74  00 20 93 e5                                      ldr r2, [r3]
00645d78  01 20 82 e2                                      add r2, r2, #1
00645d7c  00 20 83 e5                                      str r2, [r3]
00645d80  68 50 9d e5                                      ldr r5, [sp, #0x68]
00645d84  00 00 55 e3                                      cmp r5, #0
00645d88  62 00 00 0a                                      beq #0x645f18
00645d8c  00 30 95 e5                                      ldr r3, [r5]
00645d90  01 30 43 e2                                      sub r3, r3, #1
00645d94  00 00 53 e3                                      cmp r3, #0
00645d98  00 30 85 e5                                      str r3, [r5]
00645d9c  05 00 00 1a                                      bne #0x645db8
00645da0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00645da4  00 00 50 e3                                      cmp r0, #0
00645da8  00 00 00 0a                                      beq #0x645db0
00645dac  c1 20 f3 eb                                      bl #0x30e0b8
00645db0  00 10 a0 e3                                      mov r1, #0
00645db4  0c 10 85 e5                                      str r1, [r5, #0xc]
00645db8  68 90 8d e5                                      str sb, [sp, #0x68]
00645dbc  09 60 a0 e1                                      mov r6, sb
00645dc0  10 30 9d e5                                      ldr r3, [sp, #0x10]
00645dc4  00 00 53 e3                                      cmp r3, #0
00645dc8  56 00 00 0a                                      beq #0x645f28
00645dcc  10 30 97 e5                                      ldr r3, [r7, #0x10]
00645dd0  08 30 83 e0                                      add r3, r3, r8
00645dd4  34 40 93 e5                                      ldr r4, [r3, #0x34]
00645dd8  00 00 54 e3                                      cmp r4, #0
00645ddc  51 00 00 0a                                      beq #0x645f28
00645de0  04 30 94 e5                                      ldr r3, [r4, #4]
00645de4  01 30 83 e2                                      add r3, r3, #1
00645de8  04 30 84 e5                                      str r3, [r4, #4]
00645dec  00 00 54 e3                                      cmp r4, #0
00645df0  60 90 8d e5                                      str sb, [sp, #0x60]
00645df4  5c 90 8d e5                                      str sb, [sp, #0x5c]
00645df8  48 40 8d e5                                      str r4, [sp, #0x48]
00645dfc  4c 40 8d 05                                      streq r4, [sp, #0x4c]
00645e00  08 00 00 0a                                      beq #0x645e28
00645e04  04 30 94 e5                                      ldr r3, [r4, #4]
00645e08  01 30 83 e2                                      add r3, r3, #1
00645e0c  04 30 84 e5                                      str r3, [r4, #4]
00645e10  60 30 9d e5                                      ldr r3, [sp, #0x60]
00645e14  00 00 53 e3                                      cmp r3, #0
00645e18  4c 30 8d e5                                      str r3, [sp, #0x4c]
00645e1c  00 20 93 15                                      ldrne r2, [r3]
00645e20  01 20 82 12                                      addne r2, r2, #1
00645e24  00 20 83 15                                      strne r2, [r3]
00645e28  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00645e2c  0b 10 a0 e1                                      mov r1, fp
00645e30  00 00 53 e3                                      cmp r3, #0
00645e34  50 30 8d e5                                      str r3, [sp, #0x50]
00645e38  00 20 93 15                                      ldrne r2, [r3]
00645e3c  01 20 82 12                                      addne r2, r2, #1
00645e40  00 20 83 15                                      strne r2, [r3]
00645e44  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00645e48  51 fd ff eb                                      bl #0x645394
00645e4c  0b 00 a0 e1                                      mov r0, fp
00645e50  8c fb ff eb                                      bl #0x644c88
00645e54  20 00 9d e5                                      ldr r0, [sp, #0x20]
00645e58  03 d1 fc eb                                      bl #0x57a26c
00645e5c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00645e60  60 2b f3 eb                                      bl #0x310be8
00645e64  10 10 9d e5                                      ldr r1, [sp, #0x10]
00645e68  00 00 51 e3                                      cmp r1, #0
00645e6c  04 00 00 0a                                      beq #0x645e84
00645e70  10 30 97 e5                                      ldr r3, [r7, #0x10]
00645e74  08 30 83 e0                                      add r3, r3, r8
00645e78  34 20 93 e5                                      ldr r2, [r3, #0x34]
00645e7c  00 00 52 e3                                      cmp r2, #0
00645e80  39 00 00 0a                                      beq #0x645f6c
00645e84  00 00 54 e3                                      cmp r4, #0
00645e88  42 00 00 1a                                      bne #0x645f98
00645e8c  00 00 55 e3                                      cmp r5, #0
00645e90  0a 00 00 0a                                      beq #0x645ec0
00645e94  00 30 95 e5                                      ldr r3, [r5]
00645e98  01 30 43 e2                                      sub r3, r3, #1
00645e9c  00 00 53 e3                                      cmp r3, #0
00645ea0  00 30 85 e5                                      str r3, [r5]
00645ea4  05 00 00 1a                                      bne #0x645ec0
00645ea8  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00645eac  00 00 50 e3                                      cmp r0, #0
00645eb0  00 00 00 0a                                      beq #0x645eb8
00645eb4  7f 20 f3 eb                                      bl #0x30e0b8
00645eb8  00 20 a0 e3                                      mov r2, #0
00645ebc  0c 20 85 e5                                      str r2, [r5, #0xc]
00645ec0  00 00 56 e3                                      cmp r6, #0
00645ec4  0a 00 00 0a                                      beq #0x645ef4
00645ec8  00 30 96 e5                                      ldr r3, [r6]
00645ecc  01 30 43 e2                                      sub r3, r3, #1
00645ed0  00 00 53 e3                                      cmp r3, #0
00645ed4  00 30 86 e5                                      str r3, [r6]
00645ed8  05 00 00 1a                                      bne #0x645ef4
00645edc  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00645ee0  00 00 50 e3                                      cmp r0, #0
00645ee4  00 00 00 0a                                      beq #0x645eec
00645ee8  72 20 f3 eb                                      bl #0x30e0b8
00645eec  00 30 a0 e3                                      mov r3, #0
00645ef0  0c 30 86 e5                                      str r3, [r6, #0xc]
00645ef4  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00645ef8  01 a0 8a e2                                      add sl, sl, #1
00645efc  38 80 88 e2                                      add r8, r8, #0x38
00645f00  0a 00 5c e1                                      cmp ip, sl
00645f04  42 00 00 0a                                      beq #0x646014
00645f08  14 20 9d e5                                      ldr r2, [sp, #0x14]
00645f0c  00 00 52 e3                                      cmp r2, #0
00645f10  8a ff ff 1a                                      bne #0x645d40
00645f14  00 50 a0 e3                                      mov r5, #0
00645f18  10 30 9d e5                                      ldr r3, [sp, #0x10]
00645f1c  05 60 a0 e1                                      mov r6, r5
00645f20  00 00 53 e3                                      cmp r3, #0
00645f24  a8 ff ff 1a                                      bne #0x645dcc
00645f28  00 10 a0 e3                                      mov r1, #0
00645f2c  38 00 a0 e3                                      mov r0, #0x38
00645f30  9d b8 fb eb                                      bl #0x5341ac
00645f34  98 c0 9d e5                                      ldr ip, [sp, #0x98]
00645f38  00 40 a0 e1                                      mov r4, r0
00645f3c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00645f40  00 c0 8d e5                                      str ip, [sp]
00645f44  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
00645f48  07 20 a0 e1                                      mov r2, r7
00645f4c  0a 30 a0 e1                                      mov r3, sl
00645f50  04 c0 8d e5                                      str ip, [sp, #4]
00645f54  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00645f58  08 c0 8d e5                                      str ip, [sp, #8]
00645f5c  a5 de 01 eb                                      bl #0x6bd9f8
00645f60  00 00 54 e3                                      cmp r4, #0
00645f64  9d ff ff 1a                                      bne #0x645de0
00645f68  9f ff ff ea                                      b #0x645dec
00645f6c  00 00 54 e3                                      cmp r4, #0
00645f70  34 40 83 05                                      streq r4, [r3, #0x34]
00645f74  c4 ff ff 0a                                      beq #0x645e8c
00645f78  04 20 94 e5                                      ldr r2, [r4, #4]
00645f7c  01 20 82 e2                                      add r2, r2, #1
00645f80  04 20 84 e5                                      str r2, [r4, #4]
00645f84  34 00 93 e5                                      ldr r0, [r3, #0x34]
00645f88  34 40 83 e5                                      str r4, [r3, #0x34]
00645f8c  00 00 50 e3                                      cmp r0, #0
00645f90  00 00 00 0a                                      beq #0x645f98
00645f94  7a 5d f3 eb                                      bl #0x31d584
00645f98  04 00 a0 e1                                      mov r0, r4
00645f9c  78 5d f3 eb                                      bl #0x31d584
00645fa0  b9 ff ff ea                                      b #0x645e8c
00645fa4  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
00645fa8  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00645fac  28 20 9d e5                                      ldr r2, [sp, #0x28]
00645fb0  dc fc ff eb                                      bl #0x645328
00645fb4  64 30 9d e5                                      ldr r3, [sp, #0x64]
00645fb8  00 00 53 e3                                      cmp r3, #0
00645fbc  d4 ff ff 0a                                      beq #0x645f14
00645fc0  00 20 93 e5                                      ldr r2, [r3]
00645fc4  01 20 82 e2                                      add r2, r2, #1
00645fc8  00 20 83 e5                                      str r2, [r3]
00645fcc  64 60 9d e5                                      ldr r6, [sp, #0x64]
00645fd0  00 00 56 e3                                      cmp r6, #0
00645fd4  06 50 a0 01                                      moveq r5, r6
00645fd8  78 ff ff 0a                                      beq #0x645dc0
00645fdc  00 30 96 e5                                      ldr r3, [r6]
00645fe0  01 30 43 e2                                      sub r3, r3, #1
00645fe4  00 00 53 e3                                      cmp r3, #0
00645fe8  00 30 86 e5                                      str r3, [r6]
00645fec  05 00 00 1a                                      bne #0x646008
00645ff0  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00645ff4  00 00 50 e3                                      cmp r0, #0
00645ff8  00 00 00 0a                                      beq #0x646000
00645ffc  2d 20 f3 eb                                      bl #0x30e0b8
00646000  00 20 a0 e3                                      mov r2, #0
00646004  0c 20 86 e5                                      str r2, [r6, #0xc]
00646008  64 90 8d e5                                      str sb, [sp, #0x64]
0064600c  09 50 a0 e1                                      mov r5, sb
00646010  6a ff ff ea                                      b #0x645dc0
00646014  44 b0 9d e5                                      ldr fp, [sp, #0x44]
00646018  38 10 9d e5                                      ldr r1, [sp, #0x38]
0064601c  00 00 51 e3                                      cmp r1, #0
00646020  01 00 00 0a                                      beq #0x64602c
00646024  01 00 a0 e1                                      mov r0, r1
00646028  55 5d f3 eb                                      bl #0x31d584
0064602c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00646030  30 c0 9d e5                                      ldr ip, [sp, #0x30]
00646034  0c 30 92 e5                                      ldr r3, [r2, #0xc]
00646038  00 00 5c e3                                      cmp ip, #0
0064603c  14 10 83 e2                                      add r1, r3, #0x14
00646040  20 20 83 e2                                      add r2, r3, #0x20
00646044  08 40 91 e5                                      ldr r4, [r1, #8]
00646048  20 c0 93 e5                                      ldr ip, [r3, #0x20]
0064604c  14 50 93 e5                                      ldr r5, [r3, #0x14]
00646050  08 00 92 e5                                      ldr r0, [r2, #8]
00646054  04 10 91 e5                                      ldr r1, [r1, #4]
00646058  04 30 92 e5                                      ldr r3, [r2, #4]
0064605c  24 50 8b e5                                      str r5, [fp, #0x24]
00646060  28 10 8b e5                                      str r1, [fp, #0x28]
00646064  2c 40 8b e5                                      str r4, [fp, #0x2c]
00646068  30 c0 8b e5                                      str ip, [fp, #0x30]
0064606c  34 30 8b e5                                      str r3, [fp, #0x34]
00646070  38 00 8b e5                                      str r0, [fp, #0x38]
00646074  0c 00 00 0a                                      beq #0x6460ac
00646078  30 10 9d e5                                      ldr r1, [sp, #0x30]
0064607c  00 30 91 e5                                      ldr r3, [r1]
00646080  01 30 43 e2                                      sub r3, r3, #1
00646084  00 00 53 e3                                      cmp r3, #0
00646088  00 30 81 e5                                      str r3, [r1]
0064608c  06 00 00 1a                                      bne #0x6460ac
00646090  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00646094  00 00 50 e3                                      cmp r0, #0
00646098  00 00 00 0a                                      beq #0x6460a0
0064609c  05 20 f3 eb                                      bl #0x30e0b8
006460a0  30 20 9d e5                                      ldr r2, [sp, #0x30]
006460a4  00 30 a0 e3                                      mov r3, #0
006460a8  0c 30 82 e5                                      str r3, [r2, #0xc]
006460ac  0b 00 a0 e1                                      mov r0, fp
006460b0  74 d0 8d e2                                      add sp, sp, #0x74
006460b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006460b8  08 30 97 e5                                      ldr r3, [r7, #8]
006460bc  54 20 8d e2                                      add r2, sp, #0x54
006460c0  6c 00 8d e2                                      add r0, sp, #0x6c
006460c4  24 10 93 e5                                      ldr r1, [r3, #0x24]
006460c8  60 fc ff eb                                      bl #0x645250
006460cc  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
006460d0  00 00 52 e3                                      cmp r2, #0
006460d4  03 ff ff 0a                                      beq #0x645ce8
006460d8  00 30 92 e5                                      ldr r3, [r2]
006460dc  01 30 83 e2                                      add r3, r3, #1
006460e0  00 30 82 e5                                      str r3, [r2]
006460e4  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
006460e8  00 00 52 e3                                      cmp r2, #0
006460ec  30 20 8d e5                                      str r2, [sp, #0x30]
006460f0  fe fe ff 0a                                      beq #0x645cf0
006460f4  00 30 92 e5                                      ldr r3, [r2]
006460f8  01 30 43 e2                                      sub r3, r3, #1
006460fc  00 00 53 e3                                      cmp r3, #0
00646100  00 30 82 e5                                      str r3, [r2]
00646104  06 00 00 1a                                      bne #0x646124
00646108  0c 00 92 e5                                      ldr r0, [r2, #0xc]
0064610c  00 00 50 e3                                      cmp r0, #0
00646110  00 00 00 0a                                      beq #0x646118
00646114  e7 1f f3 eb                                      bl #0x30e0b8
00646118  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0064611c  00 30 a0 e3                                      mov r3, #0
00646120  0c 30 8c e5                                      str r3, [ip, #0xc]
00646124  00 30 a0 e3                                      mov r3, #0
00646128  6c 30 8d e5                                      str r3, [sp, #0x6c]
0064612c  ef fe ff ea                                      b #0x645cf0
; mapping-symbol data/literal pool
00646130  18 ef 34 00 40 0a 00 00 b4 17 00 00 c0 3d 00 00  .byte 0x18, 0xef, 0x34, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0xc0, 0x3d, 0x00, 0x00
00646140  48 44 00 00 fc 46 00 00                          .byte 0x48, 0x44, 0x00, 0x00, 0xfc, 0x46, 0x00, 0x00
