; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00649904, declared_size=8, range_size=8, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZNK6glitch7collada13CMorphingMesh7getTypeEv
; demangled: glitch::collada::CMorphingMesh::getType() const
; decoder-mode: arm
00649904  01 00 a0 e3                                      mov r0, #1
00649908  1e ff 2f e1                                      bx lr

; FUNCTION 0x0064990c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZNK6glitch7collada13CMorphingMesh5cloneEv
; demangled: glitch::collada::CMorphingMesh::clone() const
; decoder-mode: arm
0064990c  00 20 a0 e3                                      mov r2, #0
00649910  00 20 80 e5                                      str r2, [r0]
00649914  1e ff 2f e1                                      bx lr

; FUNCTION 0x00649918, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZNK6glitch7collada13CMorphingMesh18getMeshBufferCountEv
; demangled: glitch::collada::CMorphingMesh::getMeshBufferCount() const
; decoder-mode: arm
00649918  10 40 2d e9                                      push {r4, lr}
0064991c  24 30 90 e5                                      ldr r3, [r0, #0x24]
00649920  00 30 93 e5                                      ldr r3, [r3]
00649924  03 00 a0 e1                                      mov r0, r3
00649928  00 30 93 e5                                      ldr r3, [r3]
0064992c  0f e0 a0 e1                                      mov lr, pc
00649930  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00649934  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00649938, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZNK6glitch7collada13CMorphingMesh13getMeshBufferEj
; demangled: glitch::collada::CMorphingMesh::getMeshBuffer(unsigned int) const
; decoder-mode: arm
00649938  0c 30 a0 e3                                      mov r3, #0xc
0064993c  93 02 03 e0                                      mul r3, r3, r2
00649940  18 20 91 e5                                      ldr r2, [r1, #0x18]
00649944  03 30 92 e7                                      ldr r3, [r2, r3]
00649948  00 00 53 e3                                      cmp r3, #0
0064994c  00 30 80 e5                                      str r3, [r0]
00649950  04 20 93 15                                      ldrne r2, [r3, #4]
00649954  01 20 82 12                                      addne r2, r2, #1
00649958  04 20 83 15                                      strne r2, [r3, #4]
0064995c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00649960, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZNK6glitch7collada13CMorphingMesh11getMaterialEj
; demangled: glitch::collada::CMorphingMesh::getMaterial(unsigned int) const
; decoder-mode: arm
00649960  18 30 91 e5                                      ldr r3, [r1, #0x18]
00649964  0c 10 a0 e3                                      mov r1, #0xc
00649968  91 32 23 e0                                      mla r3, r1, r2, r3
0064996c  04 30 93 e5                                      ldr r3, [r3, #4]
00649970  00 00 53 e3                                      cmp r3, #0
00649974  00 30 80 e5                                      str r3, [r0]
00649978  00 20 93 15                                      ldrne r2, [r3]
0064997c  01 20 82 12                                      addne r2, r2, #1
00649980  00 20 83 15                                      strne r2, [r3]
00649984  1e ff 2f e1                                      bx lr

; FUNCTION 0x00649988, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZNK6glitch7collada13CMorphingMesh29getMaterialVertexAttributeMapEj
; demangled: glitch::collada::CMorphingMesh::getMaterialVertexAttributeMap(unsigned int) const
; decoder-mode: arm
00649988  18 30 91 e5                                      ldr r3, [r1, #0x18]
0064998c  0c 10 a0 e3                                      mov r1, #0xc
00649990  91 32 23 e0                                      mla r3, r1, r2, r3
00649994  08 30 93 e5                                      ldr r3, [r3, #8]
00649998  00 00 53 e3                                      cmp r3, #0
0064999c  00 30 80 e5                                      str r3, [r0]
006499a0  00 20 93 15                                      ldrne r2, [r3]
006499a4  01 20 82 12                                      addne r2, r2, #1
006499a8  00 20 83 15                                      strne r2, [r3]
006499ac  1e ff 2f e1                                      bx lr

; FUNCTION 0x006499b0, declared_size=32, range_size=32, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZNK6glitch7collada13CMorphingMesh14getBoundingBoxEv
; demangled: glitch::collada::CMorphingMesh::getBoundingBox() const
; decoder-mode: arm
006499b0  10 40 2d e9                                      push {r4, lr}
006499b4  24 30 90 e5                                      ldr r3, [r0, #0x24]
006499b8  00 30 93 e5                                      ldr r3, [r3]
006499bc  03 00 a0 e1                                      mov r0, r3
006499c0  00 30 93 e5                                      ldr r3, [r3]
006499c4  0f e0 a0 e1                                      mov lr, pc
006499c8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
006499cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006499d0, declared_size=4, range_size=4, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMesh14setBoundingBoxERKNS_4core8aabbox3dIfEE
; demangled: glitch::collada::CMorphingMesh::setBoundingBox(glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
006499d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00649a88, declared_size=180, range_size=180, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS3_INS4_27CMaterialVertexAttributeMapEEE
; demangled: glitch::collada::CMorphingMesh::setMaterial(unsigned int, boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&)
; decoder-mode: arm
00649a88  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00649a8c  00 40 a0 e1                                      mov r4, r0
00649a90  24 00 90 e5                                      ldr r0, [r0, #0x24]
00649a94  0c d0 4d e2                                      sub sp, sp, #0xc
00649a98  01 50 a0 e1                                      mov r5, r1
00649a9c  00 c0 90 e5                                      ldr ip, [r0]
00649aa0  02 60 a0 e1                                      mov r6, r2
00649aa4  03 70 a0 e1                                      mov r7, r3
00649aa8  0c 00 a0 e1                                      mov r0, ip
00649aac  00 c0 9c e5                                      ldr ip, [ip]
00649ab0  0f e0 a0 e1                                      mov lr, pc
00649ab4  20 f0 9c e5                                      ldr pc, [ip, #0x20]
00649ab8  00 30 96 e5                                      ldr r3, [r6]
00649abc  0c 20 a0 e3                                      mov r2, #0xc
00649ac0  92 05 05 e0                                      mul r5, r2, r5
00649ac4  00 00 53 e3                                      cmp r3, #0
00649ac8  18 20 94 e5                                      ldr r2, [r4, #0x18]
00649acc  04 30 8d e5                                      str r3, [sp, #4]
00649ad0  00 10 93 15                                      ldrne r1, [r3]
00649ad4  05 20 82 e0                                      add r2, r2, r5
00649ad8  08 00 8d e2                                      add r0, sp, #8
00649adc  01 10 81 12                                      addne r1, r1, #1
00649ae0  00 10 83 15                                      strne r1, [r3]
00649ae4  04 30 9d 15                                      ldrne r3, [sp, #4]
00649ae8  04 10 92 e5                                      ldr r1, [r2, #4]
00649aec  04 10 20 e5                                      str r1, [r0, #-4]!
00649af0  04 30 82 e5                                      str r3, [r2, #4]
00649af4  3b 1c f3 eb                                      bl #0x310be8
00649af8  00 30 97 e5                                      ldr r3, [r7]
00649afc  18 20 94 e5                                      ldr r2, [r4, #0x18]
00649b00  08 00 8d e2                                      add r0, sp, #8
00649b04  00 30 8d e5                                      str r3, [sp]
00649b08  00 00 53 e3                                      cmp r3, #0
00649b0c  05 50 82 e0                                      add r5, r2, r5
00649b10  00 20 93 15                                      ldrne r2, [r3]
00649b14  01 20 82 12                                      addne r2, r2, #1
00649b18  00 20 83 15                                      strne r2, [r3]
00649b1c  00 30 9d 15                                      ldrne r3, [sp]
00649b20  08 20 95 e5                                      ldr r2, [r5, #8]
00649b24  08 20 20 e5                                      str r2, [r0, #-8]!
00649b28  08 30 85 e5                                      str r3, [r5, #8]
00649b2c  0d 00 a0 e1                                      mov r0, sp
00649b30  cd c1 fc eb                                      bl #0x57a26c
00649b34  0c d0 8d e2                                      add sp, sp, #0xc
00649b38  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0064a1b8, declared_size=144, range_size=144, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMeshD1Ev
; demangled: glitch::collada::CMorphingMesh::~CMorphingMesh()
; decoder-mode: arm
0064a1b8  70 40 2d e9                                      push {r4, r5, r6, lr}
0064a1bc  78 50 9f e5                                      ldr r5, [pc, #0x78]
0064a1c0  78 30 9f e5                                      ldr r3, [pc, #0x78]
0064a1c4  00 40 a0 e1                                      mov r4, r0
0064a1c8  05 50 8f e0                                      add r5, pc, r5
0064a1cc  03 30 95 e7                                      ldr r3, [r5, r3]
0064a1d0  38 00 90 e5                                      ldr r0, [r0, #0x38]
0064a1d4  04 10 a0 e1                                      mov r1, r4
0064a1d8  08 30 83 e2                                      add r3, r3, #8
0064a1dc  08 d0 4d e2                                      sub sp, sp, #8
0064a1e0  00 30 84 e5                                      str r3, [r4]
0064a1e4  85 43 00 eb                                      bl #0x65b000
0064a1e8  18 10 94 e5                                      ldr r1, [r4, #0x18]
0064a1ec  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0064a1f0  18 60 84 e2                                      add r6, r4, #0x18
0064a1f4  02 00 51 e1                                      cmp r1, r2
0064a1f8  02 00 00 0a                                      beq #0x64a208
0064a1fc  06 00 a0 e1                                      mov r0, r6
0064a200  04 30 8d e2                                      add r3, sp, #4
0064a204  b5 ff ff eb                                      bl #0x64a0e0
0064a208  24 00 84 e2                                      add r0, r4, #0x24
0064a20c  d1 fe ff eb                                      bl #0x649d58
0064a210  06 00 a0 e1                                      mov r0, r6
0064a214  d6 ff ff eb                                      bl #0x64a174
0064a218  24 30 9f e5                                      ldr r3, [pc, #0x24]
0064a21c  04 00 a0 e1                                      mov r0, r4
0064a220  03 30 95 e7                                      ldr r3, [r5, r3]
0064a224  08 30 83 e2                                      add r3, r3, #8
0064a228  0c 30 80 e4                                      str r3, [r0], #0xc
0064a22c  90 3c ff eb                                      bl #0x619474
0064a230  04 00 a0 e1                                      mov r0, r4
0064a234  08 d0 8d e2                                      add sp, sp, #8
0064a238  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0064a23c  c8 a8 34 00 3c 33 00 00 04 37 00 00              .byte 0xc8, 0xa8, 0x34, 0x00, 0x3c, 0x33, 0x00, 0x00, 0x04, 0x37, 0x00, 0x00

; FUNCTION 0x0064a248, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMeshD0Ev
; demangled: glitch::collada::CMorphingMesh::~CMorphingMesh()
; decoder-mode: arm
0064a248  10 40 2d e9                                      push {r4, lr}
0064a24c  00 40 a0 e1                                      mov r4, r0
0064a250  d8 ff ff eb                                      bl #0x64a1b8
0064a254  04 00 a0 e1                                      mov r0, r4
0064a258  14 10 f3 eb                                      bl #0x30e2b0
0064a25c  04 00 a0 e1                                      mov r0, r4
0064a260  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0064a264, declared_size=144, range_size=144, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMeshD2Ev
; demangled: glitch::collada::CMorphingMesh::~CMorphingMesh()
; decoder-mode: arm
0064a264  70 40 2d e9                                      push {r4, r5, r6, lr}
0064a268  78 50 9f e5                                      ldr r5, [pc, #0x78]
0064a26c  78 30 9f e5                                      ldr r3, [pc, #0x78]
0064a270  00 40 a0 e1                                      mov r4, r0
0064a274  05 50 8f e0                                      add r5, pc, r5
0064a278  03 30 95 e7                                      ldr r3, [r5, r3]
0064a27c  38 00 90 e5                                      ldr r0, [r0, #0x38]
0064a280  04 10 a0 e1                                      mov r1, r4
0064a284  08 30 83 e2                                      add r3, r3, #8
0064a288  08 d0 4d e2                                      sub sp, sp, #8
0064a28c  00 30 84 e5                                      str r3, [r4]
0064a290  5a 43 00 eb                                      bl #0x65b000
0064a294  18 10 94 e5                                      ldr r1, [r4, #0x18]
0064a298  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0064a29c  18 60 84 e2                                      add r6, r4, #0x18
0064a2a0  02 00 51 e1                                      cmp r1, r2
0064a2a4  02 00 00 0a                                      beq #0x64a2b4
0064a2a8  06 00 a0 e1                                      mov r0, r6
0064a2ac  04 30 8d e2                                      add r3, sp, #4
0064a2b0  8a ff ff eb                                      bl #0x64a0e0
0064a2b4  24 00 84 e2                                      add r0, r4, #0x24
0064a2b8  a6 fe ff eb                                      bl #0x649d58
0064a2bc  06 00 a0 e1                                      mov r0, r6
0064a2c0  ab ff ff eb                                      bl #0x64a174
0064a2c4  24 30 9f e5                                      ldr r3, [pc, #0x24]
0064a2c8  04 00 a0 e1                                      mov r0, r4
0064a2cc  03 30 95 e7                                      ldr r3, [r5, r3]
0064a2d0  08 30 83 e2                                      add r3, r3, #8
0064a2d4  0c 30 80 e4                                      str r3, [r0], #0xc
0064a2d8  65 3c ff eb                                      bl #0x619474
0064a2dc  04 00 a0 e1                                      mov r0, r4
0064a2e0  08 d0 8d e2                                      add sp, sp, #8
0064a2e4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0064a2e8  1c a8 34 00 3c 33 00 00 04 37 00 00              .byte 0x1c, 0xa8, 0x34, 0x00, 0x3c, 0x33, 0x00, 0x00, 0x04, 0x37, 0x00, 0x00

; FUNCTION 0x0064a2f4, declared_size=192, range_size=192, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMesh20releaseProcessBufferEPNS_5video12IVideoDriverEj
; demangled: glitch::collada::CMorphingMesh::releaseProcessBuffer(glitch::video::IVideoDriver*, unsigned int)
; decoder-mode: arm
0064a2f4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064a2f8  00 40 a0 e1                                      mov r4, r0
0064a2fc  14 d0 4d e2                                      sub sp, sp, #0x14
0064a300  00 30 90 e5                                      ldr r3, [r0]
0064a304  01 60 a0 e1                                      mov r6, r1
0064a308  0c 00 8d e2                                      add r0, sp, #0xc
0064a30c  04 10 a0 e1                                      mov r1, r4
0064a310  02 50 a0 e1                                      mov r5, r2
0064a314  0f e0 a0 e1                                      mov lr, pc
0064a318  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0064a31c  0c 80 9d e5                                      ldr r8, [sp, #0xc]
0064a320  00 00 58 e3                                      cmp r8, #0
0064a324  01 00 00 0a                                      beq #0x64a330
0064a328  08 00 a0 e1                                      mov r0, r8
0064a32c  94 4c f3 eb                                      bl #0x31d584
0064a330  18 30 94 e5                                      ldr r3, [r4, #0x18]
0064a334  0c 90 a0 e3                                      mov sb, #0xc
0064a338  00 20 96 e5                                      ldr r2, [r6]
0064a33c  99 35 23 e0                                      mla r3, sb, r5, r3
0064a340  f4 a1 92 e5                                      ldr sl, [r2, #0x1f4]
0064a344  04 30 93 e5                                      ldr r3, [r3, #4]
0064a348  24 70 98 e5                                      ldr r7, [r8, #0x24]
0064a34c  1f 50 05 e2                                      and r5, r5, #0x1f
0064a350  03 00 a0 e1                                      mov r0, r3
0064a354  04 b0 93 e5                                      ldr fp, [r3, #4]
0064a358  75 ee fd eb                                      bl #0x5c5d34
0064a35c  18 30 9b e5                                      ldr r3, [fp, #0x18]
0064a360  01 c0 00 e3                                      movw ip, #1
0064a364  02 c0 40 e3                                      movt ip, #2
0064a368  99 30 29 e0                                      mla sb, sb, r0, r3
0064a36c  06 00 a0 e1                                      mov r0, r6
0064a370  08 30 99 e5                                      ldr r3, [sb, #8]
0064a374  00 e0 a0 e3                                      mov lr, #0
0064a378  14 20 88 e2                                      add r2, r8, #0x14
0064a37c  20 60 93 e5                                      ldr r6, [r3, #0x20]
0064a380  0e 10 a0 e1                                      mov r1, lr
0064a384  07 30 a0 e1                                      mov r3, r7
0064a388  38 60 96 e5                                      ldr r6, [r6, #0x38]
0064a38c  04 e0 8d e5                                      str lr, [sp, #4]
0064a390  0c c0 06 e0                                      and ip, r6, ip
0064a394  00 c0 8d e5                                      str ip, [sp]
0064a398  3a ff 2f e1                                      blx sl
0064a39c  14 30 94 e5                                      ldr r3, [r4, #0x14]
0064a3a0  01 20 a0 e3                                      mov r2, #1
0064a3a4  12 55 c3 e1                                      bic r5, r3, r2, lsl r5
0064a3a8  14 50 84 e5                                      str r5, [r4, #0x14]
0064a3ac  14 d0 8d e2                                      add sp, sp, #0x14
0064a3b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0064a3b4, declared_size=816, range_size=816, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMesh4initEPNS_5video12IVideoDriverEb
; demangled: glitch::collada::CMorphingMesh::init(glitch::video::IVideoDriver*, bool)
; decoder-mode: arm
0064a3b4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064a3b8  24 30 90 e5                                      ldr r3, [r0, #0x24]
0064a3bc  6c d0 4d e2                                      sub sp, sp, #0x6c
0064a3c0  24 10 8d e5                                      str r1, [sp, #0x24]
0064a3c4  14 20 8d e5                                      str r2, [sp, #0x14]
0064a3c8  00 70 a0 e1                                      mov r7, r0
0064a3cc  08 03 9f e5                                      ldr r0, [pc, #0x308]
0064a3d0  00 30 93 e5                                      ldr r3, [r3]
0064a3d4  30 00 8d e5                                      str r0, [sp, #0x30]
0064a3d8  03 00 a0 e1                                      mov r0, r3
0064a3dc  00 30 93 e5                                      ldr r3, [r3]
0064a3e0  0f e0 a0 e1                                      mov lr, pc
0064a3e4  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0064a3e8  30 10 9d e5                                      ldr r1, [sp, #0x30]
0064a3ec  24 30 97 e5                                      ldr r3, [r7, #0x24]
0064a3f0  01 10 8f e0                                      add r1, pc, r1
0064a3f4  30 10 8d e5                                      str r1, [sp, #0x30]
0064a3f8  00 30 93 e5                                      ldr r3, [r3]
0064a3fc  03 00 a0 e1                                      mov r0, r3
0064a400  00 30 93 e5                                      ldr r3, [r3]
0064a404  0f e0 a0 e1                                      mov lr, pc
0064a408  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0064a40c  00 00 50 e3                                      cmp r0, #0
0064a410  10 00 8d e5                                      str r0, [sp, #0x10]
0064a414  7e 00 00 0a                                      beq #0x64a614
0064a418  c0 22 9f e5                                      ldr r2, [pc, #0x2c0]
0064a41c  64 30 8d e2                                      add r3, sp, #0x64
0064a420  00 90 a0 e3                                      mov sb, #0
0064a424  34 20 8d e5                                      str r2, [sp, #0x34]
0064a428  20 30 8d e5                                      str r3, [sp, #0x20]
0064a42c  5c 00 8d e2                                      add r0, sp, #0x5c
0064a430  4c 10 8d e2                                      add r1, sp, #0x4c
0064a434  3c 20 8d e2                                      add r2, sp, #0x3c
0064a438  60 30 8d e2                                      add r3, sp, #0x60
0064a43c  1c 00 8d e5                                      str r0, [sp, #0x1c]
0064a440  18 10 8d e5                                      str r1, [sp, #0x18]
0064a444  09 80 a0 e1                                      mov r8, sb
0064a448  01 b0 a0 e3                                      mov fp, #1
0064a44c  28 20 8d e5                                      str r2, [sp, #0x28]
0064a450  2c 30 8d e5                                      str r3, [sp, #0x2c]
0064a454  09 a0 a0 e1                                      mov sl, sb
0064a458  08 00 00 ea                                      b #0x64a480
0064a45c  14 30 97 e5                                      ldr r3, [r7, #0x14]
0064a460  1f 20 0a e2                                      and r2, sl, #0x1f
0064a464  01 a0 8a e2                                      add sl, sl, #1
0064a468  1b 32 c3 e1                                      bic r3, r3, fp, lsl r2
0064a46c  14 30 87 e5                                      str r3, [r7, #0x14]
0064a470  10 10 9d e5                                      ldr r1, [sp, #0x10]
0064a474  0c 90 89 e2                                      add sb, sb, #0xc
0064a478  01 00 5a e1                                      cmp sl, r1
0064a47c  64 00 00 0a                                      beq #0x64a614
0064a480  24 30 97 e5                                      ldr r3, [r7, #0x24]
0064a484  20 00 9d e5                                      ldr r0, [sp, #0x20]
0064a488  0a 20 a0 e1                                      mov r2, sl
0064a48c  00 30 93 e5                                      ldr r3, [r3]
0064a490  03 10 a0 e1                                      mov r1, r3
0064a494  00 30 93 e5                                      ldr r3, [r3]
0064a498  0f e0 a0 e1                                      mov lr, pc
0064a49c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0064a4a0  64 60 9d e5                                      ldr r6, [sp, #0x64]
0064a4a4  00 00 56 e3                                      cmp r6, #0
0064a4a8  01 00 00 0a                                      beq #0x64a4b4
0064a4ac  06 00 a0 e1                                      mov r0, r6
0064a4b0  33 4c f3 eb                                      bl #0x31d584
0064a4b4  18 30 97 e5                                      ldr r3, [r7, #0x18]
0064a4b8  09 50 93 e7                                      ldr r5, [r3, sb]
0064a4bc  00 00 55 e3                                      cmp r5, #0
0064a4c0  55 00 00 0a                                      beq #0x64a61c
0064a4c4  14 30 96 e5                                      ldr r3, [r6, #0x14]
0064a4c8  14 40 95 e5                                      ldr r4, [r5, #0x14]
0064a4cc  00 00 53 e3                                      cmp r3, #0
0064a4d0  5c 30 8d e5                                      str r3, [sp, #0x5c]
0064a4d4  00 20 93 15                                      ldrne r2, [r3]
0064a4d8  01 20 82 12                                      addne r2, r2, #1
0064a4dc  00 20 83 15                                      strne r2, [r3]
0064a4e0  5c 30 9d 15                                      ldrne r3, [sp, #0x5c]
0064a4e4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0064a4e8  08 30 93 e5                                      ldr r3, [r3, #8]
0064a4ec  0c 30 8d e5                                      str r3, [sp, #0xc]
0064a4f0  a6 51 f4 eb                                      bl #0x35eb90
0064a4f4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0064a4f8  02 28 e0 e3                                      mvn r2, #0x20000
0064a4fc  14 10 86 e2                                      add r1, r6, #0x14
0064a500  08 30 84 e5                                      str r3, [r4, #8]
0064a504  01 20 42 e2                                      sub r2, r2, #1
0064a508  00 30 a0 e3                                      mov r3, #0
0064a50c  04 00 a0 e1                                      mov r0, r4
0064a510  14 60 84 e2                                      add r6, r4, #0x14
0064a514  00 b0 8d e5                                      str fp, [sp]
0064a518  d0 59 fd eb                                      bl #0x5a0c60
0064a51c  06 30 a0 e3                                      mov r3, #6
0064a520  04 00 a0 e1                                      mov r0, r4
0064a524  54 30 8d e5                                      str r3, [sp, #0x54]
0064a528  06 10 a0 e1                                      mov r1, r6
0064a52c  03 30 a0 e3                                      mov r3, #3
0064a530  18 20 9d e5                                      ldr r2, [sp, #0x18]
0064a534  4c 80 8d e5                                      str r8, [sp, #0x4c]
0064a538  50 80 8d e5                                      str r8, [sp, #0x50]
0064a53c  b8 35 cd e1                                      strh r3, [sp, #0x58]
0064a540  ba 85 cd e1                                      strh r8, [sp, #0x5a]
0064a544  5a fe ff eb                                      bl #0x649eb4
0064a548  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0064a54c  00 00 50 e3                                      cmp r0, #0
0064a550  00 00 00 0a                                      beq #0x64a558
0064a554  0a 4c f3 eb                                      bl #0x31d584
0064a558  04 30 94 e5                                      ldr r3, [r4, #4]
0064a55c  02 08 13 e3                                      tst r3, #0x20000
0064a560  10 00 00 0a                                      beq #0x64a5a8
0064a564  0c 10 d4 e5                                      ldrb r1, [r4, #0xc]
0064a568  06 30 a0 e3                                      mov r3, #6
0064a56c  04 00 a0 e1                                      mov r0, r4
0064a570  01 10 81 e2                                      add r1, r1, #1
0064a574  44 30 8d e5                                      str r3, [sp, #0x44]
0064a578  28 20 9d e5                                      ldr r2, [sp, #0x28]
0064a57c  03 30 a0 e3                                      mov r3, #3
0064a580  01 12 86 e0                                      add r1, r6, r1, lsl #4
0064a584  3c 80 8d e5                                      str r8, [sp, #0x3c]
0064a588  40 80 8d e5                                      str r8, [sp, #0x40]
0064a58c  b8 34 cd e1                                      strh r3, [sp, #0x48]
0064a590  ba 84 cd e1                                      strh r8, [sp, #0x4a]
0064a594  46 fe ff eb                                      bl #0x649eb4
0064a598  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0064a59c  00 00 50 e3                                      cmp r0, #0
0064a5a0  00 00 00 0a                                      beq #0x64a5a8
0064a5a4  f6 4b f3 eb                                      bl #0x31d584
0064a5a8  14 00 9d e5                                      ldr r0, [sp, #0x14]
0064a5ac  00 00 50 e3                                      cmp r0, #0
0064a5b0  a9 ff ff 1a                                      bne #0x64a45c
0064a5b4  60 50 8d e5                                      str r5, [sp, #0x60]
0064a5b8  04 30 95 e5                                      ldr r3, [r5, #4]
0064a5bc  02 28 a0 e3                                      mov r2, #0x20000
0064a5c0  01 20 82 e2                                      add r2, r2, #1
0064a5c4  01 30 83 e2                                      add r3, r3, #1
0064a5c8  04 30 85 e5                                      str r3, [r5, #4]
0064a5cc  24 00 9d e5                                      ldr r0, [sp, #0x24]
0064a5d0  0b 10 a0 e1                                      mov r1, fp
0064a5d4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0064a5d8  00 b0 8d e5                                      str fp, [sp]
0064a5dc  af fc ff eb                                      bl #0x6498a0
0064a5e0  60 00 9d e5                                      ldr r0, [sp, #0x60]
0064a5e4  00 00 50 e3                                      cmp r0, #0
0064a5e8  00 00 00 0a                                      beq #0x64a5f0
0064a5ec  e4 4b f3 eb                                      bl #0x31d584
0064a5f0  14 30 97 e5                                      ldr r3, [r7, #0x14]
0064a5f4  1f 20 0a e2                                      and r2, sl, #0x1f
0064a5f8  01 a0 8a e2                                      add sl, sl, #1
0064a5fc  1b 32 83 e1                                      orr r3, r3, fp, lsl r2
0064a600  14 30 87 e5                                      str r3, [r7, #0x14]
0064a604  10 10 9d e5                                      ldr r1, [sp, #0x10]
0064a608  0c 90 89 e2                                      add sb, sb, #0xc
0064a60c  01 00 5a e1                                      cmp sl, r1
0064a610  9a ff ff 1a                                      bne #0x64a480
0064a614  6c d0 8d e2                                      add sp, sp, #0x6c
0064a618  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0064a61c  14 30 96 e5                                      ldr r3, [r6, #0x14]
0064a620  05 10 a0 e1                                      mov r1, r5
0064a624  38 00 a0 e3                                      mov r0, #0x38
0064a628  04 40 93 e5                                      ldr r4, [r3, #4]
0064a62c  de a6 fb eb                                      bl #0x5341ac
0064a630  30 10 9d e5                                      ldr r1, [sp, #0x30]
0064a634  00 50 a0 e1                                      mov r5, r0
0064a638  34 00 9d e5                                      ldr r0, [sp, #0x34]
0064a63c  04 80 85 e5                                      str r8, [r5, #4]
0064a640  08 80 85 e5                                      str r8, [r5, #8]
0064a644  00 30 91 e7                                      ldr r3, [r1, r0]
0064a648  0c 80 85 e5                                      str r8, [r5, #0xc]
0064a64c  14 00 85 e2                                      add r0, r5, #0x14
0064a650  08 30 83 e2                                      add r3, r3, #8
0064a654  00 30 85 e5                                      str r3, [r5]
0064a658  10 80 85 e5                                      str r8, [r5, #0x10]
0064a65c  04 10 a0 e1                                      mov r1, r4
0064a660  3d 5b fd eb                                      bl #0x5a135c
0064a664  18 30 96 e5                                      ldr r3, [r6, #0x18]
0064a668  18 30 85 e5                                      str r3, [r5, #0x18]
0064a66c  00 00 53 e3                                      cmp r3, #0
0064a670  04 20 93 15                                      ldrne r2, [r3, #4]
0064a674  01 20 82 12                                      addne r2, r2, #1
0064a678  04 20 83 15                                      strne r2, [r3, #4]
0064a67c  1c 30 96 e5                                      ldr r3, [r6, #0x1c]
0064a680  04 20 95 e5                                      ldr r2, [r5, #4]
0064a684  1c 30 85 e5                                      str r3, [r5, #0x1c]
0064a688  20 30 96 e5                                      ldr r3, [r6, #0x20]
0064a68c  01 20 82 e2                                      add r2, r2, #1
0064a690  20 30 85 e5                                      str r3, [r5, #0x20]
0064a694  24 30 96 e5                                      ldr r3, [r6, #0x24]
0064a698  24 30 85 e5                                      str r3, [r5, #0x24]
0064a69c  28 30 96 e5                                      ldr r3, [r6, #0x28]
0064a6a0  28 30 85 e5                                      str r3, [r5, #0x28]
0064a6a4  bc 32 d6 e1                                      ldrh r3, [r6, #0x2c]
0064a6a8  bc 32 c5 e1                                      strh r3, [r5, #0x2c]
0064a6ac  be 02 d6 e1                                      ldrh r0, [r6, #0x2e]
0064a6b0  30 80 85 e5                                      str r8, [r5, #0x30]
0064a6b4  34 b0 c5 e5                                      strb fp, [r5, #0x34]
0064a6b8  be 02 c5 e1                                      strh r0, [r5, #0x2e]
0064a6bc  18 30 97 e5                                      ldr r3, [r7, #0x18]
0064a6c0  04 20 85 e5                                      str r2, [r5, #4]
0064a6c4  09 00 93 e7                                      ldr r0, [r3, sb]
0064a6c8  09 50 83 e7                                      str r5, [r3, sb]
0064a6cc  00 00 50 e3                                      cmp r0, #0
0064a6d0  7b ff ff 0a                                      beq #0x64a4c4
0064a6d4  aa 4b f3 eb                                      bl #0x31d584
0064a6d8  79 ff ff ea                                      b #0x64a4c4
; mapping-symbol data/literal pool
0064a6dc  a0 a6 34 00 54 0c 00 00                          .byte 0xa0, 0xa6, 0x34, 0x00, 0x54, 0x0c, 0x00, 0x00

; FUNCTION 0x0064a6e4, declared_size=2312, range_size=2312, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMesh5morphEj
; demangled: glitch::collada::CMorphingMesh::morph(unsigned int)
; decoder-mode: arm
0064a6e4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064a6e8  24 30 90 e5                                      ldr r3, [r0, #0x24]
0064a6ec  6c d0 4d e2                                      sub sp, sp, #0x6c
0064a6f0  20 10 8d e5                                      str r1, [sp, #0x20]
0064a6f4  00 30 93 e5                                      ldr r3, [r3]
0064a6f8  01 20 a0 e1                                      mov r2, r1
0064a6fc  00 60 a0 e1                                      mov r6, r0
0064a700  03 10 a0 e1                                      mov r1, r3
0064a704  64 00 8d e2                                      add r0, sp, #0x64
0064a708  00 30 93 e5                                      ldr r3, [r3]
0064a70c  0f e0 a0 e1                                      mov lr, pc
0064a710  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0064a714  64 40 9d e5                                      ldr r4, [sp, #0x64]
0064a718  00 00 54 e3                                      cmp r4, #0
0064a71c  01 00 00 0a                                      beq #0x64a728
0064a720  04 00 a0 e1                                      mov r0, r4
0064a724  96 4b f3 eb                                      bl #0x31d584
0064a728  28 20 94 e5                                      ldr r2, [r4, #0x28]
0064a72c  24 40 94 e5                                      ldr r4, [r4, #0x24]
0064a730  24 30 96 e5                                      ldr r3, [r6, #0x24]
0064a734  fe 15 a0 e3                                      mov r1, #0x3f800000
0064a738  24 40 8d e5                                      str r4, [sp, #0x24]
0064a73c  28 50 96 e5                                      ldr r5, [r6, #0x28]
0064a740  04 10 83 e5                                      str r1, [r3, #4]
0064a744  30 10 96 e5                                      ldr r1, [r6, #0x30]
0064a748  05 50 63 e0                                      rsb r5, r3, r5
0064a74c  24 00 9d e5                                      ldr r0, [sp, #0x24]
0064a750  04 30 91 e5                                      ldr r3, [r1, #4]
0064a754  c5 51 a0 e1                                      asr r5, r5, #3
0064a758  02 20 60 e0                                      rsb r2, r0, r2
0064a75c  00 00 53 e3                                      cmp r3, #0
0064a760  28 20 8d e5                                      str r2, [sp, #0x28]
0064a764  0c 00 00 1a                                      bne #0x64a79c
0064a768  01 00 55 e3                                      cmp r5, #1
0064a76c  0a 00 00 9a                                      bls #0x64a79c
0064a770  01 40 a0 e3                                      mov r4, #1
0064a774  24 70 96 e5                                      ldr r7, [r6, #0x24]
0064a778  84 31 87 e0                                      add r3, r7, r4, lsl #3
0064a77c  04 10 93 e5                                      ldr r1, [r3, #4]
0064a780  04 00 97 e5                                      ldr r0, [r7, #4]
0064a784  08 0f f3 eb                                      bl #0x30e3ac
0064a788  01 40 84 e2                                      add r4, r4, #1
0064a78c  05 00 54 e1                                      cmp r4, r5
0064a790  04 00 87 e5                                      str r0, [r7, #4]
0064a794  f6 ff ff 1a                                      bne #0x64a774
0064a798  01 00 00 ea                                      b #0x64a7a4
0064a79c  00 00 55 e3                                      cmp r5, #0
0064a7a0  08 02 00 0a                                      beq #0x64afc8
0064a7a4  24 a0 96 e5                                      ldr sl, [r6, #0x24]
0064a7a8  bd 17 03 e3                                      movw r1, #0x37bd
0064a7ac  86 15 43 e3                                      movt r1, #0x3586
0064a7b0  04 00 9a e5                                      ldr r0, [sl, #4]
0064a7b4  02 01 c0 e3                                      bic r0, r0, #0x80000000
0064a7b8  7b 10 f3 eb                                      bl #0x30e9ac
0064a7bc  00 00 50 e3                                      cmp r0, #0
0064a7c0  00 70 a0 03                                      moveq r7, #0
0064a7c4  01 40 a0 03                                      moveq r4, #1
0064a7c8  10 00 00 0a                                      beq #0x64a810
0064a7cc  00 40 a0 e3                                      mov r4, #0
0064a7d0  04 00 00 ea                                      b #0x64a7e8
0064a7d4  04 00 98 e5                                      ldr r0, [r8, #4]
0064a7d8  02 01 c0 e3                                      bic r0, r0, #0x80000000
0064a7dc  72 10 f3 eb                                      bl #0x30e9ac
0064a7e0  00 00 50 e3                                      cmp r0, #0
0064a7e4  b2 01 00 0a                                      beq #0x64aeb4
0064a7e8  01 40 84 e2                                      add r4, r4, #1
0064a7ec  bd 17 03 e3                                      movw r1, #0x37bd
0064a7f0  84 71 a0 e1                                      lsl r7, r4, #3
0064a7f4  05 00 54 e1                                      cmp r4, r5
0064a7f8  86 15 43 e3                                      movt r1, #0x3586
0064a7fc  07 80 8a e0                                      add r8, sl, r7
0064a800  f3 ff ff 1a                                      bne #0x64a7d4
0064a804  85 71 a0 e1                                      lsl r7, r5, #3
0064a808  07 a0 8a e0                                      add sl, sl, r7
0064a80c  01 40 85 e2                                      add r4, r5, #1
0064a810  00 30 9a e5                                      ldr r3, [sl]
0064a814  20 20 9d e5                                      ldr r2, [sp, #0x20]
0064a818  60 00 8d e2                                      add r0, sp, #0x60
0064a81c  03 10 a0 e1                                      mov r1, r3
0064a820  00 30 93 e5                                      ldr r3, [r3]
0064a824  0f e0 a0 e1                                      mov lr, pc
0064a828  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0064a82c  60 00 9d e5                                      ldr r0, [sp, #0x60]
0064a830  14 a0 90 e5                                      ldr sl, [r0, #0x14]
0064a834  52 4b f3 eb                                      bl #0x31d584
0064a838  01 10 a0 e3                                      mov r1, #1
0064a83c  14 00 9a e5                                      ldr r0, [sl, #0x14]
0064a840  a5 5c fd eb                                      bl #0x5a1adc
0064a844  14 80 8a e2                                      add r8, sl, #0x14
0064a848  04 30 98 e5                                      ldr r3, [r8, #4]
0064a84c  00 c0 96 e5                                      ldr ip, [r6]
0064a850  06 10 a0 e1                                      mov r1, r6
0064a854  03 30 80 e0                                      add r3, r0, r3
0064a858  1c 30 8d e5                                      str r3, [sp, #0x1c]
0064a85c  20 20 9d e5                                      ldr r2, [sp, #0x20]
0064a860  5c 00 8d e2                                      add r0, sp, #0x5c
0064a864  be b0 d8 e1                                      ldrh fp, [r8, #0xe]
0064a868  0f e0 a0 e1                                      mov lr, pc
0064a86c  14 f0 9c e5                                      ldr pc, [ip, #0x14]
0064a870  24 10 9d e5                                      ldr r1, [sp, #0x24]
0064a874  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0064a878  5c 90 9d e5                                      ldr sb, [sp, #0x5c]
0064a87c  91 2b 21 e0                                      mla r1, r1, fp, r2
0064a880  00 00 59 e3                                      cmp sb, #0
0064a884  10 10 8d e5                                      str r1, [sp, #0x10]
0064a888  01 00 00 0a                                      beq #0x64a894
0064a88c  09 00 a0 e1                                      mov r0, sb
0064a890  3b 4b f3 eb                                      bl #0x31d584
0064a894  14 90 99 e5                                      ldr sb, [sb, #0x14]
0064a898  04 10 a0 e3                                      mov r1, #4
0064a89c  2c 90 8d e5                                      str sb, [sp, #0x2c]
0064a8a0  14 00 99 e5                                      ldr r0, [sb, #0x14]
0064a8a4  51 5c fd eb                                      bl #0x5a19f0
0064a8a8  2c 90 9d e5                                      ldr sb, [sp, #0x2c]
0064a8ac  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0064a8b0  14 90 89 e2                                      add sb, sb, #0x14
0064a8b4  be c0 d9 e1                                      ldrh ip, [sb, #0xe]
0064a8b8  04 30 99 e5                                      ldr r3, [sb, #4]
0064a8bc  14 c0 8d e5                                      str ip, [sp, #0x14]
0064a8c0  03 30 80 e0                                      add r3, r0, r3
0064a8c4  24 20 96 e5                                      ldr r2, [r6, #0x24]
0064a8c8  9e 3c 2e e0                                      mla lr, lr, ip, r3
0064a8cc  44 30 8d e5                                      str r3, [sp, #0x44]
0064a8d0  40 e0 8d e5                                      str lr, [sp, #0x40]
0064a8d4  07 30 82 e0                                      add r3, r2, r7
0064a8d8  04 c0 93 e5                                      ldr ip, [r3, #4]
0064a8dc  10 20 9d e5                                      ldr r2, [sp, #0x10]
0064a8e0  0b 30 a0 e1                                      mov r3, fp
0064a8e4  00 c0 8d e5                                      str ip, [sp]
0064a8e8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0064a8ec  0e 00 a0 e1                                      mov r0, lr
0064a8f0  14 10 9d e5                                      ldr r1, [sp, #0x14]
0064a8f4  04 c0 8d e5                                      str ip, [sp, #4]
0064a8f8  8f fc ff eb                                      bl #0x649b3c
0064a8fc  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0064a900  04 30 9a e5                                      ldr r3, [sl, #4]
0064a904  04 20 90 e5                                      ldr r2, [r0, #4]
0064a908  03 30 02 e0                                      and r3, r2, r3
0064a90c  02 08 13 e3                                      tst r3, #0x20000
0064a910  35 00 00 0a                                      beq #0x64a9ec
0064a914  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
0064a918  0c a0 da e5                                      ldrb sl, [sl, #0xc]
0064a91c  01 30 83 e2                                      add r3, r3, #1
0064a920  73 30 ef e6                                      uxtb r3, r3
0064a924  03 02 99 e7                                      ldr r0, [sb, r3, lsl #4]
0064a928  03 b2 89 e0                                      add fp, sb, r3, lsl #4
0064a92c  00 00 50 e3                                      cmp r0, #0
0064a930  2d 00 00 0a                                      beq #0x64a9ec
0064a934  01 a0 8a e2                                      add sl, sl, #1
0064a938  7a a0 ef e6                                      uxtb sl, sl
0064a93c  0a 32 98 e7                                      ldr r3, [r8, sl, lsl #4]
0064a940  0a 92 88 e0                                      add sb, r8, sl, lsl #4
0064a944  00 00 53 e3                                      cmp r3, #0
0064a948  27 00 00 0a                                      beq #0x64a9ec
0064a94c  04 10 a0 e3                                      mov r1, #4
0064a950  26 5c fd eb                                      bl #0x5a19f0
0064a954  04 20 9b e5                                      ldr r2, [fp, #4]
0064a958  be 30 db e1                                      ldrh r3, [fp, #0xe]
0064a95c  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0064a960  02 20 80 e0                                      add r2, r0, r2
0064a964  48 20 8d e5                                      str r2, [sp, #0x48]
0064a968  9c 23 23 e0                                      mla r3, ip, r3, r2
0064a96c  01 10 a0 e3                                      mov r1, #1
0064a970  0a 02 98 e7                                      ldr r0, [r8, sl, lsl #4]
0064a974  34 30 8d e5                                      str r3, [sp, #0x34]
0064a978  57 5c fd eb                                      bl #0x5a1adc
0064a97c  24 30 96 e5                                      ldr r3, [r6, #0x24]
0064a980  04 10 99 e5                                      ldr r1, [sb, #4]
0064a984  be 20 d9 e1                                      ldrh r2, [sb, #0xe]
0064a988  07 70 83 e0                                      add r7, r3, r7
0064a98c  04 c0 97 e5                                      ldr ip, [r7, #4]
0064a990  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0064a994  01 70 80 e0                                      add r7, r0, r1
0064a998  00 c0 8d e5                                      str ip, [sp]
0064a99c  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0064a9a0  02 30 a0 e1                                      mov r3, r2
0064a9a4  34 00 9d e5                                      ldr r0, [sp, #0x34]
0064a9a8  14 10 9d e5                                      ldr r1, [sp, #0x14]
0064a9ac  9e 72 22 e0                                      mla r2, lr, r2, r7
0064a9b0  04 c0 8d e5                                      str ip, [sp, #4]
0064a9b4  60 fc ff eb                                      bl #0x649b3c
0064a9b8  00 00 57 e3                                      cmp r7, #0
0064a9bc  08 00 00 0a                                      beq #0x64a9e4
0064a9c0  00 70 99 e5                                      ldr r7, [sb]
0064a9c4  13 20 d7 e5                                      ldrb r2, [r7, #0x13]
0064a9c8  1f 30 02 e2                                      and r3, r2, #0x1f
0064a9cc  01 00 53 e3                                      cmp r3, #1
0064a9d0  75 01 00 9a                                      bls #0x64afac
0064a9d4  01 10 43 e2                                      sub r1, r3, #1
0064a9d8  1f 30 c2 e3                                      bic r3, r2, #0x1f
0064a9dc  03 30 81 e1                                      orr r3, r1, r3
0064a9e0  13 30 c7 e5                                      strb r3, [r7, #0x13]
0064a9e4  3c b0 8d e5                                      str fp, [sp, #0x3c]
0064a9e8  03 00 00 ea                                      b #0x64a9fc
0064a9ec  00 00 a0 e3                                      mov r0, #0
0064a9f0  3c 00 8d e5                                      str r0, [sp, #0x3c]
0064a9f4  48 00 8d e5                                      str r0, [sp, #0x48]
0064a9f8  34 00 8d e5                                      str r0, [sp, #0x34]
0064a9fc  04 00 55 e1                                      cmp r5, r4
0064aa00  c0 00 00 9a                                      bls #0x64ad08
0064aa04  58 10 8d e2                                      add r1, sp, #0x58
0064aa08  84 71 a0 e1                                      lsl r7, r4, #3
0064aa0c  38 10 8d e5                                      str r1, [sp, #0x38]
0064aa10  18 50 8d e5                                      str r5, [sp, #0x18]
0064aa14  04 00 00 ea                                      b #0x64aa2c
0064aa18  18 20 9d e5                                      ldr r2, [sp, #0x18]
0064aa1c  01 40 84 e2                                      add r4, r4, #1
0064aa20  08 70 87 e2                                      add r7, r7, #8
0064aa24  02 00 54 e1                                      cmp r4, r2
0064aa28  b6 00 00 2a                                      bhs #0x64ad08
0064aa2c  24 50 96 e5                                      ldr r5, [r6, #0x24]
0064aa30  00 10 a0 e3                                      mov r1, #0
0064aa34  07 30 85 e0                                      add r3, r5, r7
0064aa38  04 00 93 e5                                      ldr r0, [r3, #4]
0064aa3c  52 0d f3 eb                                      bl #0x30df8c
0064aa40  00 00 50 e3                                      cmp r0, #0
0064aa44  f3 ff ff 1a                                      bne #0x64aa18
0064aa48  07 30 95 e7                                      ldr r3, [r5, r7]
0064aa4c  38 00 9d e5                                      ldr r0, [sp, #0x38]
0064aa50  20 20 9d e5                                      ldr r2, [sp, #0x20]
0064aa54  03 10 a0 e1                                      mov r1, r3
0064aa58  00 30 93 e5                                      ldr r3, [r3]
0064aa5c  0f e0 a0 e1                                      mov lr, pc
0064aa60  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0064aa64  58 00 9d e5                                      ldr r0, [sp, #0x58]
0064aa68  14 20 90 e5                                      ldr r2, [r0, #0x14]
0064aa6c  0c 20 8d e5                                      str r2, [sp, #0xc]
0064aa70  c3 4a f3 eb                                      bl #0x31d584
0064aa74  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0064aa78  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0064aa7c  00 00 53 e3                                      cmp r3, #0
0064aa80  14 c0 8c e2                                      add ip, ip, #0x14
0064aa84  10 c0 8d e5                                      str ip, [sp, #0x10]
0064aa88  08 00 00 0a                                      beq #0x64aab0
0064aa8c  00 50 98 e5                                      ldr r5, [r8]
0064aa90  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0064aa94  1f 20 03 e2                                      and r2, r3, #0x1f
0064aa98  01 00 52 e3                                      cmp r2, #1
0064aa9c  c3 00 00 9a                                      bls #0x64adb0
0064aaa0  01 20 42 e2                                      sub r2, r2, #1
0064aaa4  1f 30 c3 e3                                      bic r3, r3, #0x1f
0064aaa8  03 20 82 e1                                      orr r2, r2, r3
0064aaac  13 20 c5 e5                                      strb r2, [r5, #0x13]
0064aab0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0064aab4  01 10 a0 e3                                      mov r1, #1
0064aab8  14 00 92 e5                                      ldr r0, [r2, #0x14]
0064aabc  06 5c fd eb                                      bl #0x5a1adc
0064aac0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0064aac4  24 20 96 e5                                      ldr r2, [r6, #0x24]
0064aac8  00 10 a0 e3                                      mov r1, #0
0064aacc  04 30 9c e5                                      ldr r3, [ip, #4]
0064aad0  07 20 82 e0                                      add r2, r2, r7
0064aad4  04 a0 92 e5                                      ldr sl, [r2, #4]
0064aad8  03 30 80 e0                                      add r3, r0, r3
0064aadc  1c 30 8d e5                                      str r3, [sp, #0x1c]
0064aae0  0a 00 a0 e1                                      mov r0, sl
0064aae4  be b0 dc e1                                      ldrh fp, [ip, #0xe]
0064aae8  27 0d f3 eb                                      bl #0x30df8c
0064aaec  00 00 50 e3                                      cmp r0, #0
0064aaf0  21 00 00 1a                                      bne #0x64ab7c
0064aaf4  fe 15 a0 e3                                      mov r1, #0x3f800000
0064aaf8  0a 00 a0 e1                                      mov r0, sl
0064aafc  22 0d f3 eb                                      bl #0x30df8c
0064ab00  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0064ab04  00 00 50 e3                                      cmp r0, #0
0064ab08  24 00 9d e5                                      ldr r0, [sp, #0x24]
0064ab0c  90 1b 25 e0                                      mla r5, r0, fp, r1
0064ab10  ac 00 00 0a                                      beq #0x64adc8
0064ab14  28 20 9d e5                                      ldr r2, [sp, #0x28]
0064ab18  00 00 52 e3                                      cmp r2, #0
0064ab1c  16 00 00 0a                                      beq #0x64ab7c
0064ab20  30 70 8d e5                                      str r7, [sp, #0x30]
0064ab24  40 80 9d e5                                      ldr r8, [sp, #0x40]
0064ab28  14 70 9d e5                                      ldr r7, [sp, #0x14]
0064ab2c  28 90 9d e5                                      ldr sb, [sp, #0x28]
0064ab30  00 a0 a0 e3                                      mov sl, #0
0064ab34  00 10 95 e5                                      ldr r1, [r5]
0064ab38  00 00 98 e5                                      ldr r0, [r8]
0064ab3c  18 10 f3 eb                                      bl #0x30eba4
0064ab40  00 00 88 e5                                      str r0, [r8]
0064ab44  04 10 95 e5                                      ldr r1, [r5, #4]
0064ab48  04 00 98 e5                                      ldr r0, [r8, #4]
0064ab4c  14 10 f3 eb                                      bl #0x30eba4
0064ab50  04 00 88 e5                                      str r0, [r8, #4]
0064ab54  08 10 95 e5                                      ldr r1, [r5, #8]
0064ab58  08 00 98 e5                                      ldr r0, [r8, #8]
0064ab5c  10 10 f3 eb                                      bl #0x30eba4
0064ab60  01 a0 8a e2                                      add sl, sl, #1
0064ab64  09 00 5a e1                                      cmp sl, sb
0064ab68  08 00 88 e5                                      str r0, [r8, #8]
0064ab6c  0b 50 85 e0                                      add r5, r5, fp
0064ab70  07 80 88 e0                                      add r8, r8, r7
0064ab74  ee ff ff 1a                                      bne #0x64ab34
0064ab78  30 70 9d e5                                      ldr r7, [sp, #0x30]
0064ab7c  34 00 9d e5                                      ldr r0, [sp, #0x34]
0064ab80  00 00 50 e3                                      cmp r0, #0
0064ab84  87 00 00 0a                                      beq #0x64ada8
0064ab88  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0064ab8c  04 30 91 e5                                      ldr r3, [r1, #4]
0064ab90  02 08 13 e3                                      tst r3, #0x20000
0064ab94  83 00 00 0a                                      beq #0x64ada8
0064ab98  0c 30 d1 e5                                      ldrb r3, [r1, #0xc]
0064ab9c  10 20 9d e5                                      ldr r2, [sp, #0x10]
0064aba0  01 30 83 e2                                      add r3, r3, #1
0064aba4  73 30 ef e6                                      uxtb r3, r3
0064aba8  0c 30 8d e5                                      str r3, [sp, #0xc]
0064abac  03 02 92 e7                                      ldr r0, [r2, r3, lsl #4]
0064abb0  03 52 82 e0                                      add r5, r2, r3, lsl #4
0064abb4  00 00 50 e3                                      cmp r0, #0
0064abb8  7a 00 00 0a                                      beq #0x64ada8
0064abbc  01 10 a0 e3                                      mov r1, #1
0064abc0  be b0 d5 e1                                      ldrh fp, [r5, #0xe]
0064abc4  c4 5b fd eb                                      bl #0x5a1adc
0064abc8  24 30 96 e5                                      ldr r3, [r6, #0x24]
0064abcc  04 20 95 e5                                      ldr r2, [r5, #4]
0064abd0  00 10 a0 e3                                      mov r1, #0
0064abd4  07 30 83 e0                                      add r3, r3, r7
0064abd8  04 a0 93 e5                                      ldr sl, [r3, #4]
0064abdc  02 20 80 e0                                      add r2, r0, r2
0064abe0  30 20 8d e5                                      str r2, [sp, #0x30]
0064abe4  0a 00 a0 e1                                      mov r0, sl
0064abe8  e7 0c f3 eb                                      bl #0x30df8c
0064abec  00 00 50 e3                                      cmp r0, #0
0064abf0  be 50 d5 e1                                      ldrh r5, [r5, #0xe]
0064abf4  2f 00 00 1a                                      bne #0x64acb8
0064abf8  0a 00 a0 e1                                      mov r0, sl
0064abfc  fe 15 a0 e3                                      mov r1, #0x3f800000
0064ac00  e1 0c f3 eb                                      bl #0x30df8c
0064ac04  24 30 9d e5                                      ldr r3, [sp, #0x24]
0064ac08  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0064ac0c  00 00 50 e3                                      cmp r0, #0
0064ac10  93 c5 25 e0                                      mla r5, r3, r5, ip
0064ac14  b5 00 00 1a                                      bne #0x64aef0
0064ac18  28 10 9d e5                                      ldr r1, [sp, #0x28]
0064ac1c  00 00 51 e3                                      cmp r1, #0
0064ac20  24 00 00 0a                                      beq #0x64acb8
0064ac24  34 80 9d e5                                      ldr r8, [sp, #0x34]
0064ac28  4c 70 8d e5                                      str r7, [sp, #0x4c]
0064ac2c  00 90 a0 e3                                      mov sb, #0
0064ac30  50 40 8d e5                                      str r4, [sp, #0x50]
0064ac34  01 70 a0 e1                                      mov r7, r1
0064ac38  54 60 8d e5                                      str r6, [sp, #0x54]
0064ac3c  04 10 95 e5                                      ldr r1, [r5, #4]
0064ac40  0a 00 a0 e1                                      mov r0, sl
0064ac44  48 10 f3 eb                                      bl #0x30ed6c
0064ac48  08 10 95 e5                                      ldr r1, [r5, #8]
0064ac4c  00 60 a0 e1                                      mov r6, r0
0064ac50  0a 00 a0 e1                                      mov r0, sl
0064ac54  44 10 f3 eb                                      bl #0x30ed6c
0064ac58  0b 10 95 e6                                      ldr r1, [r5], fp
0064ac5c  00 40 a0 e1                                      mov r4, r0
0064ac60  0a 00 a0 e1                                      mov r0, sl
0064ac64  40 10 f3 eb                                      bl #0x30ed6c
0064ac68  00 10 a0 e1                                      mov r1, r0
0064ac6c  00 00 98 e5                                      ldr r0, [r8]
0064ac70  cb 0f f3 eb                                      bl #0x30eba4
0064ac74  06 10 a0 e1                                      mov r1, r6
0064ac78  00 00 88 e5                                      str r0, [r8]
0064ac7c  04 00 98 e5                                      ldr r0, [r8, #4]
0064ac80  c7 0f f3 eb                                      bl #0x30eba4
0064ac84  04 10 a0 e1                                      mov r1, r4
0064ac88  04 00 88 e5                                      str r0, [r8, #4]
0064ac8c  08 00 98 e5                                      ldr r0, [r8, #8]
0064ac90  c3 0f f3 eb                                      bl #0x30eba4
0064ac94  08 00 88 e5                                      str r0, [r8, #8]
0064ac98  14 20 9d e5                                      ldr r2, [sp, #0x14]
0064ac9c  01 90 89 e2                                      add sb, sb, #1
0064aca0  07 00 59 e1                                      cmp sb, r7
0064aca4  02 80 88 e0                                      add r8, r8, r2
0064aca8  e3 ff ff 1a                                      bne #0x64ac3c
0064acac  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
0064acb0  50 40 9d e5                                      ldr r4, [sp, #0x50]
0064acb4  54 60 9d e5                                      ldr r6, [sp, #0x54]
0064acb8  30 30 9d e5                                      ldr r3, [sp, #0x30]
0064acbc  00 00 53 e3                                      cmp r3, #0
0064acc0  38 00 00 0a                                      beq #0x64ada8
0064acc4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0064acc8  10 00 9d e5                                      ldr r0, [sp, #0x10]
0064accc  0c 52 90 e7                                      ldr r5, [r0, ip, lsl #4]
0064acd0  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0064acd4  1f 20 03 e2                                      and r2, r3, #0x1f
0064acd8  01 00 52 e3                                      cmp r2, #1
0064acdc  7c 00 00 9a                                      bls #0x64aed4
0064ace0  01 20 42 e2                                      sub r2, r2, #1
0064ace4  1f 30 c3 e3                                      bic r3, r3, #0x1f
0064ace8  03 30 82 e1                                      orr r3, r2, r3
0064acec  13 30 c5 e5                                      strb r3, [r5, #0x13]
0064acf0  18 20 9d e5                                      ldr r2, [sp, #0x18]
0064acf4  01 40 84 e2                                      add r4, r4, #1
0064acf8  10 80 9d e5                                      ldr r8, [sp, #0x10]
0064acfc  02 00 54 e1                                      cmp r4, r2
0064ad00  08 70 87 e2                                      add r7, r7, #8
0064ad04  48 ff ff 3a                                      blo #0x64aa2c
0064ad08  48 30 9d e5                                      ldr r3, [sp, #0x48]
0064ad0c  00 00 53 e3                                      cmp r3, #0
0064ad10  09 00 00 0a                                      beq #0x64ad3c
0064ad14  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
0064ad18  00 40 9c e5                                      ldr r4, [ip]
0064ad1c  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0064ad20  1f 20 03 e2                                      and r2, r3, #0x1f
0064ad24  01 00 52 e3                                      cmp r2, #1
0064ad28  5b 00 00 9a                                      bls #0x64ae9c
0064ad2c  01 20 42 e2                                      sub r2, r2, #1
0064ad30  1f 30 c3 e3                                      bic r3, r3, #0x1f
0064ad34  03 30 82 e1                                      orr r3, r2, r3
0064ad38  13 30 c4 e5                                      strb r3, [r4, #0x13]
0064ad3c  44 00 9d e5                                      ldr r0, [sp, #0x44]
0064ad40  00 00 50 e3                                      cmp r0, #0
0064ad44  09 00 00 0a                                      beq #0x64ad70
0064ad48  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0064ad4c  14 40 91 e5                                      ldr r4, [r1, #0x14]
0064ad50  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0064ad54  1f 20 03 e2                                      and r2, r3, #0x1f
0064ad58  01 00 52 e3                                      cmp r2, #1
0064ad5c  48 00 00 9a                                      bls #0x64ae84
0064ad60  01 20 42 e2                                      sub r2, r2, #1
0064ad64  1f 30 c3 e3                                      bic r3, r3, #0x1f
0064ad68  03 30 82 e1                                      orr r3, r2, r3
0064ad6c  13 30 c4 e5                                      strb r3, [r4, #0x13]
0064ad70  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0064ad74  00 00 52 e3                                      cmp r2, #0
0064ad78  08 00 00 0a                                      beq #0x64ada0
0064ad7c  00 40 98 e5                                      ldr r4, [r8]
0064ad80  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
0064ad84  1f 20 03 e2                                      and r2, r3, #0x1f
0064ad88  01 00 52 e3                                      cmp r2, #1
0064ad8c  36 00 00 9a                                      bls #0x64ae6c
0064ad90  01 20 42 e2                                      sub r2, r2, #1
0064ad94  1f 30 c3 e3                                      bic r3, r3, #0x1f
0064ad98  03 30 82 e1                                      orr r3, r2, r3
0064ad9c  13 30 c4 e5                                      strb r3, [r4, #0x13]
0064ada0  6c d0 8d e2                                      add sp, sp, #0x6c
0064ada4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0064ada8  10 80 9d e5                                      ldr r8, [sp, #0x10]
0064adac  19 ff ff ea                                      b #0x64aa18
0064adb0  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0064adb4  20 00 13 e3                                      tst r3, #0x20
0064adb8  40 00 00 1a                                      bne #0x64aec0
0064adbc  00 e0 a0 e3                                      mov lr, #0
0064adc0  13 e0 c5 e5                                      strb lr, [r5, #0x13]
0064adc4  39 ff ff ea                                      b #0x64aab0
0064adc8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0064adcc  00 00 53 e3                                      cmp r3, #0
0064add0  69 ff ff 0a                                      beq #0x64ab7c
0064add4  40 80 9d e5                                      ldr r8, [sp, #0x40]
0064add8  30 70 8d e5                                      str r7, [sp, #0x30]
0064addc  00 90 a0 e3                                      mov sb, #0
0064ade0  4c 40 8d e5                                      str r4, [sp, #0x4c]
0064ade4  03 70 a0 e1                                      mov r7, r3
0064ade8  50 60 8d e5                                      str r6, [sp, #0x50]
0064adec  04 10 95 e5                                      ldr r1, [r5, #4]
0064adf0  0a 00 a0 e1                                      mov r0, sl
0064adf4  dc 0f f3 eb                                      bl #0x30ed6c
0064adf8  08 10 95 e5                                      ldr r1, [r5, #8]
0064adfc  00 60 a0 e1                                      mov r6, r0
0064ae00  0a 00 a0 e1                                      mov r0, sl
0064ae04  d8 0f f3 eb                                      bl #0x30ed6c
0064ae08  0b 10 95 e6                                      ldr r1, [r5], fp
0064ae0c  00 40 a0 e1                                      mov r4, r0
0064ae10  0a 00 a0 e1                                      mov r0, sl
0064ae14  d4 0f f3 eb                                      bl #0x30ed6c
0064ae18  00 10 a0 e1                                      mov r1, r0
0064ae1c  00 00 98 e5                                      ldr r0, [r8]
0064ae20  5f 0f f3 eb                                      bl #0x30eba4
0064ae24  06 10 a0 e1                                      mov r1, r6
0064ae28  00 00 88 e5                                      str r0, [r8]
0064ae2c  04 00 98 e5                                      ldr r0, [r8, #4]
0064ae30  5b 0f f3 eb                                      bl #0x30eba4
0064ae34  04 10 a0 e1                                      mov r1, r4
0064ae38  04 00 88 e5                                      str r0, [r8, #4]
0064ae3c  08 00 98 e5                                      ldr r0, [r8, #8]
0064ae40  57 0f f3 eb                                      bl #0x30eba4
0064ae44  08 00 88 e5                                      str r0, [r8, #8]
0064ae48  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0064ae4c  01 90 89 e2                                      add sb, sb, #1
0064ae50  07 00 59 e1                                      cmp sb, r7
0064ae54  0c 80 88 e0                                      add r8, r8, ip
0064ae58  e3 ff ff 1a                                      bne #0x64adec
0064ae5c  30 70 9d e5                                      ldr r7, [sp, #0x30]
0064ae60  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
0064ae64  50 60 9d e5                                      ldr r6, [sp, #0x50]
0064ae68  43 ff ff ea                                      b #0x64ab7c
0064ae6c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0064ae70  20 00 13 e3                                      tst r3, #0x20
0064ae74  42 00 00 1a                                      bne #0x64af84
0064ae78  00 30 a0 e3                                      mov r3, #0
0064ae7c  13 30 c4 e5                                      strb r3, [r4, #0x13]
0064ae80  c6 ff ff ea                                      b #0x64ada0
0064ae84  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0064ae88  20 00 13 e3                                      tst r3, #0x20
0064ae8c  37 00 00 1a                                      bne #0x64af70
0064ae90  00 30 a0 e3                                      mov r3, #0
0064ae94  13 30 c4 e5                                      strb r3, [r4, #0x13]
0064ae98  b4 ff ff ea                                      b #0x64ad70
0064ae9c  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
0064aea0  20 00 13 e3                                      tst r3, #0x20
0064aea4  2c 00 00 1a                                      bne #0x64af5c
0064aea8  00 30 a0 e3                                      mov r3, #0
0064aeac  13 30 c4 e5                                      strb r3, [r4, #0x13]
0064aeb0  a1 ff ff ea                                      b #0x64ad3c
0064aeb4  01 40 84 e2                                      add r4, r4, #1
0064aeb8  08 a0 a0 e1                                      mov sl, r8
0064aebc  53 fe ff ea                                      b #0x64a810
0064aec0  00 30 95 e5                                      ldr r3, [r5]
0064aec4  05 00 a0 e1                                      mov r0, r5
0064aec8  0f e0 a0 e1                                      mov lr, pc
0064aecc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064aed0  b9 ff ff ea                                      b #0x64adbc
0064aed4  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0064aed8  20 00 13 e3                                      tst r3, #0x20
0064aedc  2d 00 00 1a                                      bne #0x64af98
0064aee0  00 10 a0 e3                                      mov r1, #0
0064aee4  13 10 c5 e5                                      strb r1, [r5, #0x13]
0064aee8  10 80 9d e5                                      ldr r8, [sp, #0x10]
0064aeec  c9 fe ff ea                                      b #0x64aa18
0064aef0  28 00 9d e5                                      ldr r0, [sp, #0x28]
0064aef4  00 00 50 e3                                      cmp r0, #0
0064aef8  6e ff ff 0a                                      beq #0x64acb8
0064aefc  4c 70 8d e5                                      str r7, [sp, #0x4c]
0064af00  34 80 9d e5                                      ldr r8, [sp, #0x34]
0064af04  14 70 9d e5                                      ldr r7, [sp, #0x14]
0064af08  28 90 9d e5                                      ldr sb, [sp, #0x28]
0064af0c  00 a0 a0 e3                                      mov sl, #0
0064af10  00 10 95 e5                                      ldr r1, [r5]
0064af14  00 00 98 e5                                      ldr r0, [r8]
0064af18  21 0f f3 eb                                      bl #0x30eba4
0064af1c  00 00 88 e5                                      str r0, [r8]
0064af20  04 10 95 e5                                      ldr r1, [r5, #4]
0064af24  04 00 98 e5                                      ldr r0, [r8, #4]
0064af28  1d 0f f3 eb                                      bl #0x30eba4
0064af2c  04 00 88 e5                                      str r0, [r8, #4]
0064af30  08 10 95 e5                                      ldr r1, [r5, #8]
0064af34  08 00 98 e5                                      ldr r0, [r8, #8]
0064af38  19 0f f3 eb                                      bl #0x30eba4
0064af3c  01 a0 8a e2                                      add sl, sl, #1
0064af40  09 00 5a e1                                      cmp sl, sb
0064af44  08 00 88 e5                                      str r0, [r8, #8]
0064af48  0b 50 85 e0                                      add r5, r5, fp
0064af4c  07 80 88 e0                                      add r8, r8, r7
0064af50  ee ff ff 1a                                      bne #0x64af10
0064af54  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
0064af58  56 ff ff ea                                      b #0x64acb8
0064af5c  00 30 94 e5                                      ldr r3, [r4]
0064af60  04 00 a0 e1                                      mov r0, r4
0064af64  0f e0 a0 e1                                      mov lr, pc
0064af68  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064af6c  cd ff ff ea                                      b #0x64aea8
0064af70  00 30 94 e5                                      ldr r3, [r4]
0064af74  04 00 a0 e1                                      mov r0, r4
0064af78  0f e0 a0 e1                                      mov lr, pc
0064af7c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064af80  c2 ff ff ea                                      b #0x64ae90
0064af84  00 30 94 e5                                      ldr r3, [r4]
0064af88  04 00 a0 e1                                      mov r0, r4
0064af8c  0f e0 a0 e1                                      mov lr, pc
0064af90  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064af94  b7 ff ff ea                                      b #0x64ae78
0064af98  00 30 95 e5                                      ldr r3, [r5]
0064af9c  05 00 a0 e1                                      mov r0, r5
0064afa0  0f e0 a0 e1                                      mov lr, pc
0064afa4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064afa8  cc ff ff ea                                      b #0x64aee0
0064afac  12 30 d7 e5                                      ldrb r3, [r7, #0x12]
0064afb0  20 00 13 e3                                      tst r3, #0x20
0064afb4  07 00 00 1a                                      bne #0x64afd8
0064afb8  00 30 a0 e3                                      mov r3, #0
0064afbc  13 30 c7 e5                                      strb r3, [r7, #0x13]
0064afc0  3c b0 8d e5                                      str fp, [sp, #0x3c]
0064afc4  8c fe ff ea                                      b #0x64a9fc
0064afc8  24 a0 96 e5                                      ldr sl, [r6, #0x24]
0064afcc  05 70 a0 e1                                      mov r7, r5
0064afd0  01 40 a0 e3                                      mov r4, #1
0064afd4  0d fe ff ea                                      b #0x64a810
0064afd8  00 30 97 e5                                      ldr r3, [r7]
0064afdc  07 00 a0 e1                                      mov r0, r7
0064afe0  0f e0 a0 e1                                      mov lr, pc
0064afe4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0064afe8  f2 ff ff ea                                      b #0x64afb8

; FUNCTION 0x0064afec, declared_size=456, range_size=456, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMesh27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverEj
; demangled: glitch::collada::CMorphingMesh::onPrepareBufferForRendering(glitch::collada::E_PREPARE_BUFFER_STEP, glitch::video::IVideoDriver*, unsigned int)
; decoder-mode: arm
0064afec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0064aff0  00 40 a0 e1                                      mov r4, r0
0064aff4  24 00 90 e5                                      ldr r0, [r0, #0x24]
0064aff8  10 d0 4d e2                                      sub sp, sp, #0x10
0064affc  01 60 a0 e1                                      mov r6, r1
0064b000  00 c0 90 e5                                      ldr ip, [r0]
0064b004  02 70 a0 e1                                      mov r7, r2
0064b008  03 50 a0 e1                                      mov r5, r3
0064b00c  0c 00 a0 e1                                      mov r0, ip
0064b010  00 c0 9c e5                                      ldr ip, [ip]
0064b014  0f e0 a0 e1                                      mov lr, pc
0064b018  38 f0 9c e5                                      ldr pc, [ip, #0x38]
0064b01c  00 00 56 e3                                      cmp r6, #0
0064b020  00 80 a0 e1                                      mov r8, r0
0064b024  2e 00 00 1a                                      bne #0x64b0e4
0064b028  1f 30 05 e2                                      and r3, r5, #0x1f
0064b02c  01 60 a0 e3                                      mov r6, #1
0064b030  16 63 a0 e1                                      lsl r6, r6, r3
0064b034  14 30 94 e5                                      ldr r3, [r4, #0x14]
0064b038  03 00 16 e1                                      tst r6, r3
0064b03c  52 00 00 1a                                      bne #0x64b18c
0064b040  0c 10 a0 e3                                      mov r1, #0xc
0064b044  18 30 94 e5                                      ldr r3, [r4, #0x18]
0064b048  91 05 01 e0                                      mul r1, r1, r5
0064b04c  01 20 93 e7                                      ldr r2, [r3, r1]
0064b050  00 00 52 e3                                      cmp r2, #0
0064b054  0c 20 8d e5                                      str r2, [sp, #0xc]
0064b058  03 00 00 0a                                      beq #0x64b06c
0064b05c  04 30 92 e5                                      ldr r3, [r2, #4]
0064b060  01 30 83 e2                                      add r3, r3, #1
0064b064  04 30 82 e5                                      str r3, [r2, #4]
0064b068  18 30 94 e5                                      ldr r3, [r4, #0x18]
0064b06c  01 30 83 e0                                      add r3, r3, r1
0064b070  04 30 93 e5                                      ldr r3, [r3, #4]
0064b074  03 00 a0 e1                                      mov r0, r3
0064b078  04 60 93 e5                                      ldr r6, [r3, #4]
0064b07c  2c eb fd eb                                      bl #0x5c5d34
0064b080  18 30 96 e5                                      ldr r3, [r6, #0x18]
0064b084  0c 10 a0 e3                                      mov r1, #0xc
0064b088  01 20 00 e3                                      movw r2, #1
0064b08c  91 30 23 e0                                      mla r3, r1, r0, r3
0064b090  02 20 40 e3                                      movt r2, #2
0064b094  08 30 93 e5                                      ldr r3, [r3, #8]
0064b098  00 e0 a0 e3                                      mov lr, #0
0064b09c  07 00 a0 e1                                      mov r0, r7
0064b0a0  20 c0 93 e5                                      ldr ip, [r3, #0x20]
0064b0a4  01 10 a0 e3                                      mov r1, #1
0064b0a8  0c 30 8d e2                                      add r3, sp, #0xc
0064b0ac  38 c0 9c e5                                      ldr ip, [ip, #0x38]
0064b0b0  00 e0 8d e5                                      str lr, [sp]
0064b0b4  02 20 0c e0                                      and r2, ip, r2
0064b0b8  f8 f9 ff eb                                      bl #0x6498a0
0064b0bc  04 00 10 e3                                      tst r0, #4
0064b0c0  00 80 a0 e1                                      mov r8, r0
0064b0c4  2c 00 00 1a                                      bne #0x64b17c
0064b0c8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0064b0cc  00 00 50 e3                                      cmp r0, #0
0064b0d0  00 00 00 0a                                      beq #0x64b0d8
0064b0d4  2a 49 f3 eb                                      bl #0x31d584
0064b0d8  08 00 a0 e1                                      mov r0, r8
0064b0dc  10 d0 8d e2                                      add sp, sp, #0x10
0064b0e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0064b0e4  0c 10 a0 e3                                      mov r1, #0xc
0064b0e8  18 30 94 e5                                      ldr r3, [r4, #0x18]
0064b0ec  91 05 01 e0                                      mul r1, r1, r5
0064b0f0  01 20 93 e7                                      ldr r2, [r3, r1]
0064b0f4  00 00 52 e3                                      cmp r2, #0
0064b0f8  0c 20 8d e5                                      str r2, [sp, #0xc]
0064b0fc  04 30 92 15                                      ldrne r3, [r2, #4]
0064b100  01 30 83 12                                      addne r3, r3, #1
0064b104  04 30 82 15                                      strne r3, [r2, #4]
0064b108  18 30 94 15                                      ldrne r3, [r4, #0x18]
0064b10c  01 30 83 e0                                      add r3, r3, r1
0064b110  04 30 93 e5                                      ldr r3, [r3, #4]
0064b114  03 00 a0 e1                                      mov r0, r3
0064b118  04 60 93 e5                                      ldr r6, [r3, #4]
0064b11c  04 eb fd eb                                      bl #0x5c5d34
0064b120  18 30 96 e5                                      ldr r3, [r6, #0x18]
0064b124  0c 10 a0 e3                                      mov r1, #0xc
0064b128  01 20 00 e3                                      movw r2, #1
0064b12c  91 30 23 e0                                      mla r3, r1, r0, r3
0064b130  00 c0 a0 e3                                      mov ip, #0
0064b134  08 30 93 e5                                      ldr r3, [r3, #8]
0064b138  02 20 40 e3                                      movt r2, #2
0064b13c  07 00 a0 e1                                      mov r0, r7
0064b140  20 e0 93 e5                                      ldr lr, [r3, #0x20]
0064b144  0c 10 a0 e1                                      mov r1, ip
0064b148  0c 30 8d e2                                      add r3, sp, #0xc
0064b14c  38 e0 9e e5                                      ldr lr, [lr, #0x38]
0064b150  00 c0 8d e5                                      str ip, [sp]
0064b154  02 20 0e e0                                      and r2, lr, r2
0064b158  d0 f9 ff eb                                      bl #0x6498a0
0064b15c  04 00 10 e3                                      tst r0, #4
0064b160  00 80 a0 e1                                      mov r8, r0
0064b164  d7 ff ff 0a                                      beq #0x64b0c8
0064b168  14 20 94 e5                                      ldr r2, [r4, #0x14]
0064b16c  1f 30 05 e2                                      and r3, r5, #0x1f
0064b170  01 10 a0 e3                                      mov r1, #1
0064b174  11 33 82 e1                                      orr r3, r2, r1, lsl r3
0064b178  14 30 84 e5                                      str r3, [r4, #0x14]
0064b17c  04 00 a0 e1                                      mov r0, r4
0064b180  05 10 a0 e1                                      mov r1, r5
0064b184  56 fd ff eb                                      bl #0x64a6e4
0064b188  ce ff ff ea                                      b #0x64b0c8
0064b18c  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0064b190  03 00 16 e1                                      tst r6, r3
0064b194  a9 ff ff 0a                                      beq #0x64b040
0064b198  05 10 a0 e1                                      mov r1, r5
0064b19c  04 00 a0 e1                                      mov r0, r4
0064b1a0  4f fd ff eb                                      bl #0x64a6e4
0064b1a4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0064b1a8  06 60 c3 e1                                      bic r6, r3, r6
0064b1ac  3c 60 84 e5                                      str r6, [r4, #0x3c]
0064b1b0  c8 ff ff ea                                      b #0x64b0d8

; FUNCTION 0x0064b700, declared_size=712, range_size=712, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMesh15instanciateMeshEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CMorphingMesh::instanciateMesh(glitch::video::IVideoDriver*, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
0064b700  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0064b704  30 30 90 e5                                      ldr r3, [r0, #0x30]
0064b708  4c d0 4d e2                                      sub sp, sp, #0x4c
0064b70c  00 40 a0 e1                                      mov r4, r0
0064b710  24 00 80 e2                                      add r0, r0, #0x24
0064b714  10 00 8d e5                                      str r0, [sp, #0x10]
0064b718  00 50 93 e5                                      ldr r5, [r3]
0064b71c  01 70 a0 e1                                      mov r7, r1
0064b720  10 10 93 e5                                      ldr r1, [r3, #0x10]
0064b724  01 50 85 e2                                      add r5, r5, #1
0064b728  0c 60 84 e2                                      add r6, r4, #0xc
0064b72c  01 10 81 e2                                      add r1, r1, #1
0064b730  02 80 a0 e1                                      mov r8, r2
0064b734  b4 f9 ff eb                                      bl #0x649e0c
0064b738  44 00 8d e2                                      add r0, sp, #0x44
0064b73c  06 10 a0 e1                                      mov r1, r6
0064b740  07 20 a0 e1                                      mov r2, r7
0064b744  05 30 a0 e1                                      mov r3, r5
0064b748  d6 3c ff eb                                      bl #0x61aaa8
0064b74c  44 b0 9d e5                                      ldr fp, [sp, #0x44]
0064b750  00 00 5b e3                                      cmp fp, #0
0064b754  83 00 00 0a                                      beq #0x64b968
0064b758  04 30 9b e5                                      ldr r3, [fp, #4]
0064b75c  01 30 83 e2                                      add r3, r3, #1
0064b760  04 30 8b e5                                      str r3, [fp, #4]
0064b764  44 00 9d e5                                      ldr r0, [sp, #0x44]
0064b768  00 00 50 e3                                      cmp r0, #0
0064b76c  00 00 00 0a                                      beq #0x64b774
0064b770  83 47 f3 eb                                      bl #0x31d584
0064b774  00 00 5b e3                                      cmp fp, #0
0064b778  2c b0 8d 15                                      strne fp, [sp, #0x2c]
0064b77c  79 00 00 0a                                      beq #0x64b968
0064b780  04 30 9b e5                                      ldr r3, [fp, #4]
0064b784  01 30 83 e2                                      add r3, r3, #1
0064b788  04 30 8b e5                                      str r3, [fp, #4]
0064b78c  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0064b790  28 10 94 e5                                      ldr r1, [r4, #0x28]
0064b794  03 00 51 e1                                      cmp r1, r3
0064b798  fe 35 a0 e3                                      mov r3, #0x3f800000
0064b79c  30 30 8d e5                                      str r3, [sp, #0x30]
0064b7a0  84 00 00 0a                                      beq #0x64b9b8
0064b7a4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0064b7a8  00 30 81 e5                                      str r3, [r1]
0064b7ac  00 00 53 e3                                      cmp r3, #0
0064b7b0  04 20 93 15                                      ldrne r2, [r3, #4]
0064b7b4  01 20 82 12                                      addne r2, r2, #1
0064b7b8  04 20 83 15                                      strne r2, [r3, #4]
0064b7bc  30 30 9d e5                                      ldr r3, [sp, #0x30]
0064b7c0  04 30 81 e5                                      str r3, [r1, #4]
0064b7c4  28 30 94 e5                                      ldr r3, [r4, #0x28]
0064b7c8  08 30 83 e2                                      add r3, r3, #8
0064b7cc  28 30 84 e5                                      str r3, [r4, #0x28]
0064b7d0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0064b7d4  00 00 50 e3                                      cmp r0, #0
0064b7d8  00 00 00 0a                                      beq #0x64b7e0
0064b7dc  68 47 f3 eb                                      bl #0x31d584
0064b7e0  30 30 94 e5                                      ldr r3, [r4, #0x30]
0064b7e4  10 80 93 e5                                      ldr r8, [r3, #0x10]
0064b7e8  00 00 58 e3                                      cmp r8, #0
0064b7ec  3b 00 00 da                                      ble #0x64b8e0
0064b7f0  24 20 8d e2                                      add r2, sp, #0x24
0064b7f4  00 50 a0 e3                                      mov r5, #0
0064b7f8  3c 90 8d e2                                      add sb, sp, #0x3c
0064b7fc  14 20 8d e5                                      str r2, [sp, #0x14]
0064b800  00 00 00 ea                                      b #0x64b808
0064b804  30 30 94 e5                                      ldr r3, [r4, #0x30]
0064b808  14 30 93 e5                                      ldr r3, [r3, #0x14]
0064b80c  09 00 a0 e1                                      mov r0, sb
0064b810  06 10 a0 e1                                      mov r1, r6
0064b814  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
0064b818  07 20 a0 e1                                      mov r2, r7
0064b81c  84 0b ff eb                                      bl #0x60e634
0064b820  3c a0 9d e5                                      ldr sl, [sp, #0x3c]
0064b824  05 31 a0 e1                                      lsl r3, r5, #2
0064b828  00 00 5a e3                                      cmp sl, #0
0064b82c  08 00 00 0a                                      beq #0x64b854
0064b830  04 20 9a e5                                      ldr r2, [sl, #4]
0064b834  01 20 82 e2                                      add r2, r2, #1
0064b838  04 20 8a e5                                      str r2, [sl, #4]
0064b83c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0064b840  00 00 50 e3                                      cmp r0, #0
0064b844  02 00 00 0a                                      beq #0x64b854
0064b848  0c 30 8d e5                                      str r3, [sp, #0xc]
0064b84c  4c 47 f3 eb                                      bl #0x31d584
0064b850  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0064b854  30 20 94 e5                                      ldr r2, [r4, #0x30]
0064b858  00 00 5a e3                                      cmp sl, #0
0064b85c  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
0064b860  03 20 92 e7                                      ldr r2, [r2, r3]
0064b864  24 a0 8d e5                                      str sl, [sp, #0x24]
0064b868  04 30 9a 15                                      ldrne r3, [sl, #4]
0064b86c  01 30 83 12                                      addne r3, r3, #1
0064b870  04 30 8a 15                                      strne r3, [sl, #4]
0064b874  28 10 94 e5                                      ldr r1, [r4, #0x28]
0064b878  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
0064b87c  28 20 8d e5                                      str r2, [sp, #0x28]
0064b880  03 00 51 e1                                      cmp r1, r3
0064b884  33 00 00 0a                                      beq #0x64b958
0064b888  24 30 9d e5                                      ldr r3, [sp, #0x24]
0064b88c  00 30 81 e5                                      str r3, [r1]
0064b890  00 00 53 e3                                      cmp r3, #0
0064b894  04 20 93 15                                      ldrne r2, [r3, #4]
0064b898  01 20 82 12                                      addne r2, r2, #1
0064b89c  04 20 83 15                                      strne r2, [r3, #4]
0064b8a0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0064b8a4  04 30 81 e5                                      str r3, [r1, #4]
0064b8a8  28 30 94 e5                                      ldr r3, [r4, #0x28]
0064b8ac  08 30 83 e2                                      add r3, r3, #8
0064b8b0  28 30 84 e5                                      str r3, [r4, #0x28]
0064b8b4  24 00 9d e5                                      ldr r0, [sp, #0x24]
0064b8b8  00 00 50 e3                                      cmp r0, #0
0064b8bc  00 00 00 0a                                      beq #0x64b8c4
0064b8c0  2f 47 f3 eb                                      bl #0x31d584
0064b8c4  00 00 5a e3                                      cmp sl, #0
0064b8c8  01 00 00 0a                                      beq #0x64b8d4
0064b8cc  0a 00 a0 e1                                      mov r0, sl
0064b8d0  2b 47 f3 eb                                      bl #0x31d584
0064b8d4  01 50 85 e2                                      add r5, r5, #1
0064b8d8  08 00 55 e1                                      cmp r5, r8
0064b8dc  c8 ff ff 1a                                      bne #0x64b804
0064b8e0  24 30 94 e5                                      ldr r3, [r4, #0x24]
0064b8e4  18 50 8d e2                                      add r5, sp, #0x18
0064b8e8  18 40 84 e2                                      add r4, r4, #0x18
0064b8ec  00 30 93 e5                                      ldr r3, [r3]
0064b8f0  03 00 a0 e1                                      mov r0, r3
0064b8f4  00 30 93 e5                                      ldr r3, [r3]
0064b8f8  0f e0 a0 e1                                      mov lr, pc
0064b8fc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0064b900  00 30 a0 e3                                      mov r3, #0
0064b904  00 10 a0 e1                                      mov r1, r0
0064b908  05 20 a0 e1                                      mov r2, r5
0064b90c  04 00 a0 e1                                      mov r0, r4
0064b910  20 30 8d e5                                      str r3, [sp, #0x20]
0064b914  38 30 8d e5                                      str r3, [sp, #0x38]
0064b918  34 30 8d e5                                      str r3, [sp, #0x34]
0064b91c  18 30 8d e5                                      str r3, [sp, #0x18]
0064b920  1c 30 8d e5                                      str r3, [sp, #0x1c]
0064b924  5b ff ff eb                                      bl #0x64b698
0064b928  05 00 a0 e1                                      mov r0, r5
0064b92c  df f9 ff eb                                      bl #0x64a0b0
0064b930  34 00 8d e2                                      add r0, sp, #0x34
0064b934  4c ba fc eb                                      bl #0x57a26c
0064b938  38 00 8d e2                                      add r0, sp, #0x38
0064b93c  a9 14 f3 eb                                      bl #0x310be8
0064b940  00 00 5b e3                                      cmp fp, #0
0064b944  01 00 00 0a                                      beq #0x64b950
0064b948  0b 00 a0 e1                                      mov r0, fp
0064b94c  0c 47 f3 eb                                      bl #0x31d584
0064b950  4c d0 8d e2                                      add sp, sp, #0x4c
0064b954  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0064b958  10 00 9d e5                                      ldr r0, [sp, #0x10]
0064b95c  14 20 9d e5                                      ldr r2, [sp, #0x14]
0064b960  6d f9 ff eb                                      bl #0x649f1c
0064b964  d2 ff ff ea                                      b #0x64b8b4
0064b968  05 30 a0 e1                                      mov r3, r5
0064b96c  40 00 8d e2                                      add r0, sp, #0x40
0064b970  06 10 a0 e1                                      mov r1, r6
0064b974  07 20 a0 e1                                      mov r2, r7
0064b978  00 80 8d e5                                      str r8, [sp]
0064b97c  1f 3c ff eb                                      bl #0x61aa00
0064b980  40 00 9d e5                                      ldr r0, [sp, #0x40]
0064b984  00 00 50 e3                                      cmp r0, #0
0064b988  04 30 90 15                                      ldrne r3, [r0, #4]
0064b98c  00 b0 a0 e1                                      mov fp, r0
0064b990  01 30 83 12                                      addne r3, r3, #1
0064b994  04 30 80 15                                      strne r3, [r0, #4]
0064b998  40 00 9d 15                                      ldrne r0, [sp, #0x40]
0064b99c  00 00 50 e3                                      cmp r0, #0
0064b9a0  00 00 00 0a                                      beq #0x64b9a8
0064b9a4  f6 46 f3 eb                                      bl #0x31d584
0064b9a8  00 00 5b e3                                      cmp fp, #0
0064b9ac  2c b0 8d e5                                      str fp, [sp, #0x2c]
0064b9b0  75 ff ff 0a                                      beq #0x64b78c
0064b9b4  71 ff ff ea                                      b #0x64b780
0064b9b8  10 00 9d e5                                      ldr r0, [sp, #0x10]
0064b9bc  2c 20 8d e2                                      add r2, sp, #0x2c
0064b9c0  55 f9 ff eb                                      bl #0x649f1c
0064b9c4  81 ff ff ea                                      b #0x64b7d0

; FUNCTION 0x0064b9c8, declared_size=216, range_size=216, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMeshC1ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CMorphingMesh::CMorphingMesh(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
0064b9c8  c0 c0 9f e5                                      ldr ip, [pc, #0xc0]
0064b9cc  70 40 2d e9                                      push {r4, r5, r6, lr}
0064b9d0  bc e0 9f e5                                      ldr lr, [pc, #0xbc]
0064b9d4  0c c0 8f e0                                      add ip, pc, ip
0064b9d8  00 40 a0 e1                                      mov r4, r0
0064b9dc  0e e0 9c e7                                      ldr lr, [ip, lr]
0064b9e0  00 00 a0 e3                                      mov r0, #0
0064b9e4  04 00 84 e5                                      str r0, [r4, #4]
0064b9e8  08 e0 8e e2                                      add lr, lr, #8
0064b9ec  00 e0 84 e5                                      str lr, [r4]
0064b9f0  00 00 91 e5                                      ldr r0, [r1]
0064b9f4  02 e0 a0 e1                                      mov lr, r2
0064b9f8  0c 00 84 e5                                      str r0, [r4, #0xc]
0064b9fc  04 10 91 e5                                      ldr r1, [r1, #4]
0064ba00  00 00 50 e3                                      cmp r0, #0
0064ba04  10 20 9d e5                                      ldr r2, [sp, #0x10]
0064ba08  10 10 84 e5                                      str r1, [r4, #0x10]
0064ba0c  03 00 00 0a                                      beq #0x64ba20
0064ba10  04 10 90 e5                                      ldr r1, [r0, #4]
0064ba14  00 00 51 e3                                      cmp r1, #0
0064ba18  01 10 81 12                                      addne r1, r1, #1
0064ba1c  04 10 80 15                                      strne r1, [r0, #4]
0064ba20  70 50 9f e5                                      ldr r5, [pc, #0x70]
0064ba24  70 00 9f e5                                      ldr r0, [pc, #0x70]
0064ba28  00 10 a0 e3                                      mov r1, #0
0064ba2c  05 50 9c e7                                      ldr r5, [ip, r5]
0064ba30  00 00 9c e7                                      ldr r0, [ip, r0]
0064ba34  2c 10 84 e5                                      str r1, [r4, #0x2c]
0064ba38  04 50 85 e2                                      add r5, r5, #4
0064ba3c  08 00 80 e2                                      add r0, r0, #8
0064ba40  08 50 84 e5                                      str r5, [r4, #8]
0064ba44  00 00 84 e5                                      str r0, [r4]
0064ba48  14 10 84 e5                                      str r1, [r4, #0x14]
0064ba4c  18 10 84 e5                                      str r1, [r4, #0x18]
0064ba50  1c 10 84 e5                                      str r1, [r4, #0x1c]
0064ba54  20 10 84 e5                                      str r1, [r4, #0x20]
0064ba58  24 10 84 e5                                      str r1, [r4, #0x24]
0064ba5c  28 10 84 e5                                      str r1, [r4, #0x28]
0064ba60  08 10 93 e5                                      ldr r1, [r3, #8]
0064ba64  00 00 e0 e3                                      mvn r0, #0
0064ba68  3c 00 84 e5                                      str r0, [r4, #0x3c]
0064ba6c  30 10 84 e5                                      str r1, [r4, #0x30]
0064ba70  38 20 84 e5                                      str r2, [r4, #0x38]
0064ba74  04 30 93 e5                                      ldr r3, [r3, #4]
0064ba78  04 00 a0 e1                                      mov r0, r4
0064ba7c  0e 10 a0 e1                                      mov r1, lr
0064ba80  08 30 84 e5                                      str r3, [r4, #8]
0064ba84  1d ff ff eb                                      bl #0x64b700
0064ba88  04 00 a0 e1                                      mov r0, r4
0064ba8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0064ba90  bc 90 34 00 40 0a 00 00 b4 17 00 00 3c 33 00 00  .byte 0xbc, 0x90, 0x34, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x3c, 0x33, 0x00, 0x00

; FUNCTION 0x0064baa0, declared_size=216, range_size=216, mode=arm
; class-group: glitch::collada::CMorphingMesh
; alias: _ZN6glitch7collada13CMorphingMeshC2ERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverERNS0_11SControllerEPNS0_14CRootSceneNodeE
; demangled: glitch::collada::CMorphingMesh::CMorphingMesh(glitch::collada::CColladaDatabase const&, glitch::video::IVideoDriver*, glitch::collada::SController&, glitch::collada::CRootSceneNode*)
; decoder-mode: arm
0064baa0  c0 c0 9f e5                                      ldr ip, [pc, #0xc0]
0064baa4  70 40 2d e9                                      push {r4, r5, r6, lr}
0064baa8  bc e0 9f e5                                      ldr lr, [pc, #0xbc]
0064baac  0c c0 8f e0                                      add ip, pc, ip
0064bab0  00 40 a0 e1                                      mov r4, r0
0064bab4  0e e0 9c e7                                      ldr lr, [ip, lr]
0064bab8  00 00 a0 e3                                      mov r0, #0
0064babc  04 00 84 e5                                      str r0, [r4, #4]
0064bac0  08 e0 8e e2                                      add lr, lr, #8
0064bac4  00 e0 84 e5                                      str lr, [r4]
0064bac8  00 00 91 e5                                      ldr r0, [r1]
0064bacc  02 e0 a0 e1                                      mov lr, r2
0064bad0  0c 00 84 e5                                      str r0, [r4, #0xc]
0064bad4  04 10 91 e5                                      ldr r1, [r1, #4]
0064bad8  00 00 50 e3                                      cmp r0, #0
0064badc  10 20 9d e5                                      ldr r2, [sp, #0x10]
0064bae0  10 10 84 e5                                      str r1, [r4, #0x10]
0064bae4  03 00 00 0a                                      beq #0x64baf8
0064bae8  04 10 90 e5                                      ldr r1, [r0, #4]
0064baec  00 00 51 e3                                      cmp r1, #0
0064baf0  01 10 81 12                                      addne r1, r1, #1
0064baf4  04 10 80 15                                      strne r1, [r0, #4]
0064baf8  70 50 9f e5                                      ldr r5, [pc, #0x70]
0064bafc  70 00 9f e5                                      ldr r0, [pc, #0x70]
0064bb00  00 10 a0 e3                                      mov r1, #0
0064bb04  05 50 9c e7                                      ldr r5, [ip, r5]
0064bb08  00 00 9c e7                                      ldr r0, [ip, r0]
0064bb0c  2c 10 84 e5                                      str r1, [r4, #0x2c]
0064bb10  04 50 85 e2                                      add r5, r5, #4
0064bb14  08 00 80 e2                                      add r0, r0, #8
0064bb18  08 50 84 e5                                      str r5, [r4, #8]
0064bb1c  00 00 84 e5                                      str r0, [r4]
0064bb20  14 10 84 e5                                      str r1, [r4, #0x14]
0064bb24  18 10 84 e5                                      str r1, [r4, #0x18]
0064bb28  1c 10 84 e5                                      str r1, [r4, #0x1c]
0064bb2c  20 10 84 e5                                      str r1, [r4, #0x20]
0064bb30  24 10 84 e5                                      str r1, [r4, #0x24]
0064bb34  28 10 84 e5                                      str r1, [r4, #0x28]
0064bb38  08 10 93 e5                                      ldr r1, [r3, #8]
0064bb3c  00 00 e0 e3                                      mvn r0, #0
0064bb40  3c 00 84 e5                                      str r0, [r4, #0x3c]
0064bb44  30 10 84 e5                                      str r1, [r4, #0x30]
0064bb48  38 20 84 e5                                      str r2, [r4, #0x38]
0064bb4c  04 30 93 e5                                      ldr r3, [r3, #4]
0064bb50  04 00 a0 e1                                      mov r0, r4
0064bb54  0e 10 a0 e1                                      mov r1, lr
0064bb58  08 30 84 e5                                      str r3, [r4, #8]
0064bb5c  e7 fe ff eb                                      bl #0x64b700
0064bb60  04 00 a0 e1                                      mov r0, r4
0064bb64  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0064bb68  e4 8f 34 00 40 0a 00 00 b4 17 00 00 3c 33 00 00  .byte 0xe4, 0x8f, 0x34, 0x00, 0x40, 0x0a, 0x00, 0x00, 0xb4, 0x17, 0x00, 0x00, 0x3c, 0x33, 0x00, 0x00
