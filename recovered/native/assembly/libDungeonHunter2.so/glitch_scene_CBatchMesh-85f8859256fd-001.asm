; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050cd10, declared_size=20, range_size=20, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZNK6glitch5scene10CBatchMesh13getIndexRangeERjS2_PKNS1_8SSegmentE
; demangled: glitch::scene::CBatchMesh::getIndexRange(unsigned int&, unsigned int&, glitch::scene::CBatchMesh::SSegment const*) const
; decoder-mode: arm
0050cd10  10 00 93 e5                                      ldr r0, [r3, #0x10]
0050cd14  00 00 81 e5                                      str r0, [r1]
0050cd18  14 30 93 e5                                      ldr r3, [r3, #0x14]
0050cd1c  00 30 82 e5                                      str r3, [r2]
0050cd20  1e ff 2f e1                                      bx lr

; FUNCTION 0x0050cd24, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh4initEv
; demangled: glitch::scene::CBatchMesh::init()
; decoder-mode: arm
0050cd24  1e ff 2f e1                                      bx lr

; FUNCTION 0x0050cd28, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZNK6glitch5scene10CBatchMesh20saveSegmentExtraDataEPKvPNS_2io10IWriteFileEb
; demangled: glitch::scene::CBatchMesh::saveSegmentExtraData(void const*, glitch::io::IWriteFile*, bool) const
; decoder-mode: arm
0050cd28  1e ff 2f e1                                      bx lr

; FUNCTION 0x00578920, declared_size=4, range_size=4, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh20loadSegmentExtraDataEPvPNS_2io9IReadFileEb
; demangled: glitch::scene::CBatchMesh::loadSegmentExtraData(void*, glitch::io::IReadFile*, bool)
; decoder-mode: arm
00578920  1e ff 2f e1                                      bx lr

; FUNCTION 0x00578924, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMeshC2Ev
; demangled: glitch::scene::CBatchMesh::CBatchMesh()
; decoder-mode: arm
00578924  30 00 2d e9                                      push {r4, r5}
00578928  ac 40 9f e5                                      ldr r4, [pc, #0xac]
0057892c  ac 20 9f e5                                      ldr r2, [pc, #0xac]
00578930  bf c4 a0 e3                                      mov ip, #0xbf000000
00578934  04 40 8f e0                                      add r4, pc, r4
00578938  02 20 94 e7                                      ldr r2, [r4, r2]
0057893c  02 c5 8c e2                                      add ip, ip, #0x800000
00578940  fe 15 a0 e3                                      mov r1, #0x3f800000
00578944  08 50 82 e2                                      add r5, r2, #8
00578948  00 50 80 e5                                      str r5, [r0]
0057894c  00 50 e0 e3                                      mvn r5, #0
00578950  6c 50 80 e5                                      str r5, [r0, #0x6c]
00578954  2c 50 a0 e3                                      mov r5, #0x2c
00578958  00 20 a0 e3                                      mov r2, #0
0057895c  70 50 80 e5                                      str r5, [r0, #0x70]
00578960  01 50 a0 e3                                      mov r5, #1
00578964  78 20 80 e5                                      str r2, [r0, #0x78]
00578968  58 c0 80 e5                                      str ip, [r0, #0x58]
0057896c  64 10 80 e5                                      str r1, [r0, #0x64]
00578970  74 50 c0 e5                                      strb r5, [r0, #0x74]
00578974  04 20 80 e5                                      str r2, [r0, #4]
00578978  08 20 80 e5                                      str r2, [r0, #8]
0057897c  0c 20 80 e5                                      str r2, [r0, #0xc]
00578980  10 20 80 e5                                      str r2, [r0, #0x10]
00578984  14 20 80 e5                                      str r2, [r0, #0x14]
00578988  18 20 80 e5                                      str r2, [r0, #0x18]
0057898c  1c 20 80 e5                                      str r2, [r0, #0x1c]
00578990  20 20 80 e5                                      str r2, [r0, #0x20]
00578994  24 20 80 e5                                      str r2, [r0, #0x24]
00578998  28 20 80 e5                                      str r2, [r0, #0x28]
0057899c  2c 20 80 e5                                      str r2, [r0, #0x2c]
005789a0  30 20 80 e5                                      str r2, [r0, #0x30]
005789a4  34 20 80 e5                                      str r2, [r0, #0x34]
005789a8  38 c0 80 e5                                      str ip, [r0, #0x38]
005789ac  3c c0 80 e5                                      str ip, [r0, #0x3c]
005789b0  40 c0 80 e5                                      str ip, [r0, #0x40]
005789b4  44 10 80 e5                                      str r1, [r0, #0x44]
005789b8  48 10 80 e5                                      str r1, [r0, #0x48]
005789bc  4c 10 80 e5                                      str r1, [r0, #0x4c]
005789c0  50 c0 80 e5                                      str ip, [r0, #0x50]
005789c4  54 c0 80 e5                                      str ip, [r0, #0x54]
005789c8  5c 10 80 e5                                      str r1, [r0, #0x5c]
005789cc  60 10 80 e5                                      str r1, [r0, #0x60]
005789d0  68 20 80 e5                                      str r2, [r0, #0x68]
005789d4  30 00 bd e8                                      pop {r4, r5}
005789d8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005789dc  5c c1 41 00 54 30 00 00                          .byte 0x5c, 0xc1, 0x41, 0x00, 0x54, 0x30, 0x00, 0x00

; FUNCTION 0x005789e4, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMeshC1Ev
; demangled: glitch::scene::CBatchMesh::CBatchMesh()
; decoder-mode: arm
005789e4  30 00 2d e9                                      push {r4, r5}
005789e8  ac 40 9f e5                                      ldr r4, [pc, #0xac]
005789ec  ac 20 9f e5                                      ldr r2, [pc, #0xac]
005789f0  bf c4 a0 e3                                      mov ip, #0xbf000000
005789f4  04 40 8f e0                                      add r4, pc, r4
005789f8  02 20 94 e7                                      ldr r2, [r4, r2]
005789fc  02 c5 8c e2                                      add ip, ip, #0x800000
00578a00  fe 15 a0 e3                                      mov r1, #0x3f800000
00578a04  08 50 82 e2                                      add r5, r2, #8
00578a08  00 50 80 e5                                      str r5, [r0]
00578a0c  00 50 e0 e3                                      mvn r5, #0
00578a10  6c 50 80 e5                                      str r5, [r0, #0x6c]
00578a14  2c 50 a0 e3                                      mov r5, #0x2c
00578a18  00 20 a0 e3                                      mov r2, #0
00578a1c  70 50 80 e5                                      str r5, [r0, #0x70]
00578a20  01 50 a0 e3                                      mov r5, #1
00578a24  78 20 80 e5                                      str r2, [r0, #0x78]
00578a28  58 c0 80 e5                                      str ip, [r0, #0x58]
00578a2c  64 10 80 e5                                      str r1, [r0, #0x64]
00578a30  74 50 c0 e5                                      strb r5, [r0, #0x74]
00578a34  04 20 80 e5                                      str r2, [r0, #4]
00578a38  08 20 80 e5                                      str r2, [r0, #8]
00578a3c  0c 20 80 e5                                      str r2, [r0, #0xc]
00578a40  10 20 80 e5                                      str r2, [r0, #0x10]
00578a44  14 20 80 e5                                      str r2, [r0, #0x14]
00578a48  18 20 80 e5                                      str r2, [r0, #0x18]
00578a4c  1c 20 80 e5                                      str r2, [r0, #0x1c]
00578a50  20 20 80 e5                                      str r2, [r0, #0x20]
00578a54  24 20 80 e5                                      str r2, [r0, #0x24]
00578a58  28 20 80 e5                                      str r2, [r0, #0x28]
00578a5c  2c 20 80 e5                                      str r2, [r0, #0x2c]
00578a60  30 20 80 e5                                      str r2, [r0, #0x30]
00578a64  34 20 80 e5                                      str r2, [r0, #0x34]
00578a68  38 c0 80 e5                                      str ip, [r0, #0x38]
00578a6c  3c c0 80 e5                                      str ip, [r0, #0x3c]
00578a70  40 c0 80 e5                                      str ip, [r0, #0x40]
00578a74  44 10 80 e5                                      str r1, [r0, #0x44]
00578a78  48 10 80 e5                                      str r1, [r0, #0x48]
00578a7c  4c 10 80 e5                                      str r1, [r0, #0x4c]
00578a80  50 c0 80 e5                                      str ip, [r0, #0x50]
00578a84  54 c0 80 e5                                      str ip, [r0, #0x54]
00578a88  5c 10 80 e5                                      str r1, [r0, #0x5c]
00578a8c  60 10 80 e5                                      str r1, [r0, #0x60]
00578a90  68 20 80 e5                                      str r2, [r0, #0x68]
00578a94  30 00 bd e8                                      pop {r4, r5}
00578a98  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00578a9c  9c c0 41 00 54 30 00 00                          .byte 0x9c, 0xc0, 0x41, 0x00, 0x54, 0x30, 0x00, 0x00

; FUNCTION 0x00578aa4, declared_size=188, range_size=188, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMeshC2Ej
; demangled: glitch::scene::CBatchMesh::CBatchMesh(unsigned int)
; decoder-mode: arm
00578aa4  70 00 2d e9                                      push {r4, r5, r6}
00578aa8  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
00578aac  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00578ab0  bf 44 a0 e3                                      mov r4, #0xbf000000
00578ab4  05 50 8f e0                                      add r5, pc, r5
00578ab8  02 20 95 e7                                      ldr r2, [r5, r2]
00578abc  02 45 84 e2                                      add r4, r4, #0x800000
00578ac0  fe c5 a0 e3                                      mov ip, #0x3f800000
00578ac4  08 60 82 e2                                      add r6, r2, #8
00578ac8  00 60 80 e5                                      str r6, [r0]
00578acc  00 20 a0 e3                                      mov r2, #0
00578ad0  00 60 e0 e3                                      mvn r6, #0
00578ad4  70 10 80 e5                                      str r1, [r0, #0x70]
00578ad8  01 10 a0 e3                                      mov r1, #1
00578adc  78 20 80 e5                                      str r2, [r0, #0x78]
00578ae0  58 40 80 e5                                      str r4, [r0, #0x58]
00578ae4  64 c0 80 e5                                      str ip, [r0, #0x64]
00578ae8  6c 60 80 e5                                      str r6, [r0, #0x6c]
00578aec  74 10 c0 e5                                      strb r1, [r0, #0x74]
00578af0  04 20 80 e5                                      str r2, [r0, #4]
00578af4  08 20 80 e5                                      str r2, [r0, #8]
00578af8  0c 20 80 e5                                      str r2, [r0, #0xc]
00578afc  10 20 80 e5                                      str r2, [r0, #0x10]
00578b00  14 20 80 e5                                      str r2, [r0, #0x14]
00578b04  18 20 80 e5                                      str r2, [r0, #0x18]
00578b08  1c 20 80 e5                                      str r2, [r0, #0x1c]
00578b0c  20 20 80 e5                                      str r2, [r0, #0x20]
00578b10  24 20 80 e5                                      str r2, [r0, #0x24]
00578b14  28 20 80 e5                                      str r2, [r0, #0x28]
00578b18  2c 20 80 e5                                      str r2, [r0, #0x2c]
00578b1c  30 20 80 e5                                      str r2, [r0, #0x30]
00578b20  34 20 80 e5                                      str r2, [r0, #0x34]
00578b24  38 40 80 e5                                      str r4, [r0, #0x38]
00578b28  3c 40 80 e5                                      str r4, [r0, #0x3c]
00578b2c  40 40 80 e5                                      str r4, [r0, #0x40]
00578b30  44 c0 80 e5                                      str ip, [r0, #0x44]
00578b34  48 c0 80 e5                                      str ip, [r0, #0x48]
00578b38  4c c0 80 e5                                      str ip, [r0, #0x4c]
00578b3c  50 40 80 e5                                      str r4, [r0, #0x50]
00578b40  54 40 80 e5                                      str r4, [r0, #0x54]
00578b44  5c c0 80 e5                                      str ip, [r0, #0x5c]
00578b48  60 c0 80 e5                                      str ip, [r0, #0x60]
00578b4c  68 20 80 e5                                      str r2, [r0, #0x68]
00578b50  70 00 bd e8                                      pop {r4, r5, r6}
00578b54  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00578b58  dc bf 41 00 54 30 00 00                          .byte 0xdc, 0xbf, 0x41, 0x00, 0x54, 0x30, 0x00, 0x00

; FUNCTION 0x00578b60, declared_size=188, range_size=188, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMeshC1Ej
; demangled: glitch::scene::CBatchMesh::CBatchMesh(unsigned int)
; decoder-mode: arm
00578b60  70 00 2d e9                                      push {r4, r5, r6}
00578b64  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
00578b68  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00578b6c  bf 44 a0 e3                                      mov r4, #0xbf000000
00578b70  05 50 8f e0                                      add r5, pc, r5
00578b74  02 20 95 e7                                      ldr r2, [r5, r2]
00578b78  02 45 84 e2                                      add r4, r4, #0x800000
00578b7c  fe c5 a0 e3                                      mov ip, #0x3f800000
00578b80  08 60 82 e2                                      add r6, r2, #8
00578b84  00 60 80 e5                                      str r6, [r0]
00578b88  00 20 a0 e3                                      mov r2, #0
00578b8c  00 60 e0 e3                                      mvn r6, #0
00578b90  70 10 80 e5                                      str r1, [r0, #0x70]
00578b94  01 10 a0 e3                                      mov r1, #1
00578b98  78 20 80 e5                                      str r2, [r0, #0x78]
00578b9c  58 40 80 e5                                      str r4, [r0, #0x58]
00578ba0  64 c0 80 e5                                      str ip, [r0, #0x64]
00578ba4  6c 60 80 e5                                      str r6, [r0, #0x6c]
00578ba8  74 10 c0 e5                                      strb r1, [r0, #0x74]
00578bac  04 20 80 e5                                      str r2, [r0, #4]
00578bb0  08 20 80 e5                                      str r2, [r0, #8]
00578bb4  0c 20 80 e5                                      str r2, [r0, #0xc]
00578bb8  10 20 80 e5                                      str r2, [r0, #0x10]
00578bbc  14 20 80 e5                                      str r2, [r0, #0x14]
00578bc0  18 20 80 e5                                      str r2, [r0, #0x18]
00578bc4  1c 20 80 e5                                      str r2, [r0, #0x1c]
00578bc8  20 20 80 e5                                      str r2, [r0, #0x20]
00578bcc  24 20 80 e5                                      str r2, [r0, #0x24]
00578bd0  28 20 80 e5                                      str r2, [r0, #0x28]
00578bd4  2c 20 80 e5                                      str r2, [r0, #0x2c]
00578bd8  30 20 80 e5                                      str r2, [r0, #0x30]
00578bdc  34 20 80 e5                                      str r2, [r0, #0x34]
00578be0  38 40 80 e5                                      str r4, [r0, #0x38]
00578be4  3c 40 80 e5                                      str r4, [r0, #0x3c]
00578be8  40 40 80 e5                                      str r4, [r0, #0x40]
00578bec  44 c0 80 e5                                      str ip, [r0, #0x44]
00578bf0  48 c0 80 e5                                      str ip, [r0, #0x48]
00578bf4  4c c0 80 e5                                      str ip, [r0, #0x4c]
00578bf8  50 40 80 e5                                      str r4, [r0, #0x50]
00578bfc  54 40 80 e5                                      str r4, [r0, #0x54]
00578c00  5c c0 80 e5                                      str ip, [r0, #0x5c]
00578c04  60 c0 80 e5                                      str ip, [r0, #0x60]
00578c08  68 20 80 e5                                      str r2, [r0, #0x68]
00578c0c  70 00 bd e8                                      pop {r4, r5, r6}
00578c10  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00578c14  20 bf 41 00 54 30 00 00                          .byte 0x20, 0xbf, 0x41, 0x00, 0x54, 0x30, 0x00, 0x00

; FUNCTION 0x00578c1c, declared_size=12, range_size=12, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZNK6glitch5scene10CBatchMesh5cloneEv
; demangled: glitch::scene::CBatchMesh::clone() const
; decoder-mode: arm
00578c1c  00 20 a0 e3                                      mov r2, #0
00578c20  00 20 80 e5                                      str r2, [r0]
00578c24  1e ff 2f e1                                      bx lr

; FUNCTION 0x00578c28, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZNK6glitch5scene10CBatchMesh18getMeshBufferCountEv
; demangled: glitch::scene::CBatchMesh::getMeshBufferCount() const
; decoder-mode: arm
00578c28  20 30 90 e5                                      ldr r3, [r0, #0x20]
00578c2c  24 20 90 e5                                      ldr r2, [r0, #0x24]
00578c30  02 30 63 e0                                      rsb r3, r3, r2
00578c34  43 31 a0 e1                                      asr r3, r3, #2
00578c38  83 00 83 e0                                      add r0, r3, r3, lsl #1
00578c3c  00 02 80 e0                                      add r0, r0, r0, lsl #4
00578c40  00 04 80 e0                                      add r0, r0, r0, lsl #8
00578c44  00 08 80 e0                                      add r0, r0, r0, lsl #16
00578c48  00 01 83 e0                                      add r0, r3, r0, lsl #2
00578c4c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00578c50, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZNK6glitch5scene10CBatchMesh13getMeshBufferEj
; demangled: glitch::scene::CBatchMesh::getMeshBuffer(unsigned int) const
; decoder-mode: arm
00578c50  14 30 a0 e3                                      mov r3, #0x14
00578c54  93 02 03 e0                                      mul r3, r3, r2
00578c58  20 20 91 e5                                      ldr r2, [r1, #0x20]
00578c5c  03 30 92 e7                                      ldr r3, [r2, r3]
00578c60  00 00 53 e3                                      cmp r3, #0
00578c64  00 30 80 e5                                      str r3, [r0]
00578c68  04 20 93 15                                      ldrne r2, [r3, #4]
00578c6c  01 20 82 12                                      addne r2, r2, #1
00578c70  04 20 83 15                                      strne r2, [r3, #4]
00578c74  1e ff 2f e1                                      bx lr

; FUNCTION 0x00578c78, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh14setBoundingBoxERKNS_4core8aabbox3dIfEE
; demangled: glitch::scene::CBatchMesh::setBoundingBox(glitch::core::aabbox3d<float> const&)
; decoder-mode: arm
00578c78  44 30 9f e5                                      ldr r3, [pc, #0x44]
00578c7c  44 20 9f e5                                      ldr r2, [pc, #0x44]
00578c80  03 30 8f e0                                      add r3, pc, r3
00578c84  02 20 93 e7                                      ldr r2, [r3, r2]
00578c88  00 30 92 e5                                      ldr r3, [r2]
00578c8c  6c 30 80 e5                                      str r3, [r0, #0x6c]
00578c90  00 30 91 e5                                      ldr r3, [r1]
00578c94  50 30 80 e5                                      str r3, [r0, #0x50]
00578c98  04 30 91 e5                                      ldr r3, [r1, #4]
00578c9c  54 30 80 e5                                      str r3, [r0, #0x54]
00578ca0  08 30 91 e5                                      ldr r3, [r1, #8]
00578ca4  58 30 80 e5                                      str r3, [r0, #0x58]
00578ca8  0c 30 91 e5                                      ldr r3, [r1, #0xc]
00578cac  5c 30 80 e5                                      str r3, [r0, #0x5c]
00578cb0  10 30 91 e5                                      ldr r3, [r1, #0x10]
00578cb4  60 30 80 e5                                      str r3, [r0, #0x60]
00578cb8  14 30 91 e5                                      ldr r3, [r1, #0x14]
00578cbc  64 30 80 e5                                      str r3, [r0, #0x64]
00578cc0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00578cc4  10 be 41 00 b0 07 00 00                          .byte 0x10, 0xbe, 0x41, 0x00, 0xb0, 0x07, 0x00, 0x00

; FUNCTION 0x00578ccc, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZNK6glitch5scene10CBatchMesh11getMaterialEj
; demangled: glitch::scene::CBatchMesh::getMaterial(unsigned int) const
; decoder-mode: arm
00578ccc  20 30 91 e5                                      ldr r3, [r1, #0x20]
00578cd0  14 10 a0 e3                                      mov r1, #0x14
00578cd4  91 32 23 e0                                      mla r3, r1, r2, r3
00578cd8  04 30 93 e5                                      ldr r3, [r3, #4]
00578cdc  00 00 53 e3                                      cmp r3, #0
00578ce0  00 30 80 e5                                      str r3, [r0]
00578ce4  00 20 93 15                                      ldrne r2, [r3]
00578ce8  01 20 82 12                                      addne r2, r2, #1
00578cec  00 20 83 15                                      strne r2, [r3]
00578cf0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00578cf4, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZNK6glitch5scene10CBatchMesh29getMaterialVertexAttributeMapEj
; demangled: glitch::scene::CBatchMesh::getMaterialVertexAttributeMap(unsigned int) const
; decoder-mode: arm
00578cf4  20 30 91 e5                                      ldr r3, [r1, #0x20]
00578cf8  14 10 a0 e3                                      mov r1, #0x14
00578cfc  91 32 23 e0                                      mla r3, r1, r2, r3
00578d00  08 30 93 e5                                      ldr r3, [r3, #8]
00578d04  00 00 53 e3                                      cmp r3, #0
00578d08  00 30 80 e5                                      str r3, [r0]
00578d0c  00 20 93 15                                      ldrne r2, [r3]
00578d10  01 20 82 12                                      addne r2, r2, #1
00578d14  00 20 83 15                                      strne r2, [r3]
00578d18  1e ff 2f e1                                      bx lr

; FUNCTION 0x0057a2ac, declared_size=188, range_size=188, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh11setMaterialEjRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS3_INS4_27CMaterialVertexAttributeMapEEE
; demangled: glitch::scene::CBatchMesh::setMaterial(unsigned int, boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> const&)
; decoder-mode: arm
0057a2ac  70 40 2d e9                                      push {r4, r5, r6, lr}
0057a2b0  00 40 a0 e1                                      mov r4, r0
0057a2b4  24 c0 94 e5                                      ldr ip, [r4, #0x24]
0057a2b8  20 00 90 e5                                      ldr r0, [r0, #0x20]
0057a2bc  03 50 a0 e1                                      mov r5, r3
0057a2c0  08 d0 4d e2                                      sub sp, sp, #8
0057a2c4  0c c0 60 e0                                      rsb ip, r0, ip
0057a2c8  4c c1 a0 e1                                      asr ip, ip, #2
0057a2cc  8c 30 8c e0                                      add r3, ip, ip, lsl #1
0057a2d0  03 32 83 e0                                      add r3, r3, r3, lsl #4
0057a2d4  03 34 83 e0                                      add r3, r3, r3, lsl #8
0057a2d8  03 38 83 e0                                      add r3, r3, r3, lsl #16
0057a2dc  03 c1 8c e0                                      add ip, ip, r3, lsl #2
0057a2e0  0c 00 51 e1                                      cmp r1, ip
0057a2e4  1d 00 00 2a                                      bhs #0x57a360
0057a2e8  00 30 92 e5                                      ldr r3, [r2]
0057a2ec  14 60 a0 e3                                      mov r6, #0x14
0057a2f0  96 01 06 e0                                      mul r6, r6, r1
0057a2f4  04 30 8d e5                                      str r3, [sp, #4]
0057a2f8  00 00 53 e3                                      cmp r3, #0
0057a2fc  00 10 93 15                                      ldrne r1, [r3]
0057a300  06 20 80 e0                                      add r2, r0, r6
0057a304  08 00 8d e2                                      add r0, sp, #8
0057a308  01 10 81 12                                      addne r1, r1, #1
0057a30c  00 10 83 15                                      strne r1, [r3]
0057a310  04 10 92 e5                                      ldr r1, [r2, #4]
0057a314  04 30 9d 15                                      ldrne r3, [sp, #4]
0057a318  04 10 20 e5                                      str r1, [r0, #-4]!
0057a31c  04 30 82 e5                                      str r3, [r2, #4]
0057a320  30 5a f6 eb                                      bl #0x310be8
0057a324  00 30 95 e5                                      ldr r3, [r5]
0057a328  20 10 94 e5                                      ldr r1, [r4, #0x20]
0057a32c  08 00 8d e2                                      add r0, sp, #8
0057a330  00 30 8d e5                                      str r3, [sp]
0057a334  00 00 53 e3                                      cmp r3, #0
0057a338  00 20 93 15                                      ldrne r2, [r3]
0057a33c  06 60 81 e0                                      add r6, r1, r6
0057a340  01 20 82 12                                      addne r2, r2, #1
0057a344  00 20 83 15                                      strne r2, [r3]
0057a348  00 30 9d 15                                      ldrne r3, [sp]
0057a34c  08 20 96 e5                                      ldr r2, [r6, #8]
0057a350  08 20 20 e5                                      str r2, [r0, #-8]!
0057a354  08 30 86 e5                                      str r3, [r6, #8]
0057a358  0d 00 a0 e1                                      mov r0, sp
0057a35c  c2 ff ff eb                                      bl #0x57a26c
0057a360  08 d0 8d e2                                      add sp, sp, #8
0057a364  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0057a4a8, declared_size=176, range_size=176, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh5stripEv
; demangled: glitch::scene::CBatchMesh::strip()
; decoder-mode: arm
0057a4a8  10 40 2d e9                                      push {r4, lr}
0057a4ac  20 30 90 e5                                      ldr r3, [r0, #0x20]
0057a4b0  28 10 90 e5                                      ldr r1, [r0, #0x28]
0057a4b4  24 20 90 e5                                      ldr r2, [r0, #0x24]
0057a4b8  00 40 a0 e1                                      mov r4, r0
0057a4bc  02 20 63 e0                                      rsb r2, r3, r2
0057a4c0  01 30 63 e0                                      rsb r3, r3, r1
0057a4c4  42 21 a0 e1                                      asr r2, r2, #2
0057a4c8  43 31 a0 e1                                      asr r3, r3, #2
0057a4cc  82 10 82 e0                                      add r1, r2, r2, lsl #1
0057a4d0  83 00 83 e0                                      add r0, r3, r3, lsl #1
0057a4d4  01 12 81 e0                                      add r1, r1, r1, lsl #4
0057a4d8  00 02 80 e0                                      add r0, r0, r0, lsl #4
0057a4dc  01 14 81 e0                                      add r1, r1, r1, lsl #8
0057a4e0  00 04 80 e0                                      add r0, r0, r0, lsl #8
0057a4e4  01 18 81 e0                                      add r1, r1, r1, lsl #16
0057a4e8  00 08 80 e0                                      add r0, r0, r0, lsl #16
0057a4ec  01 11 82 e0                                      add r1, r2, r1, lsl #2
0057a4f0  00 31 83 e0                                      add r3, r3, r0, lsl #2
0057a4f4  03 00 51 e1                                      cmp r1, r3
0057a4f8  01 00 00 0a                                      beq #0x57a504
0057a4fc  20 00 84 e2                                      add r0, r4, #0x20
0057a500  a4 ff ff eb                                      bl #0x57a398
0057a504  14 30 94 e5                                      ldr r3, [r4, #0x14]
0057a508  18 10 94 e5                                      ldr r1, [r4, #0x18]
0057a50c  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
0057a510  01 10 63 e0                                      rsb r1, r3, r1
0057a514  c1 11 a0 e1                                      asr r1, r1, #3
0057a518  02 30 63 e0                                      rsb r3, r3, r2
0057a51c  c3 01 51 e1                                      cmp r1, r3, asr #3
0057a520  01 00 00 0a                                      beq #0x57a52c
0057a524  14 00 84 e2                                      add r0, r4, #0x14
0057a528  1f fe ff eb                                      bl #0x579dac
0057a52c  08 30 94 e5                                      ldr r3, [r4, #8]
0057a530  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0057a534  10 20 94 e5                                      ldr r2, [r4, #0x10]
0057a538  01 10 63 e0                                      rsb r1, r3, r1
0057a53c  02 30 63 e0                                      rsb r3, r3, r2
0057a540  03 00 51 e1                                      cmp r1, r3
0057a544  02 00 00 0a                                      beq #0x57a554
0057a548  08 00 84 e2                                      add r0, r4, #8
0057a54c  10 40 bd e8                                      pop {r4, lr}
0057a550  53 fe ff ea                                      b #0x579ea4
0057a554  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0057a59c, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMeshD1Ev
; demangled: glitch::scene::CBatchMesh::~CBatchMesh()
; decoder-mode: arm
0057a59c  10 40 2d e9                                      push {r4, lr}
0057a5a0  54 30 9f e5                                      ldr r3, [pc, #0x54]
0057a5a4  54 20 9f e5                                      ldr r2, [pc, #0x54]
0057a5a8  00 40 a0 e1                                      mov r4, r0
0057a5ac  03 30 8f e0                                      add r3, pc, r3
0057a5b0  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0057a5b4  02 20 93 e7                                      ldr r2, [r3, r2]
0057a5b8  00 00 50 e3                                      cmp r0, #0
0057a5bc  08 20 82 e2                                      add r2, r2, #8
0057a5c0  00 20 84 e5                                      str r2, [r4]
0057a5c4  00 00 00 0a                                      beq #0x57a5cc
0057a5c8  a0 57 f6 eb                                      bl #0x310450
0057a5cc  20 00 84 e2                                      add r0, r4, #0x20
0057a5d0  e0 ff ff eb                                      bl #0x57a558
0057a5d4  14 00 94 e5                                      ldr r0, [r4, #0x14]
0057a5d8  00 00 50 e3                                      cmp r0, #0
0057a5dc  00 00 00 0a                                      beq #0x57a5e4
0057a5e0  9a 57 f6 eb                                      bl #0x310450
0057a5e4  08 00 94 e5                                      ldr r0, [r4, #8]
0057a5e8  00 00 50 e3                                      cmp r0, #0
0057a5ec  00 00 00 0a                                      beq #0x57a5f4
0057a5f0  96 57 f6 eb                                      bl #0x310450
0057a5f4  04 00 a0 e1                                      mov r0, r4
0057a5f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0057a5fc  e4 a4 41 00 54 30 00 00                          .byte 0xe4, 0xa4, 0x41, 0x00, 0x54, 0x30, 0x00, 0x00

; FUNCTION 0x0057a604, declared_size=28, range_size=28, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMeshD0Ev
; demangled: glitch::scene::CBatchMesh::~CBatchMesh()
; decoder-mode: arm
0057a604  10 40 2d e9                                      push {r4, lr}
0057a608  00 40 a0 e1                                      mov r4, r0
0057a60c  e2 ff ff eb                                      bl #0x57a59c
0057a610  04 00 a0 e1                                      mov r0, r4
0057a614  25 4f f6 eb                                      bl #0x30e2b0
0057a618  04 00 a0 e1                                      mov r0, r4
0057a61c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0057a620, declared_size=104, range_size=104, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMeshD2Ev
; demangled: glitch::scene::CBatchMesh::~CBatchMesh()
; decoder-mode: arm
0057a620  10 40 2d e9                                      push {r4, lr}
0057a624  54 30 9f e5                                      ldr r3, [pc, #0x54]
0057a628  54 20 9f e5                                      ldr r2, [pc, #0x54]
0057a62c  00 40 a0 e1                                      mov r4, r0
0057a630  03 30 8f e0                                      add r3, pc, r3
0057a634  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0057a638  02 20 93 e7                                      ldr r2, [r3, r2]
0057a63c  00 00 50 e3                                      cmp r0, #0
0057a640  08 20 82 e2                                      add r2, r2, #8
0057a644  00 20 84 e5                                      str r2, [r4]
0057a648  00 00 00 0a                                      beq #0x57a650
0057a64c  7f 57 f6 eb                                      bl #0x310450
0057a650  20 00 84 e2                                      add r0, r4, #0x20
0057a654  bf ff ff eb                                      bl #0x57a558
0057a658  14 00 94 e5                                      ldr r0, [r4, #0x14]
0057a65c  00 00 50 e3                                      cmp r0, #0
0057a660  00 00 00 0a                                      beq #0x57a668
0057a664  79 57 f6 eb                                      bl #0x310450
0057a668  08 00 94 e5                                      ldr r0, [r4, #8]
0057a66c  00 00 50 e3                                      cmp r0, #0
0057a670  00 00 00 0a                                      beq #0x57a678
0057a674  75 57 f6 eb                                      bl #0x310450
0057a678  04 00 a0 e1                                      mov r0, r4
0057a67c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0057a680  60 a4 41 00 54 30 00 00                          .byte 0x60, 0xa4, 0x41, 0x00, 0x54, 0x30, 0x00, 0x00

; FUNCTION 0x0057a6d4, declared_size=952, range_size=952, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZNK6glitch5scene10CBatchMesh17updateBoundingBoxEv
; demangled: glitch::scene::CBatchMesh::updateBoundingBox() const
; decoder-mode: arm
0057a6d4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057a6d8  00 40 a0 e1                                      mov r4, r0
0057a6dc  24 30 94 e5                                      ldr r3, [r4, #0x24]
0057a6e0  20 00 90 e5                                      ldr r0, [r0, #0x20]
0057a6e4  74 20 d4 e5                                      ldrb r2, [r4, #0x74]
0057a6e8  94 13 9f e5                                      ldr r1, [pc, #0x394]
0057a6ec  03 30 60 e0                                      rsb r3, r0, r3
0057a6f0  43 31 a0 e1                                      asr r3, r3, #2
0057a6f4  00 00 52 e3                                      cmp r2, #0
0057a6f8  83 20 83 e0                                      add r2, r3, r3, lsl #1
0057a6fc  4c d0 4d e2                                      sub sp, sp, #0x4c
0057a700  02 22 82 e0                                      add r2, r2, r2, lsl #4
0057a704  01 10 8f e0                                      add r1, pc, r1
0057a708  02 24 82 e0                                      add r2, r2, r2, lsl #8
0057a70c  10 10 8d e5                                      str r1, [sp, #0x10]
0057a710  02 28 82 e0                                      add r2, r2, r2, lsl #16
0057a714  02 21 83 e0                                      add r2, r3, r2, lsl #2
0057a718  0c 20 8d e5                                      str r2, [sp, #0xc]
0057a71c  7a 00 00 0a                                      beq #0x57a90c
0057a720  00 00 52 e3                                      cmp r2, #0
0057a724  65 00 00 0a                                      beq #0x57a8c0
0057a728  bf 74 a0 e3                                      mov r7, #0xbf000000
0057a72c  00 a0 a0 e3                                      mov sl, #0
0057a730  38 20 84 e2                                      add r2, r4, #0x38
0057a734  01 30 a0 e3                                      mov r3, #1
0057a738  30 10 8d e2                                      add r1, sp, #0x30
0057a73c  02 75 87 e2                                      add r7, r7, #0x800000
0057a740  fe 65 a0 e3                                      mov r6, #0x3f800000
0057a744  14 20 8d e5                                      str r2, [sp, #0x14]
0057a748  04 a0 8d e5                                      str sl, [sp, #4]
0057a74c  08 30 8d e5                                      str r3, [sp, #8]
0057a750  18 90 8d e2                                      add sb, sp, #0x18
0057a754  00 10 8d e5                                      str r1, [sp]
0057a758  30 70 8d e5                                      str r7, [sp, #0x30]
0057a75c  34 70 8d e5                                      str r7, [sp, #0x34]
0057a760  38 70 8d e5                                      str r7, [sp, #0x38]
0057a764  3c 60 8d e5                                      str r6, [sp, #0x3c]
0057a768  40 60 8d e5                                      str r6, [sp, #0x40]
0057a76c  44 60 8d e5                                      str r6, [sp, #0x44]
0057a770  0a 30 80 e0                                      add r3, r0, sl
0057a774  b0 b1 d3 e1                                      ldrh fp, [r3, #0x10]
0057a778  00 00 5b e3                                      cmp fp, #0
0057a77c  35 00 00 0a                                      beq #0x57a858
0057a780  00 50 a0 e3                                      mov r5, #0
0057a784  01 80 a0 e3                                      mov r8, #1
0057a788  10 00 00 ea                                      b #0x57a7d0
0057a78c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0057a790  01 50 85 e2                                      add r5, r5, #1
0057a794  05 00 5b e1                                      cmp fp, r5
0057a798  30 30 8d e5                                      str r3, [sp, #0x30]
0057a79c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0057a7a0  00 80 a0 e3                                      mov r8, #0
0057a7a4  34 30 8d e5                                      str r3, [sp, #0x34]
0057a7a8  20 30 9d e5                                      ldr r3, [sp, #0x20]
0057a7ac  38 30 8d e5                                      str r3, [sp, #0x38]
0057a7b0  24 30 9d e5                                      ldr r3, [sp, #0x24]
0057a7b4  3c 30 8d e5                                      str r3, [sp, #0x3c]
0057a7b8  28 30 9d e5                                      ldr r3, [sp, #0x28]
0057a7bc  40 30 8d e5                                      str r3, [sp, #0x40]
0057a7c0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0057a7c4  44 30 8d e5                                      str r3, [sp, #0x44]
0057a7c8  22 00 00 9a                                      bls #0x57a858
0057a7cc  20 00 94 e5                                      ldr r0, [r4, #0x20]
0057a7d0  18 70 8d e5                                      str r7, [sp, #0x18]
0057a7d4  1c 70 8d e5                                      str r7, [sp, #0x1c]
0057a7d8  20 70 8d e5                                      str r7, [sp, #0x20]
0057a7dc  24 60 8d e5                                      str r6, [sp, #0x24]
0057a7e0  28 60 8d e5                                      str r6, [sp, #0x28]
0057a7e4  2c 60 8d e5                                      str r6, [sp, #0x2c]
0057a7e8  0a 30 80 e0                                      add r3, r0, sl
0057a7ec  bc 10 d3 e1                                      ldrh r1, [r3, #0xc]
0057a7f0  70 30 94 e5                                      ldr r3, [r4, #0x70]
0057a7f4  08 c0 94 e5                                      ldr ip, [r4, #8]
0057a7f8  01 10 85 e0                                      add r1, r5, r1
0057a7fc  93 01 01 e0                                      mul r1, r3, r1
0057a800  09 30 a0 e1                                      mov r3, sb
0057a804  01 20 9c e7                                      ldr r2, [ip, r1]
0057a808  01 10 8c e0                                      add r1, ip, r1
0057a80c  04 e0 91 e5                                      ldr lr, [r1, #4]
0057a810  00 c0 92 e5                                      ldr ip, [r2]
0057a814  b6 22 d1 e1                                      ldrh r2, [r1, #0x26]
0057a818  b4 12 d1 e1                                      ldrh r1, [r1, #0x24]
0057a81c  8e c1 9c e7                                      ldr ip, [ip, lr, lsl #3]
0057a820  14 e0 a0 e3                                      mov lr, #0x14
0057a824  9e 0c 0c e0                                      mul ip, lr, ip
0057a828  0c 00 90 e7                                      ldr r0, [r0, ip]
0057a82c  14 00 90 e5                                      ldr r0, [r0, #0x14]
0057a830  a2 99 00 eb                                      bl #0x5a0ec0
0057a834  00 00 58 e3                                      cmp r8, #0
0057a838  d3 ff ff 1a                                      bne #0x57a78c
0057a83c  00 00 9d e5                                      ldr r0, [sp]
0057a840  09 10 a0 e1                                      mov r1, sb
0057a844  01 50 85 e2                                      add r5, r5, #1
0057a848  40 86 f7 eb                                      bl #0x35c150
0057a84c  05 00 5b e1                                      cmp fp, r5
0057a850  00 80 a0 e3                                      mov r8, #0
0057a854  dc ff ff 8a                                      bhi #0x57a7cc
0057a858  08 10 9d e5                                      ldr r1, [sp, #8]
0057a85c  00 00 51 e3                                      cmp r1, #0
0057a860  83 00 00 0a                                      beq #0x57aa74
0057a864  34 c0 9d e5                                      ldr ip, [sp, #0x34]
0057a868  38 00 9d e5                                      ldr r0, [sp, #0x38]
0057a86c  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0057a870  40 20 9d e5                                      ldr r2, [sp, #0x40]
0057a874  44 30 9d e5                                      ldr r3, [sp, #0x44]
0057a878  30 50 9d e5                                      ldr r5, [sp, #0x30]
0057a87c  3c c0 84 e5                                      str ip, [r4, #0x3c]
0057a880  40 00 84 e5                                      str r0, [r4, #0x40]
0057a884  38 50 84 e5                                      str r5, [r4, #0x38]
0057a888  44 10 84 e5                                      str r1, [r4, #0x44]
0057a88c  48 20 84 e5                                      str r2, [r4, #0x48]
0057a890  4c 30 84 e5                                      str r3, [r4, #0x4c]
0057a894  04 20 9d e5                                      ldr r2, [sp, #4]
0057a898  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0057a89c  14 a0 8a e2                                      add sl, sl, #0x14
0057a8a0  01 20 82 e2                                      add r2, r2, #1
0057a8a4  03 00 52 e1                                      cmp r2, r3
0057a8a8  04 20 8d e5                                      str r2, [sp, #4]
0057a8ac  03 00 00 0a                                      beq #0x57a8c0
0057a8b0  00 10 a0 e3                                      mov r1, #0
0057a8b4  20 00 94 e5                                      ldr r0, [r4, #0x20]
0057a8b8  08 10 8d e5                                      str r1, [sp, #8]
0057a8bc  a5 ff ff ea                                      b #0x57a758
0057a8c0  10 70 9d e5                                      ldr r7, [sp, #0x10]
0057a8c4  bc 31 9f e5                                      ldr r3, [pc, #0x1bc]
0057a8c8  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
0057a8cc  38 60 94 e5                                      ldr r6, [r4, #0x38]
0057a8d0  3c 50 94 e5                                      ldr r5, [r4, #0x3c]
0057a8d4  40 c0 94 e5                                      ldr ip, [r4, #0x40]
0057a8d8  44 00 94 e5                                      ldr r0, [r4, #0x44]
0057a8dc  48 10 94 e5                                      ldr r1, [r4, #0x48]
0057a8e0  03 30 97 e7                                      ldr r3, [r7, r3]
0057a8e4  64 20 84 e5                                      str r2, [r4, #0x64]
0057a8e8  50 60 84 e5                                      str r6, [r4, #0x50]
0057a8ec  54 50 84 e5                                      str r5, [r4, #0x54]
0057a8f0  58 c0 84 e5                                      str ip, [r4, #0x58]
0057a8f4  5c 00 84 e5                                      str r0, [r4, #0x5c]
0057a8f8  60 10 84 e5                                      str r1, [r4, #0x60]
0057a8fc  00 30 93 e5                                      ldr r3, [r3]
0057a900  00 20 a0 e3                                      mov r2, #0
0057a904  74 20 c4 e5                                      strb r2, [r4, #0x74]
0057a908  6c 30 84 e5                                      str r3, [r4, #0x6c]
0057a90c  68 a0 94 e5                                      ldr sl, [r4, #0x68]
0057a910  00 00 5a e3                                      cmp sl, #0
0057a914  42 00 00 0a                                      beq #0x57aa24
0057a918  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0057a91c  01 00 5a e1                                      cmp sl, r1
0057a920  01 90 a0 23                                      movhs sb, #1
0057a924  44 00 00 3a                                      blo #0x57aa3c
0057a928  02 31 e0 e3                                      mvn r3, #0x80000000
0057a92c  02 25 e0 e3                                      mvn r2, #0x800000
0057a930  02 35 43 e2                                      sub r3, r3, #0x800000
0057a934  00 00 5a e3                                      cmp sl, #0
0057a938  2c 20 8d e5                                      str r2, [sp, #0x2c]
0057a93c  20 30 8d e5                                      str r3, [sp, #0x20]
0057a940  24 20 8d e5                                      str r2, [sp, #0x24]
0057a944  28 20 8d e5                                      str r2, [sp, #0x28]
0057a948  18 30 8d e5                                      str r3, [sp, #0x18]
0057a94c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0057a950  2e 00 00 0a                                      beq #0x57aa10
0057a954  50 b0 84 e2                                      add fp, r4, #0x50
0057a958  00 60 a0 e3                                      mov r6, #0
0057a95c  18 80 8d e2                                      add r8, sp, #0x18
0057a960  02 00 00 ea                                      b #0x57a970
0057a964  01 a0 5a e2                                      subs sl, sl, #1
0057a968  14 60 86 e2                                      add r6, r6, #0x14
0057a96c  27 00 00 0a                                      beq #0x57aa10
0057a970  20 20 94 e5                                      ldr r2, [r4, #0x20]
0057a974  06 20 82 e0                                      add r2, r2, r6
0057a978  be 70 d2 e1                                      ldrh r7, [r2, #0xe]
0057a97c  bc 30 d2 e1                                      ldrh r3, [r2, #0xc]
0057a980  b0 51 d2 e1                                      ldrh r5, [r2, #0x10]
0057a984  07 70 63 e0                                      rsb r7, r3, r7
0057a988  07 00 55 e1                                      cmp r5, r7
0057a98c  f4 ff ff 2a                                      bhs #0x57a964
0057a990  02 00 00 ea                                      b #0x57a9a0
0057a994  20 30 94 e5                                      ldr r3, [r4, #0x20]
0057a998  06 30 83 e0                                      add r3, r3, r6
0057a99c  bc 30 d3 e1                                      ldrh r3, [r3, #0xc]
0057a9a0  70 10 94 e5                                      ldr r1, [r4, #0x70]
0057a9a4  08 20 94 e5                                      ldr r2, [r4, #8]
0057a9a8  05 30 83 e0                                      add r3, r3, r5
0057a9ac  08 00 a0 e1                                      mov r0, r8
0057a9b0  91 23 23 e0                                      mla r3, r1, r3, r2
0057a9b4  01 50 85 e2                                      add r5, r5, #1
0057a9b8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
0057a9bc  e3 85 f7 eb                                      bl #0x35c150
0057a9c0  05 00 57 e1                                      cmp r7, r5
0057a9c4  f2 ff ff 8a                                      bhi #0x57a994
0057a9c8  00 00 59 e3                                      cmp sb, #0
0057a9cc  16 00 00 0a                                      beq #0x57aa2c
0057a9d0  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
0057a9d4  20 00 9d e5                                      ldr r0, [sp, #0x20]
0057a9d8  24 10 9d e5                                      ldr r1, [sp, #0x24]
0057a9dc  28 20 9d e5                                      ldr r2, [sp, #0x28]
0057a9e0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0057a9e4  18 50 9d e5                                      ldr r5, [sp, #0x18]
0057a9e8  01 a0 5a e2                                      subs sl, sl, #1
0057a9ec  54 c0 84 e5                                      str ip, [r4, #0x54]
0057a9f0  50 50 84 e5                                      str r5, [r4, #0x50]
0057a9f4  58 00 84 e5                                      str r0, [r4, #0x58]
0057a9f8  5c 10 84 e5                                      str r1, [r4, #0x5c]
0057a9fc  60 20 84 e5                                      str r2, [r4, #0x60]
0057aa00  64 30 84 e5                                      str r3, [r4, #0x64]
0057aa04  00 90 a0 e3                                      mov sb, #0
0057aa08  14 60 86 e2                                      add r6, r6, #0x14
0057aa0c  d7 ff ff 1a                                      bne #0x57a970
0057aa10  10 20 9d e5                                      ldr r2, [sp, #0x10]
0057aa14  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0057aa18  03 30 92 e7                                      ldr r3, [r2, r3]
0057aa1c  00 30 93 e5                                      ldr r3, [r3]
0057aa20  6c 30 84 e5                                      str r3, [r4, #0x6c]
0057aa24  4c d0 8d e2                                      add sp, sp, #0x4c
0057aa28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0057aa2c  0b 00 a0 e1                                      mov r0, fp
0057aa30  08 10 a0 e1                                      mov r1, r8
0057aa34  c5 85 f7 eb                                      bl #0x35c150
0057aa38  c9 ff ff ea                                      b #0x57a964
0057aa3c  38 50 94 e5                                      ldr r5, [r4, #0x38]
0057aa40  3c c0 94 e5                                      ldr ip, [r4, #0x3c]
0057aa44  40 00 94 e5                                      ldr r0, [r4, #0x40]
0057aa48  44 10 94 e5                                      ldr r1, [r4, #0x44]
0057aa4c  48 20 94 e5                                      ldr r2, [r4, #0x48]
0057aa50  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0057aa54  50 50 84 e5                                      str r5, [r4, #0x50]
0057aa58  54 c0 84 e5                                      str ip, [r4, #0x54]
0057aa5c  58 00 84 e5                                      str r0, [r4, #0x58]
0057aa60  5c 10 84 e5                                      str r1, [r4, #0x5c]
0057aa64  60 20 84 e5                                      str r2, [r4, #0x60]
0057aa68  64 30 84 e5                                      str r3, [r4, #0x64]
0057aa6c  00 90 a0 e3                                      mov sb, #0
0057aa70  ac ff ff ea                                      b #0x57a928
0057aa74  14 00 9d e5                                      ldr r0, [sp, #0x14]
0057aa78  00 10 9d e5                                      ldr r1, [sp]
0057aa7c  b3 85 f7 eb                                      bl #0x35c150
0057aa80  83 ff ff ea                                      b #0x57a894
; mapping-symbol data/literal pool
0057aa84  8c a3 41 00 b0 07 00 00                          .byte 0x8c, 0xa3, 0x41, 0x00, 0xb0, 0x07, 0x00, 0x00

; FUNCTION 0x0057aa8c, declared_size=88, range_size=88, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZNK6glitch5scene10CBatchMesh14getBoundingBoxEv
; demangled: glitch::scene::CBatchMesh::getBoundingBox() const
; decoder-mode: arm
0057aa8c  10 40 2d e9                                      push {r4, lr}
0057aa90  74 20 d0 e5                                      ldrb r2, [r0, #0x74]
0057aa94  40 30 9f e5                                      ldr r3, [pc, #0x40]
0057aa98  00 40 a0 e1                                      mov r4, r0
0057aa9c  00 00 52 e3                                      cmp r2, #0
0057aaa0  03 30 8f e0                                      add r3, pc, r3
0057aaa4  08 00 00 1a                                      bne #0x57aacc
0057aaa8  68 20 90 e5                                      ldr r2, [r0, #0x68]
0057aaac  00 00 52 e3                                      cmp r2, #0
0057aab0  07 00 00 0a                                      beq #0x57aad4
0057aab4  24 10 9f e5                                      ldr r1, [pc, #0x24]
0057aab8  6c 20 90 e5                                      ldr r2, [r0, #0x6c]
0057aabc  01 30 93 e7                                      ldr r3, [r3, r1]
0057aac0  00 30 93 e5                                      ldr r3, [r3]
0057aac4  03 00 52 e1                                      cmp r2, r3
0057aac8  01 00 00 0a                                      beq #0x57aad4
0057aacc  04 00 a0 e1                                      mov r0, r4
0057aad0  ff fe ff eb                                      bl #0x57a6d4
0057aad4  50 00 84 e2                                      add r0, r4, #0x50
0057aad8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0057aadc  f0 9f 41 00 b0 07 00 00                          .byte 0xf0, 0x9f, 0x41, 0x00, 0xb0, 0x07, 0x00, 0x00

; FUNCTION 0x0057aae4, declared_size=660, range_size=660, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh20updateSegmentContentEPvPKNS0_11CMeshBufferEjbRKN5boost13intrusive_ptrINS_5video9CMaterialEEERKNS7_INS8_19CVertexAttributeMapEEEPKNS8_12IVideoDriverE
; demangled: glitch::scene::CBatchMesh::updateSegmentContent(void*, glitch::scene::CMeshBuffer const*, unsigned int, bool, boost::intrusive_ptr<glitch::video::CMaterial> const&, boost::intrusive_ptr<glitch::video::CVertexAttributeMap> const&, glitch::video::IVideoDriver const*)
; decoder-mode: arm
0057aae4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057aae8  14 c0 90 e5                                      ldr ip, [r0, #0x14]
0057aaec  01 50 a0 e1                                      mov r5, r1
0057aaf0  20 10 90 e5                                      ldr r1, [r0, #0x20]
0057aaf4  85 71 9c e7                                      ldr r7, [ip, r5, lsl #3]
0057aaf8  00 40 a0 e1                                      mov r4, r0
0057aafc  14 00 a0 e3                                      mov r0, #0x14
0057ab00  90 17 27 e0                                      mla r7, r0, r7, r1
0057ab04  85 c1 8c e0                                      add ip, ip, r5, lsl #3
0057ab08  bc 80 d7 e1                                      ldrh r8, [r7, #0xc]
0057ab0c  04 60 9c e5                                      ldr r6, [ip, #4]
0057ab10  70 70 94 e5                                      ldr r7, [r4, #0x70]
0057ab14  08 c0 94 e5                                      ldr ip, [r4, #8]
0057ab18  06 60 88 e0                                      add r6, r8, r6
0057ab1c  97 06 06 e0                                      mul r6, r7, r6
0057ab20  00 80 53 e2                                      subs r8, r3, #0
0057ab24  06 30 9c e7                                      ldr r3, [ip, r6]
0057ab28  06 60 8c e0                                      add r6, ip, r6
0057ab2c  04 c0 96 e5                                      ldr ip, [r6, #4]
0057ab30  00 30 93 e5                                      ldr r3, [r3]
0057ab34  6c d0 4d e2                                      sub sp, sp, #0x6c
0057ab38  02 a0 a0 e1                                      mov sl, r2
0057ab3c  8c b1 93 e7                                      ldr fp, [r3, ip, lsl #3]
0057ab40  90 0b 0b e0                                      mul fp, r0, fp
0057ab44  90 00 dd e5                                      ldrb r0, [sp, #0x90]
0057ab48  44 00 8d e5                                      str r0, [sp, #0x44]
0057ab4c  0b 90 91 e7                                      ldr sb, [r1, fp]
0057ab50  0b b0 81 e0                                      add fp, r1, fp
0057ab54  0e 00 00 1a                                      bne #0x57ab94
0057ab58  78 c0 94 e5                                      ldr ip, [r4, #0x78]
0057ab5c  00 00 5c e3                                      cmp ip, #0
0057ab60  09 00 00 0a                                      beq #0x57ab8c
0057ab64  44 e0 9d e5                                      ldr lr, [sp, #0x44]
0057ab68  0c 00 a0 e1                                      mov r0, ip
0057ab6c  00 30 58 e2                                      subs r3, r8, #0
0057ab70  01 30 a0 13                                      movne r3, #1
0057ab74  00 c0 9c e5                                      ldr ip, [ip]
0057ab78  04 10 a0 e1                                      mov r1, r4
0057ab7c  05 20 a0 e1                                      mov r2, r5
0057ab80  00 e0 8d e5                                      str lr, [sp]
0057ab84  0f e0 a0 e1                                      mov lr, pc
0057ab88  08 f0 9c e5                                      ldr pc, [ip, #8]
0057ab8c  6c d0 8d e2                                      add sp, sp, #0x6c
0057ab90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0057ab94  b4 22 d2 e1                                      ldrh r2, [r2, #0x24]
0057ab98  94 10 9d e5                                      ldr r1, [sp, #0x94]
0057ab9c  00 30 91 e5                                      ldr r3, [r1]
0057aba0  4c 20 8d e5                                      str r2, [sp, #0x4c]
0057aba4  b8 c2 da e1                                      ldrh ip, [sl, #0x28]
0057aba8  03 00 a0 e1                                      mov r0, r3
0057abac  48 c0 8d e5                                      str ip, [sp, #0x48]
0057abb0  04 70 93 e5                                      ldr r7, [r3, #4]
0057abb4  5e 2c 01 eb                                      bl #0x5c5d34
0057abb8  18 30 97 e5                                      ldr r3, [r7, #0x18]
0057abbc  0c 20 a0 e3                                      mov r2, #0xc
0057abc0  92 30 23 e0                                      mla r3, r2, r0, r3
0057abc4  64 00 8d e2                                      add r0, sp, #0x64
0057abc8  08 30 93 e5                                      ldr r3, [r3, #8]
0057abcc  20 10 93 e5                                      ldr r1, [r3, #0x20]
0057abd0  70 a7 01 eb                                      bl #0x5e4998
0057abd4  64 70 9d e5                                      ldr r7, [sp, #0x64]
0057abd8  00 00 57 e3                                      cmp r7, #0
0057abdc  06 00 00 0a                                      beq #0x57abfc
0057abe0  04 30 97 e5                                      ldr r3, [r7, #4]
0057abe4  01 30 83 e2                                      add r3, r3, #1
0057abe8  04 30 87 e5                                      str r3, [r7, #4]
0057abec  64 00 9d e5                                      ldr r0, [sp, #0x64]
0057abf0  00 00 50 e3                                      cmp r0, #0
0057abf4  00 00 00 0a                                      beq #0x57abfc
0057abf8  61 8a f6 eb                                      bl #0x31d584
0057abfc  00 20 97 e5                                      ldr r2, [r7]
0057ac00  14 30 9a e5                                      ldr r3, [sl, #0x14]
0057ac04  60 00 8d e2                                      add r0, sp, #0x60
0057ac08  0c 20 92 e5                                      ldr r2, [r2, #0xc]
0057ac0c  00 00 53 e3                                      cmp r3, #0
0057ac10  60 30 8d e5                                      str r3, [sp, #0x60]
0057ac14  58 20 8d e5                                      str r2, [sp, #0x58]
0057ac18  00 20 93 15                                      ldrne r2, [r3]
0057ac1c  18 a0 8a e2                                      add sl, sl, #0x18
0057ac20  01 20 82 12                                      addne r2, r2, #1
0057ac24  00 20 83 15                                      strne r2, [r3]
0057ac28  94 e0 9d e5                                      ldr lr, [sp, #0x94]
0057ac2c  00 e0 9e e5                                      ldr lr, [lr]
0057ac30  50 00 8d e5                                      str r0, [sp, #0x50]
0057ac34  0e 00 a0 e1                                      mov r0, lr
0057ac38  40 e0 8d e5                                      str lr, [sp, #0x40]
0057ac3c  3c 2c 01 eb                                      bl #0x5c5d34
0057ac40  98 20 9d e5                                      ldr r2, [sp, #0x98]
0057ac44  5c 00 8d e5                                      str r0, [sp, #0x5c]
0057ac48  04 30 9b e5                                      ldr r3, [fp, #4]
0057ac4c  00 20 92 e5                                      ldr r2, [r2]
0057ac50  08 b0 9b e5                                      ldr fp, [fp, #8]
0057ac54  03 00 a0 e1                                      mov r0, r3
0057ac58  04 20 82 e2                                      add r2, r2, #4
0057ac5c  3c 30 8d e5                                      str r3, [sp, #0x3c]
0057ac60  54 20 8d e5                                      str r2, [sp, #0x54]
0057ac64  32 2c 01 eb                                      bl #0x5c5d34
0057ac68  04 10 9b e5                                      ldr r1, [fp, #4]
0057ac6c  c5 2e 04 e3                                      movw r2, #0x4ec5
0057ac70  ec 24 4c e3                                      movt r2, #0xc4ec
0057ac74  18 c0 91 e5                                      ldr ip, [r1, #0x18]
0057ac78  1c e0 91 e5                                      ldr lr, [r1, #0x1c]
0057ac7c  0c 10 a0 e3                                      mov r1, #0xc
0057ac80  91 c0 21 e0                                      mla r1, r1, r0, ip
0057ac84  0a 00 a0 e1                                      mov r0, sl
0057ac88  08 10 91 e5                                      ldr r1, [r1, #8]
0057ac8c  01 10 6e e0                                      rsb r1, lr, r1
0057ac90  41 11 a0 e1                                      asr r1, r1, #2
0057ac94  92 01 02 e0                                      mul r2, r2, r1
0057ac98  02 21 8b e0                                      add r2, fp, r2, lsl #2
0057ac9c  08 b0 92 e5                                      ldr fp, [r2, #8]
0057aca0  96 95 00 eb                                      bl #0x5a0300
0057aca4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0057aca8  28 00 8d e5                                      str r0, [sp, #0x28]
0057acac  54 c0 9d e5                                      ldr ip, [sp, #0x54]
0057acb0  10 30 8d e5                                      str r3, [sp, #0x10]
0057acb4  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
0057acb8  4c e0 9d e5                                      ldr lr, [sp, #0x4c]
0057acbc  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
0057acc0  48 00 9d e5                                      ldr r0, [sp, #0x48]
0057acc4  18 30 8d e5                                      str r3, [sp, #0x18]
0057acc8  18 20 89 e2                                      add r2, sb, #0x18
0057accc  04 b0 8b e2                                      add fp, fp, #4
0057acd0  14 90 89 e2                                      add sb, sb, #0x14
0057acd4  00 30 a0 e3                                      mov r3, #0
0057acd8  04 c0 8d e5                                      str ip, [sp, #4]
0057acdc  1c e0 8d e5                                      str lr, [sp, #0x1c]
0057ace0  0c 20 8d e5                                      str r2, [sp, #0xc]
0057ace4  20 00 8d e5                                      str r0, [sp, #0x20]
0057ace8  00 10 8d e5                                      str r1, [sp]
0057acec  08 90 8d e5                                      str sb, [sp, #8]
0057acf0  14 b0 8d e5                                      str fp, [sp, #0x14]
0057acf4  24 30 8d e5                                      str r3, [sp, #0x24]
0057acf8  b4 32 d6 e1                                      ldrh r3, [r6, #0x24]
0057acfc  ab 2a 0a e3                                      movw r2, #0xaaab
0057ad00  aa 2a 4a e3                                      movt r2, #0xaaaa
0057ad04  2c 30 8d e5                                      str r3, [sp, #0x2c]
0057ad08  10 10 96 e5                                      ldr r1, [r6, #0x10]
0057ad0c  40 30 9d e5                                      ldr r3, [sp, #0x40]
0057ad10  07 00 a0 e1                                      mov r0, r7
0057ad14  92 c1 82 e0                                      umull ip, r2, r2, r1
0057ad18  34 80 8d e5                                      str r8, [sp, #0x34]
0057ad1c  a2 20 a0 e1                                      lsr r2, r2, #1
0057ad20  50 10 9d e5                                      ldr r1, [sp, #0x50]
0057ad24  58 c0 9d e5                                      ldr ip, [sp, #0x58]
0057ad28  30 20 8d e5                                      str r2, [sp, #0x30]
0057ad2c  0a 20 a0 e1                                      mov r2, sl
0057ad30  3c ff 2f e1                                      blx ip
0057ad34  50 00 9d e5                                      ldr r0, [sp, #0x50]
0057ad38  94 8f f7 eb                                      bl #0x35eb90
0057ad3c  48 e0 9d e5                                      ldr lr, [sp, #0x48]
0057ad40  b4 32 d6 e1                                      ldrh r3, [r6, #0x24]
0057ad44  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0057ad48  0a 00 a0 e1                                      mov r0, sl
0057ad4c  03 30 8e e0                                      add r3, lr, r3
0057ad50  03 30 61 e0                                      rsb r3, r1, r3
0057ad54  b6 32 c6 e1                                      strh r3, [r6, #0x26]
0057ad58  10 a0 96 e5                                      ldr sl, [r6, #0x10]
0057ad5c  67 95 00 eb                                      bl #0x5a0300
0057ad60  80 00 80 e0                                      add r0, r0, r0, lsl #1
0057ad64  0a a0 80 e0                                      add sl, r0, sl
0057ad68  14 a0 86 e5                                      str sl, [r6, #0x14]
0057ad6c  07 00 a0 e1                                      mov r0, r7
0057ad70  03 8a f6 eb                                      bl #0x31d584
0057ad74  77 ff ff ea                                      b #0x57ab58

; FUNCTION 0x0057b174, declared_size=504, range_size=504, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh30initStaticSegmentBoundingBoxesEv
; demangled: glitch::scene::CBatchMesh::initStaticSegmentBoundingBoxes()
; decoder-mode: arm
0057b174  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057b178  00 40 a0 e1                                      mov r4, r0
0057b17c  24 30 94 e5                                      ldr r3, [r4, #0x24]
0057b180  20 00 90 e5                                      ldr r0, [r0, #0x20]
0057b184  d8 11 9f e5                                      ldr r1, [pc, #0x1d8]
0057b188  34 d0 4d e2                                      sub sp, sp, #0x34
0057b18c  03 30 60 e0                                      rsb r3, r0, r3
0057b190  43 31 a0 e1                                      asr r3, r3, #2
0057b194  01 10 8f e0                                      add r1, pc, r1
0057b198  83 20 83 e0                                      add r2, r3, r3, lsl #1
0057b19c  10 10 8d e5                                      str r1, [sp, #0x10]
0057b1a0  02 22 82 e0                                      add r2, r2, r2, lsl #4
0057b1a4  02 24 82 e0                                      add r2, r2, r2, lsl #8
0057b1a8  02 28 82 e0                                      add r2, r2, r2, lsl #16
0057b1ac  02 21 93 e0                                      adds r2, r3, r2, lsl #2
0057b1b0  0c 20 8d e5                                      str r2, [sp, #0xc]
0057b1b4  63 00 00 0a                                      beq #0x57b348
0057b1b8  a8 21 9f e5                                      ldr r2, [pc, #0x1a8]
0057b1bc  bf 74 a0 e3                                      mov r7, #0xbf000000
0057b1c0  00 80 a0 e3                                      mov r8, #0
0057b1c4  14 20 8d e5                                      str r2, [sp, #0x14]
0057b1c8  02 75 87 e2                                      add r7, r7, #0x800000
0057b1cc  fe 65 a0 e3                                      mov r6, #0x3f800000
0057b1d0  08 80 8d e5                                      str r8, [sp, #8]
0057b1d4  18 90 8d e2                                      add sb, sp, #0x18
0057b1d8  14 b0 a0 e3                                      mov fp, #0x14
0057b1dc  08 30 80 e0                                      add r3, r0, r8
0057b1e0  b0 a1 d3 e1                                      ldrh sl, [r3, #0x10]
0057b1e4  00 00 5a e3                                      cmp sl, #0
0057b1e8  33 00 00 0a                                      beq #0x57b2bc
0057b1ec  00 50 a0 e3                                      mov r5, #0
0057b1f0  00 00 00 ea                                      b #0x57b1f8
0057b1f4  20 00 94 e5                                      ldr r0, [r4, #0x20]
0057b1f8  18 70 8d e5                                      str r7, [sp, #0x18]
0057b1fc  1c 70 8d e5                                      str r7, [sp, #0x1c]
0057b200  20 70 8d e5                                      str r7, [sp, #0x20]
0057b204  24 60 8d e5                                      str r6, [sp, #0x24]
0057b208  28 60 8d e5                                      str r6, [sp, #0x28]
0057b20c  2c 60 8d e5                                      str r6, [sp, #0x2c]
0057b210  08 30 80 e0                                      add r3, r0, r8
0057b214  bc 10 d3 e1                                      ldrh r1, [r3, #0xc]
0057b218  70 30 94 e5                                      ldr r3, [r4, #0x70]
0057b21c  08 c0 94 e5                                      ldr ip, [r4, #8]
0057b220  01 10 85 e0                                      add r1, r5, r1
0057b224  93 01 01 e0                                      mul r1, r3, r1
0057b228  09 30 a0 e1                                      mov r3, sb
0057b22c  01 20 9c e7                                      ldr r2, [ip, r1]
0057b230  01 10 8c e0                                      add r1, ip, r1
0057b234  04 e0 91 e5                                      ldr lr, [r1, #4]
0057b238  00 c0 92 e5                                      ldr ip, [r2]
0057b23c  b6 22 d1 e1                                      ldrh r2, [r1, #0x26]
0057b240  b4 12 d1 e1                                      ldrh r1, [r1, #0x24]
0057b244  8e c1 9c e7                                      ldr ip, [ip, lr, lsl #3]
0057b248  9b 0c 0c e0                                      mul ip, fp, ip
0057b24c  0c 00 90 e7                                      ldr r0, [r0, ip]
0057b250  14 00 90 e5                                      ldr r0, [r0, #0x14]
0057b254  19 97 00 eb                                      bl #0x5a0ec0
0057b258  20 30 94 e5                                      ldr r3, [r4, #0x20]
0057b25c  08 20 94 e5                                      ldr r2, [r4, #8]
0057b260  70 10 94 e5                                      ldr r1, [r4, #0x70]
0057b264  08 30 83 e0                                      add r3, r3, r8
0057b268  bc 30 d3 e1                                      ldrh r3, [r3, #0xc]
0057b26c  03 30 85 e0                                      add r3, r5, r3
0057b270  91 23 23 e0                                      mla r3, r1, r3, r2
0057b274  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0057b278  00 00 52 e3                                      cmp r2, #0
0057b27c  17 00 00 0a                                      beq #0x57b2e0
0057b280  18 30 9d e5                                      ldr r3, [sp, #0x18]
0057b284  00 30 82 e5                                      str r3, [r2]
0057b288  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0057b28c  04 30 82 e5                                      str r3, [r2, #4]
0057b290  20 30 9d e5                                      ldr r3, [sp, #0x20]
0057b294  08 30 82 e5                                      str r3, [r2, #8]
0057b298  24 30 9d e5                                      ldr r3, [sp, #0x24]
0057b29c  0c 30 82 e5                                      str r3, [r2, #0xc]
0057b2a0  28 30 9d e5                                      ldr r3, [sp, #0x28]
0057b2a4  10 30 82 e5                                      str r3, [r2, #0x10]
0057b2a8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0057b2ac  14 30 82 e5                                      str r3, [r2, #0x14]
0057b2b0  01 50 85 e2                                      add r5, r5, #1
0057b2b4  05 00 5a e1                                      cmp sl, r5
0057b2b8  cd ff ff 8a                                      bhi #0x57b1f4
0057b2bc  08 20 9d e5                                      ldr r2, [sp, #8]
0057b2c0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0057b2c4  14 80 88 e2                                      add r8, r8, #0x14
0057b2c8  01 20 82 e2                                      add r2, r2, #1
0057b2cc  03 00 52 e1                                      cmp r2, r3
0057b2d0  08 20 8d e5                                      str r2, [sp, #8]
0057b2d4  1b 00 00 0a                                      beq #0x57b348
0057b2d8  20 00 94 e5                                      ldr r0, [r4, #0x20]
0057b2dc  be ff ff ea                                      b #0x57b1dc
0057b2e0  10 20 9d e5                                      ldr r2, [sp, #0x10]
0057b2e4  14 10 9d e5                                      ldr r1, [sp, #0x14]
0057b2e8  01 00 92 e7                                      ldr r0, [r2, r1]
0057b2ec  00 20 90 e5                                      ldr r2, [r0]
0057b2f0  00 00 52 e3                                      cmp r2, #0
0057b2f4  15 00 00 0a                                      beq #0x57b350
0057b2f8  00 10 92 e5                                      ldr r1, [r2]
0057b2fc  00 10 80 e5                                      str r1, [r0]
0057b300  00 00 52 e3                                      cmp r2, #0
0057b304  0b 00 00 0a                                      beq #0x57b338
0057b308  18 10 9d e5                                      ldr r1, [sp, #0x18]
0057b30c  00 10 82 e5                                      str r1, [r2]
0057b310  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0057b314  04 10 82 e5                                      str r1, [r2, #4]
0057b318  20 10 9d e5                                      ldr r1, [sp, #0x20]
0057b31c  08 10 82 e5                                      str r1, [r2, #8]
0057b320  24 10 9d e5                                      ldr r1, [sp, #0x24]
0057b324  0c 10 82 e5                                      str r1, [r2, #0xc]
0057b328  28 10 9d e5                                      ldr r1, [sp, #0x28]
0057b32c  10 10 82 e5                                      str r1, [r2, #0x10]
0057b330  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0057b334  14 10 82 e5                                      str r1, [r2, #0x14]
0057b338  01 10 a0 e3                                      mov r1, #1
0057b33c  0c 20 83 e5                                      str r2, [r3, #0xc]
0057b340  21 10 c3 e5                                      strb r1, [r3, #0x21]
0057b344  d9 ff ff ea                                      b #0x57b2b0
0057b348  34 d0 8d e2                                      add sp, sp, #0x34
0057b34c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0057b350  04 30 8d e5                                      str r3, [sp, #4]
0057b354  b6 f9 ff eb                                      bl #0x579a34
0057b358  04 30 9d e5                                      ldr r3, [sp, #4]
0057b35c  00 20 a0 e1                                      mov r2, r0
0057b360  e6 ff ff ea                                      b #0x57b300
; mapping-symbol data/literal pool
0057b364  fc 98 41 00 60 20 00 00                          .byte 0xfc, 0x98, 0x41, 0x00, 0x60, 0x20, 0x00, 0x00

; FUNCTION 0x0057b900, declared_size=108, range_size=108, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh8addBatchEv
; demangled: glitch::scene::CBatchMesh::addBatch()
; decoder-mode: arm
0057b900  70 40 2d e9                                      push {r4, r5, r6, lr}
0057b904  24 60 90 e5                                      ldr r6, [r0, #0x24]
0057b908  20 30 90 e5                                      ldr r3, [r0, #0x20]
0057b90c  14 20 90 e5                                      ldr r2, [r0, #0x14]
0057b910  18 10 90 e5                                      ldr r1, [r0, #0x18]
0057b914  06 30 63 e0                                      rsb r3, r3, r6
0057b918  43 31 a0 e1                                      asr r3, r3, #2
0057b91c  18 d0 4d e2                                      sub sp, sp, #0x18
0057b920  83 60 83 e0                                      add r6, r3, r3, lsl #1
0057b924  01 10 62 e0                                      rsb r1, r2, r1
0057b928  06 62 86 e0                                      add r6, r6, r6, lsl #4
0057b92c  04 50 8d e2                                      add r5, sp, #4
0057b930  06 64 86 e0                                      add r6, r6, r6, lsl #8
0057b934  00 40 a0 e1                                      mov r4, r0
0057b938  06 68 86 e0                                      add r6, r6, r6, lsl #16
0057b93c  d1 11 ef e7                                      ubfx r1, r1, #3, #0x10
0057b940  05 00 a0 e1                                      mov r0, r5
0057b944  06 61 83 e0                                      add r6, r3, r6, lsl #2
0057b948  0b f5 ff eb                                      bl #0x578d7c
0057b94c  20 00 84 e2                                      add r0, r4, #0x20
0057b950  05 10 a0 e1                                      mov r1, r5
0057b954  7b ff ff eb                                      bl #0x57b748
0057b958  05 00 a0 e1                                      mov r0, r5
0057b95c  81 fa ff eb                                      bl #0x57a368
0057b960  06 00 a0 e1                                      mov r0, r6
0057b964  18 d0 8d e2                                      add sp, sp, #0x18
0057b968  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0057b96c, declared_size=288, range_size=288, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh18quantizeComponentsEbbPNS_5video12IVideoDriverE
; demangled: glitch::scene::CBatchMesh::quantizeComponents(bool, bool, glitch::video::IVideoDriver*)
; decoder-mode: arm
0057b96c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057b970  00 70 a0 e1                                      mov r7, r0
0057b974  24 80 97 e5                                      ldr r8, [r7, #0x24]
0057b978  20 00 90 e5                                      ldr r0, [r0, #0x20]
0057b97c  02 90 a0 e1                                      mov sb, r2
0057b980  1c d0 4d e2                                      sub sp, sp, #0x1c
0057b984  08 80 60 e0                                      rsb r8, r0, r8
0057b988  48 21 a0 e1                                      asr r2, r8, #2
0057b98c  01 b0 a0 e1                                      mov fp, r1
0057b990  82 80 82 e0                                      add r8, r2, r2, lsl #1
0057b994  03 a0 a0 e1                                      mov sl, r3
0057b998  08 82 88 e0                                      add r8, r8, r8, lsl #4
0057b99c  08 84 88 e0                                      add r8, r8, r8, lsl #8
0057b9a0  08 88 88 e0                                      add r8, r8, r8, lsl #16
0057b9a4  08 81 92 e0                                      adds r8, r2, r8, lsl #2
0057b9a8  35 00 00 0a                                      beq #0x57ba84
0057b9ac  10 30 8d e2                                      add r3, sp, #0x10
0057b9b0  00 50 a0 e3                                      mov r5, #0
0057b9b4  08 30 8d e5                                      str r3, [sp, #8]
0057b9b8  14 30 8d e2                                      add r3, sp, #0x14
0057b9bc  05 60 a0 e1                                      mov r6, r5
0057b9c0  0c 30 8d e5                                      str r3, [sp, #0xc]
0057b9c4  04 00 00 ea                                      b #0x57b9dc
0057b9c8  01 60 86 e2                                      add r6, r6, #1
0057b9cc  08 00 56 e1                                      cmp r6, r8
0057b9d0  14 50 85 e2                                      add r5, r5, #0x14
0057b9d4  2a 00 00 0a                                      beq #0x57ba84
0057b9d8  20 00 97 e5                                      ldr r0, [r7, #0x20]
0057b9dc  05 40 80 e0                                      add r4, r0, r5
0057b9e0  be 10 d4 e1                                      ldrh r1, [r4, #0xe]
0057b9e4  bc 20 d4 e1                                      ldrh r2, [r4, #0xc]
0057b9e8  b0 31 d4 e1                                      ldrh r3, [r4, #0x10]
0057b9ec  01 20 62 e0                                      rsb r2, r2, r1
0057b9f0  72 20 ff e6                                      uxth r2, r2
0057b9f4  02 00 53 e1                                      cmp r3, r2
0057b9f8  f2 ff ff 1a                                      bne #0x57b9c8
0057b9fc  05 30 90 e7                                      ldr r3, [r0, r5]
0057ba00  00 00 53 e3                                      cmp r3, #0
0057ba04  14 30 8d e5                                      str r3, [sp, #0x14]
0057ba08  04 20 93 15                                      ldrne r2, [r3, #4]
0057ba0c  01 20 82 12                                      addne r2, r2, #1
0057ba10  04 20 83 15                                      strne r2, [r3, #4]
0057ba14  08 00 9d e5                                      ldr r0, [sp, #8]
0057ba18  0b 20 a0 e1                                      mov r2, fp
0057ba1c  09 30 a0 e1                                      mov r3, sb
0057ba20  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0057ba24  00 a0 8d e5                                      str sl, [sp]
0057ba28  ab 9c 04 eb                                      bl #0x6a2cdc
0057ba2c  10 30 9d e5                                      ldr r3, [sp, #0x10]
0057ba30  00 00 53 e3                                      cmp r3, #0
0057ba34  04 20 93 15                                      ldrne r2, [r3, #4]
0057ba38  01 20 82 12                                      addne r2, r2, #1
0057ba3c  04 20 83 15                                      strne r2, [r3, #4]
0057ba40  00 00 94 e5                                      ldr r0, [r4]
0057ba44  00 30 84 e5                                      str r3, [r4]
0057ba48  00 00 50 e3                                      cmp r0, #0
0057ba4c  00 00 00 0a                                      beq #0x57ba54
0057ba50  cb 86 f6 eb                                      bl #0x31d584
0057ba54  10 00 9d e5                                      ldr r0, [sp, #0x10]
0057ba58  00 00 50 e3                                      cmp r0, #0
0057ba5c  00 00 00 0a                                      beq #0x57ba64
0057ba60  c7 86 f6 eb                                      bl #0x31d584
0057ba64  14 00 9d e5                                      ldr r0, [sp, #0x14]
0057ba68  00 00 50 e3                                      cmp r0, #0
0057ba6c  d5 ff ff 0a                                      beq #0x57b9c8
0057ba70  01 60 86 e2                                      add r6, r6, #1
0057ba74  c2 86 f6 eb                                      bl #0x31d584
0057ba78  08 00 56 e1                                      cmp r6, r8
0057ba7c  14 50 85 e2                                      add r5, r5, #0x14
0057ba80  d4 ff ff 1a                                      bne #0x57b9d8
0057ba84  1c d0 8d e2                                      add sp, sp, #0x1c
0057ba88  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0057bc78, declared_size=204, range_size=204, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh11sortBatchesEPKNS_5video12IVideoDriverEPj
; demangled: glitch::scene::CBatchMesh::sortBatches(glitch::video::IVideoDriver const*, unsigned int*)
; decoder-mode: arm
0057bc78  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057bc7c  24 60 90 e5                                      ldr r6, [r0, #0x24]
0057bc80  20 30 90 e5                                      ldr r3, [r0, #0x20]
0057bc84  00 40 a0 e1                                      mov r4, r0
0057bc88  02 70 a0 e1                                      mov r7, r2
0057bc8c  06 30 63 e0                                      rsb r3, r3, r6
0057bc90  43 31 a0 e1                                      asr r3, r3, #2
0057bc94  83 60 83 e0                                      add r6, r3, r3, lsl #1
0057bc98  06 62 86 e0                                      add r6, r6, r6, lsl #4
0057bc9c  06 64 86 e0                                      add r6, r6, r6, lsl #8
0057bca0  06 68 86 e0                                      add r6, r6, r6, lsl #16
0057bca4  06 61 93 e0                                      adds r6, r3, r6, lsl #2
0057bca8  23 00 00 0a                                      beq #0x57bd3c
0057bcac  00 30 a0 e3                                      mov r3, #0
0057bcb0  03 31 87 e7                                      str r3, [r7, r3, lsl #2]
0057bcb4  01 30 83 e2                                      add r3, r3, #1
0057bcb8  06 00 53 e1                                      cmp r3, r6
0057bcbc  fb ff ff 1a                                      bne #0x57bcb0
0057bcc0  00 50 a0 e3                                      mov r5, #0
0057bcc4  14 80 a0 e3                                      mov r8, #0x14
0057bcc8  0c a0 a0 e3                                      mov sl, #0xc
0057bccc  01 00 00 ea                                      b #0x57bcd8
0057bcd0  05 00 56 e1                                      cmp r6, r5
0057bcd4  18 00 00 9a                                      bls #0x57bd3c
0057bcd8  98 05 0b e0                                      mul fp, r8, r5
0057bcdc  20 30 94 e5                                      ldr r3, [r4, #0x20]
0057bce0  0b 30 83 e0                                      add r3, r3, fp
0057bce4  04 90 93 e5                                      ldr sb, [r3, #4]
0057bce8  09 00 a0 e1                                      mov r0, sb
0057bcec  10 28 01 eb                                      bl #0x5c5d34
0057bcf0  04 30 99 e5                                      ldr r3, [sb, #4]
0057bcf4  18 30 93 e5                                      ldr r3, [r3, #0x18]
0057bcf8  9a 30 23 e0                                      mla r3, sl, r0, r3
0057bcfc  08 30 93 e5                                      ldr r3, [r3, #8]
0057bd00  04 30 93 e5                                      ldr r3, [r3, #4]
0057bd04  01 08 13 e3                                      tst r3, #0x10000
0057bd08  01 50 85 02                                      addeq r5, r5, #1
0057bd0c  ef ff ff 0a                                      beq #0x57bcd0
0057bd10  20 00 94 e5                                      ldr r0, [r4, #0x20]
0057bd14  01 60 46 e2                                      sub r6, r6, #1
0057bd18  0b 10 80 e0                                      add r1, r0, fp
0057bd1c  98 06 20 e0                                      mla r0, r8, r6, r0
0057bd20  ae ff ff eb                                      bl #0x57bbe0
0057bd24  06 31 97 e7                                      ldr r3, [r7, r6, lsl #2]
0057bd28  05 21 97 e7                                      ldr r2, [r7, r5, lsl #2]
0057bd2c  05 00 56 e1                                      cmp r6, r5
0057bd30  06 21 87 e7                                      str r2, [r7, r6, lsl #2]
0057bd34  05 31 87 e7                                      str r3, [r7, r5, lsl #2]
0057bd38  e6 ff ff 8a                                      bhi #0x57bcd8
0057bd3c  06 00 a0 e1                                      mov r0, r6
0057bd40  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0057bd44, declared_size=240, range_size=240, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh5clearEv
; demangled: glitch::scene::CBatchMesh::clear()
; decoder-mode: arm
0057bd44  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0057bd48  20 10 90 e5                                      ldr r1, [r0, #0x20]
0057bd4c  24 20 90 e5                                      ldr r2, [r0, #0x24]
0057bd50  0c d0 4d e2                                      sub sp, sp, #0xc
0057bd54  00 40 a0 e1                                      mov r4, r0
0057bd58  02 30 61 e0                                      rsb r3, r1, r2
0057bd5c  43 31 a0 e1                                      asr r3, r3, #2
0057bd60  83 60 83 e0                                      add r6, r3, r3, lsl #1
0057bd64  06 62 86 e0                                      add r6, r6, r6, lsl #4
0057bd68  06 64 86 e0                                      add r6, r6, r6, lsl #8
0057bd6c  06 68 86 e0                                      add r6, r6, r6, lsl #16
0057bd70  06 61 93 e0                                      adds r6, r3, r6, lsl #2
0057bd74  1f 00 00 0a                                      beq #0x57bdf8
0057bd78  00 c0 a0 e3                                      mov ip, #0
0057bd7c  0c 70 a0 e1                                      mov r7, ip
0057bd80  0c 00 a0 e1                                      mov r0, ip
0057bd84  0c 30 81 e0                                      add r3, r1, ip
0057bd88  be 50 d3 e1                                      ldrh r5, [r3, #0xe]
0057bd8c  bc 20 d3 e1                                      ldrh r2, [r3, #0xc]
0057bd90  05 50 62 e0                                      rsb r5, r2, r5
0057bd94  75 50 ff e6                                      uxth r5, r5
0057bd98  00 00 55 e3                                      cmp r5, #0
0057bd9c  10 00 00 0a                                      beq #0x57bde4
0057bda0  00 30 a0 e3                                      mov r3, #0
0057bda4  01 00 00 ea                                      b #0x57bdb0
0057bda8  0c 20 81 e0                                      add r2, r1, ip
0057bdac  bc 20 d2 e1                                      ldrh r2, [r2, #0xc]
0057bdb0  70 a0 94 e5                                      ldr sl, [r4, #0x70]
0057bdb4  08 80 94 e5                                      ldr r8, [r4, #8]
0057bdb8  03 20 82 e0                                      add r2, r2, r3
0057bdbc  01 30 83 e2                                      add r3, r3, #1
0057bdc0  9a 82 22 e0                                      mla r2, sl, r2, r8
0057bdc4  08 20 92 e5                                      ldr r2, [r2, #8]
0057bdc8  00 00 52 e3                                      cmp r2, #0
0057bdcc  30 20 92 15                                      ldrne r2, [r2, #0x30]
0057bdd0  1c 00 82 15                                      strne r0, [r2, #0x1c]
0057bdd4  18 00 82 15                                      strne r0, [r2, #0x18]
0057bdd8  20 10 94 15                                      ldrne r1, [r4, #0x20]
0057bddc  05 00 53 e1                                      cmp r3, r5
0057bde0  f0 ff ff 3a                                      blo #0x57bda8
0057bde4  01 70 87 e2                                      add r7, r7, #1
0057bde8  06 00 57 e1                                      cmp r7, r6
0057bdec  14 c0 8c e2                                      add ip, ip, #0x14
0057bdf0  e3 ff ff 1a                                      bne #0x57bd84
0057bdf4  24 20 94 e5                                      ldr r2, [r4, #0x24]
0057bdf8  01 00 52 e1                                      cmp r2, r1
0057bdfc  02 00 00 0a                                      beq #0x57be0c
0057be00  20 00 84 e2                                      add r0, r4, #0x20
0057be04  04 30 8d e2                                      add r3, sp, #4
0057be08  4f ff ff eb                                      bl #0x57bb4c
0057be0c  08 30 94 e5                                      ldr r3, [r4, #8]
0057be10  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0057be14  02 00 53 e1                                      cmp r3, r2
0057be18  0c 30 84 15                                      strne r3, [r4, #0xc]
0057be1c  18 20 94 e5                                      ldr r2, [r4, #0x18]
0057be20  14 30 94 e5                                      ldr r3, [r4, #0x14]
0057be24  02 00 53 e1                                      cmp r3, r2
0057be28  18 30 84 15                                      strne r3, [r4, #0x18]
0057be2c  0c d0 8d e2                                      add sp, sp, #0xc
0057be30  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0057be34, declared_size=524, range_size=524, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh9setBufferEjRKN5boost13intrusive_ptrINS0_11CMeshBufferEEERKNS3_INS_5video9CMaterialEEE
; demangled: glitch::scene::CBatchMesh::setBuffer(unsigned int, boost::intrusive_ptr<glitch::scene::CMeshBuffer> const&, boost::intrusive_ptr<glitch::video::CMaterial> const&)
; decoder-mode: arm
0057be34  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057be38  f4 41 9f e5                                      ldr r4, [pc, #0x1f4]
0057be3c  f4 c1 9f e5                                      ldr ip, [pc, #0x1f4]
0057be40  64 d0 4d e2                                      sub sp, sp, #0x64
0057be44  04 40 8f e0                                      add r4, pc, r4
0057be48  08 c0 8d e5                                      str ip, [sp, #8]
0057be4c  0c c0 94 e7                                      ldr ip, [r4, ip]
0057be50  04 20 8d e5                                      str r2, [sp, #4]
0057be54  00 20 92 e5                                      ldr r2, [r2]
0057be58  00 c0 9c e5                                      ldr ip, [ip]
0057be5c  03 70 a0 e1                                      mov r7, r3
0057be60  00 00 52 e3                                      cmp r2, #0
0057be64  5c c0 8d e5                                      str ip, [sp, #0x5c]
0057be68  04 30 92 15                                      ldrne r3, [r2, #4]
0057be6c  14 e0 a0 e3                                      mov lr, #0x14
0057be70  20 c0 90 e5                                      ldr ip, [r0, #0x20]
0057be74  9e 01 01 e0                                      mul r1, lr, r1
0057be78  01 30 83 12                                      addne r3, r3, #1
0057be7c  04 30 82 15                                      strne r3, [r2, #4]
0057be80  01 00 9c e7                                      ldr r0, [ip, r1]
0057be84  01 60 8c e0                                      add r6, ip, r1
0057be88  01 20 8c e7                                      str r2, [ip, r1]
0057be8c  00 00 50 e3                                      cmp r0, #0
0057be90  00 00 00 0a                                      beq #0x57be98
0057be94  ba 85 f6 eb                                      bl #0x31d584
0057be98  2c 50 8d e2                                      add r5, sp, #0x2c
0057be9c  3c 50 8d e5                                      str r5, [sp, #0x3c]
0057bea0  40 50 8d e5                                      str r5, [sp, #0x40]
0057bea4  00 e0 97 e5                                      ldr lr, [r7]
0057bea8  05 00 a0 e1                                      mov r0, r5
0057beac  10 10 a0 e3                                      mov r1, #0x10
0057beb0  0c e0 8d e5                                      str lr, [sp, #0xc]
0057beb4  bb 92 f6 eb                                      bl #0x3209a8
0057beb8  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0057bebc  78 b1 9f e5                                      ldr fp, [pc, #0x178]
0057bec0  00 80 a0 e3                                      mov r8, #0
0057bec4  43 a8 00 e3                                      movw sl, #0x843
0057bec8  00 80 c3 e5                                      strb r8, [r3]
0057becc  21 a4 48 e3                                      movt sl, #0x8421
0057bed0  3e 90 a0 e3                                      mov sb, #0x3e
0057bed4  b3 4b f6 eb                                      bl #0x30eda8
0057bed8  a0 20 a0 e1                                      lsr r2, r0, #1
0057bedc  9a 32 82 e0                                      umull r3, r2, sl, r2
0057bee0  0b 30 94 e7                                      ldr r3, [r4, fp]
0057bee4  22 22 a0 e1                                      lsr r2, r2, #4
0057bee8  99 02 60 e0                                      mls r0, sb, r2, r0
0057beec  01 80 88 e2                                      add r8, r8, #1
0057bef0  d0 10 93 e1                                      ldrsb r1, [r3, r0]
0057bef4  05 00 a0 e1                                      mov r0, r5
0057bef8  2a e8 fa eb                                      bl #0x435fa8
0057befc  0e 00 58 e3                                      cmp r8, #0xe
0057bf00  f3 ff ff 1a                                      bne #0x57bed4
0057bf04  44 80 8d e2                                      add r8, sp, #0x44
0057bf08  08 00 a0 e1                                      mov r0, r8
0057bf0c  40 10 9d e5                                      ldr r1, [sp, #0x40]
0057bf10  28 20 8d e2                                      add r2, sp, #0x28
0057bf14  48 a8 f6 eb                                      bl #0x32603c
0057bf18  40 00 9d e5                                      ldr r0, [sp, #0x40]
0057bf1c  05 00 50 e1                                      cmp r0, r5
0057bf20  02 00 00 0a                                      beq #0x57bf30
0057bf24  00 00 50 e3                                      cmp r0, #0
0057bf28  00 00 00 0a                                      beq #0x57bf30
0057bf2c  47 51 f6 eb                                      bl #0x310450
0057bf30  24 50 8d e2                                      add r5, sp, #0x24
0057bf34  58 20 9d e5                                      ldr r2, [sp, #0x58]
0057bf38  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0057bf3c  05 00 a0 e1                                      mov r0, r5
0057bf40  68 40 01 eb                                      bl #0x5cc0e8
0057bf44  24 30 9d e5                                      ldr r3, [sp, #0x24]
0057bf48  60 00 8d e2                                      add r0, sp, #0x60
0057bf4c  18 30 8d e5                                      str r3, [sp, #0x18]
0057bf50  00 00 53 e3                                      cmp r3, #0
0057bf54  00 20 93 15                                      ldrne r2, [r3]
0057bf58  01 20 82 12                                      addne r2, r2, #1
0057bf5c  00 20 83 15                                      strne r2, [r3]
0057bf60  18 30 9d 15                                      ldrne r3, [sp, #0x18]
0057bf64  04 20 96 e5                                      ldr r2, [r6, #4]
0057bf68  48 20 20 e5                                      str r2, [r0, #-0x48]!
0057bf6c  04 30 86 e5                                      str r3, [r6, #4]
0057bf70  1c 53 f6 eb                                      bl #0x310be8
0057bf74  05 00 a0 e1                                      mov r0, r5
0057bf78  1a 53 f6 eb                                      bl #0x310be8
0057bf7c  58 00 9d e5                                      ldr r0, [sp, #0x58]
0057bf80  08 00 50 e1                                      cmp r0, r8
0057bf84  02 00 00 0a                                      beq #0x57bf94
0057bf88  00 00 50 e3                                      cmp r0, #0
0057bf8c  00 00 00 0a                                      beq #0x57bf94
0057bf90  2e 51 f6 eb                                      bl #0x310450
0057bf94  04 c0 9d e5                                      ldr ip, [sp, #4]
0057bf98  00 10 97 e5                                      ldr r1, [r7]
0057bf9c  20 50 8d e2                                      add r5, sp, #0x20
0057bfa0  00 30 9c e5                                      ldr r3, [ip]
0057bfa4  1c 70 8d e2                                      add r7, sp, #0x1c
0057bfa8  04 10 81 e2                                      add r1, r1, #4
0057bfac  14 30 93 e5                                      ldr r3, [r3, #0x14]
0057bfb0  07 00 a0 e1                                      mov r0, r7
0057bfb4  00 00 53 e3                                      cmp r3, #0
0057bfb8  20 30 8d e5                                      str r3, [sp, #0x20]
0057bfbc  00 20 93 15                                      ldrne r2, [r3]
0057bfc0  01 20 82 12                                      addne r2, r2, #1
0057bfc4  00 20 83 15                                      strne r2, [r3]
0057bfc8  05 20 a0 e1                                      mov r2, r5
0057bfcc  94 8d 01 eb                                      bl #0x5df624
0057bfd0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0057bfd4  60 00 8d e2                                      add r0, sp, #0x60
0057bfd8  14 30 8d e5                                      str r3, [sp, #0x14]
0057bfdc  00 00 53 e3                                      cmp r3, #0
0057bfe0  00 20 93 15                                      ldrne r2, [r3]
0057bfe4  01 20 82 12                                      addne r2, r2, #1
0057bfe8  00 20 83 15                                      strne r2, [r3]
0057bfec  14 30 9d 15                                      ldrne r3, [sp, #0x14]
0057bff0  08 20 96 e5                                      ldr r2, [r6, #8]
0057bff4  4c 20 20 e5                                      str r2, [r0, #-0x4c]!
0057bff8  08 30 86 e5                                      str r3, [r6, #8]
0057bffc  9a f8 ff eb                                      bl #0x57a26c
0057c000  07 00 a0 e1                                      mov r0, r7
0057c004  98 f8 ff eb                                      bl #0x57a26c
0057c008  05 00 a0 e1                                      mov r0, r5
0057c00c  df 8a f7 eb                                      bl #0x35eb90
0057c010  08 20 9d e5                                      ldr r2, [sp, #8]
0057c014  02 30 94 e7                                      ldr r3, [r4, r2]
0057c018  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0057c01c  00 30 93 e5                                      ldr r3, [r3]
0057c020  03 00 52 e1                                      cmp r2, r3
0057c024  01 00 00 1a                                      bne #0x57c030
0057c028  64 d0 8d e2                                      add sp, sp, #0x64
0057c02c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0057c030  b6 48 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0057c034  4c 8c 41 00 ac 40 00 00 a4 31 00 00              .byte 0x4c, 0x8c, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa4, 0x31, 0x00, 0x00

; FUNCTION 0x0057c19c, declared_size=2988, range_size=2988, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh4sortEPKNS_5video12IVideoDriverE
; demangled: glitch::scene::CBatchMesh::sort(glitch::video::IVideoDriver const*)
; decoder-mode: arm
0057c19c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057c1a0  24 20 90 e5                                      ldr r2, [r0, #0x24]
0057c1a4  20 30 90 e5                                      ldr r3, [r0, #0x20]
0057c1a8  f4 d0 4d e2                                      sub sp, sp, #0xf4
0057c1ac  01 60 a0 e1                                      mov r6, r1
0057c1b0  02 30 63 e0                                      rsb r3, r3, r2
0057c1b4  43 31 a0 e1                                      asr r3, r3, #2
0057c1b8  00 40 a0 e1                                      mov r4, r0
0057c1bc  83 20 83 e0                                      add r2, r3, r3, lsl #1
0057c1c0  00 a0 a0 e3                                      mov sl, #0
0057c1c4  02 22 82 e0                                      add r2, r2, r2, lsl #4
0057c1c8  d8 50 8d e2                                      add r5, sp, #0xd8
0057c1cc  02 24 82 e0                                      add r2, r2, r2, lsl #8
0057c1d0  01 00 a0 e3                                      mov r0, #1
0057c1d4  02 18 82 e0                                      add r1, r2, r2, lsl #16
0057c1d8  74 00 c4 e5                                      strb r0, [r4, #0x74]
0057c1dc  01 11 83 e0                                      add r1, r3, r1, lsl #2
0057c1e0  68 a0 84 e5                                      str sl, [r4, #0x68]
0057c1e4  05 00 a0 e1                                      mov r0, r5
0057c1e8  e2 fa ff eb                                      bl #0x57ad78
0057c1ec  24 10 94 e5                                      ldr r1, [r4, #0x24]
0057c1f0  20 30 94 e5                                      ldr r3, [r4, #0x20]
0057c1f4  44 cb 9f e5                                      ldr ip, [pc, #0xb44]
0057c1f8  f0 20 8d e2                                      add r2, sp, #0xf0
0057c1fc  01 30 63 e0                                      rsb r3, r3, r1
0057c200  43 31 a0 e1                                      asr r3, r3, #2
0057c204  08 a0 22 e5                                      str sl, [r2, #-8]!
0057c208  83 10 83 e0                                      add r1, r3, r3, lsl #1
0057c20c  0c c0 8f e0                                      add ip, pc, ip
0057c210  01 12 81 e0                                      add r1, r1, r1, lsl #4
0057c214  05 00 a0 e1                                      mov r0, r5
0057c218  01 14 81 e0                                      add r1, r1, r1, lsl #8
0057c21c  44 c0 8d e5                                      str ip, [sp, #0x44]
0057c220  01 18 81 e0                                      add r1, r1, r1, lsl #16
0057c224  01 11 83 e0                                      add r1, r3, r1, lsl #2
0057c228  ca ff ff eb                                      bl #0x57c158
0057c22c  d8 20 9d e5                                      ldr r2, [sp, #0xd8]
0057c230  04 00 a0 e1                                      mov r0, r4
0057c234  06 10 a0 e1                                      mov r1, r6
0057c238  8e fe ff eb                                      bl #0x57bc78
0057c23c  d8 30 9d e5                                      ldr r3, [sp, #0xd8]
0057c240  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
0057c244  74 00 8d e5                                      str r0, [sp, #0x74]
0057c248  02 30 63 e0                                      rsb r3, r3, r2
0057c24c  43 31 b0 e1                                      asrs r3, r3, #2
0057c250  64 30 8d e5                                      str r3, [sp, #0x64]
0057c254  50 30 8d 05                                      streq r3, [sp, #0x50]
0057c258  4b 02 00 0a                                      beq #0x57cb8c
0057c25c  e0 ea 9f e5                                      ldr lr, [pc, #0xae0]
0057c260  cc 00 8d e2                                      add r0, sp, #0xcc
0057c264  c0 10 8d e2                                      add r1, sp, #0xc0
0057c268  e4 20 8d e2                                      add r2, sp, #0xe4
0057c26c  ec 30 8d e2                                      add r3, sp, #0xec
0057c270  7c c0 8d e2                                      add ip, sp, #0x7c
0057c274  48 e0 8d e5                                      str lr, [sp, #0x48]
0057c278  3c a0 8d e5                                      str sl, [sp, #0x3c]
0057c27c  50 a0 8d e5                                      str sl, [sp, #0x50]
0057c280  58 00 8d e5                                      str r0, [sp, #0x58]
0057c284  68 10 8d e5                                      str r1, [sp, #0x68]
0057c288  6c 20 8d e5                                      str r2, [sp, #0x6c]
0057c28c  70 30 8d e5                                      str r3, [sp, #0x70]
0057c290  14 c0 8d e5                                      str ip, [sp, #0x14]
0057c294  20 30 94 e5                                      ldr r3, [r4, #0x20]
0057c298  00 e0 a0 e3                                      mov lr, #0
0057c29c  00 10 a0 e3                                      mov r1, #0
0057c2a0  0a 30 83 e0                                      add r3, r3, sl
0057c2a4  bc 20 d3 e1                                      ldrh r2, [r3, #0xc]
0057c2a8  be b0 d3 e1                                      ldrh fp, [r3, #0xe]
0057c2ac  58 00 9d e5                                      ldr r0, [sp, #0x58]
0057c2b0  b0 e1 c3 e1                                      strh lr, [r3, #0x10]
0057c2b4  0b b0 62 e0                                      rsb fp, r2, fp
0057c2b8  7b b0 ff e6                                      uxth fp, fp
0057c2bc  00 20 a0 e3                                      mov r2, #0
0057c2c0  cc 10 8d e5                                      str r1, [sp, #0xcc]
0057c2c4  0b 10 a0 e1                                      mov r1, fp
0057c2c8  d0 20 8d e5                                      str r2, [sp, #0xd0]
0057c2cc  d4 20 8d e5                                      str r2, [sp, #0xd4]
0057c2d0  c0 20 8d e5                                      str r2, [sp, #0xc0]
0057c2d4  c4 20 8d e5                                      str r2, [sp, #0xc4]
0057c2d8  c8 20 8d e5                                      str r2, [sp, #0xc8]
0057c2dc  c5 fa ff eb                                      bl #0x57adf8
0057c2e0  68 00 9d e5                                      ldr r0, [sp, #0x68]
0057c2e4  0b 10 a0 e1                                      mov r1, fp
0057c2e8  6d f7 ff eb                                      bl #0x57a0a4
0057c2ec  00 30 a0 e3                                      mov r3, #0
0057c2f0  00 00 5b e3                                      cmp fp, #0
0057c2f4  e4 30 8d e5                                      str r3, [sp, #0xe4]
0057c2f8  7f 02 00 0a                                      beq #0x57ccfc
0057c2fc  01 80 a0 e3                                      mov r8, #1
0057c300  20 20 94 e5                                      ldr r2, [r4, #0x20]
0057c304  c4 60 9d e5                                      ldr r6, [sp, #0xc4]
0057c308  70 50 94 e5                                      ldr r5, [r4, #0x70]
0057c30c  0a 20 82 e0                                      add r2, r2, sl
0057c310  bc 10 d2 e1                                      ldrh r1, [r2, #0xc]
0057c314  08 20 94 e5                                      ldr r2, [r4, #8]
0057c318  01 30 83 e0                                      add r3, r3, r1
0057c31c  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
0057c320  95 23 25 e0                                      mla r5, r5, r3, r2
0057c324  01 00 56 e1                                      cmp r6, r1
0057c328  4d 01 00 0a                                      beq #0x57c864
0057c32c  00 50 86 e5                                      str r5, [r6]
0057c330  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
0057c334  04 30 83 e2                                      add r3, r3, #4
0057c338  c4 30 8d e5                                      str r3, [sp, #0xc4]
0057c33c  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
0057c340  d4 30 9d e5                                      ldr r3, [sp, #0xd4]
0057c344  03 00 51 e1                                      cmp r1, r3
0057c348  3e 01 00 0a                                      beq #0x57c848
0057c34c  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
0057c350  00 30 81 e5                                      str r3, [r1]
0057c354  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
0057c358  04 30 83 e2                                      add r3, r3, #4
0057c35c  d0 30 8d e5                                      str r3, [sp, #0xd0]
0057c360  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
0057c364  01 30 83 e2                                      add r3, r3, #1
0057c368  0b 00 53 e1                                      cmp r3, fp
0057c36c  e4 30 8d e5                                      str r3, [sp, #0xe4]
0057c370  e2 ff ff 3a                                      blo #0x57c300
0057c374  20 50 94 e5                                      ldr r5, [r4, #0x20]
0057c378  70 c0 94 e5                                      ldr ip, [r4, #0x70]
0057c37c  08 e0 94 e5                                      ldr lr, [r4, #8]
0057c380  0a 50 85 e0                                      add r5, r5, sl
0057c384  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
0057c388  0b 10 a0 e1                                      mov r1, fp
0057c38c  00 20 a0 e3                                      mov r2, #0
0057c390  9c 03 03 e0                                      mul r3, ip, r3
0057c394  03 00 8e e0                                      add r0, lr, r3
0057c398  08 00 90 e5                                      ldr r0, [r0, #8]
0057c39c  01 20 82 e2                                      add r2, r2, #1
0057c3a0  0c 30 83 e0                                      add r3, r3, ip
0057c3a4  00 00 50 e3                                      cmp r0, #0
0057c3a8  01 10 41 12                                      subne r1, r1, #1
0057c3ac  0b 00 52 e1                                      cmp r2, fp
0057c3b0  f7 ff ff 3a                                      blo #0x57c394
0057c3b4  b0 11 c5 e1                                      strh r1, [r5, #0x10]
0057c3b8  50 c0 9d e5                                      ldr ip, [sp, #0x50]
0057c3bc  00 00 51 e3                                      cmp r1, #0
0057c3c0  0b 00 51 11                                      cmpne r1, fp
0057c3c4  01 c0 8c e0                                      add ip, ip, r1
0057c3c8  50 c0 8d e5                                      str ip, [sp, #0x50]
0057c3cc  30 02 00 2a                                      bhs #0x57cc94
0057c3d0  01 90 4b e2                                      sub sb, fp, #1
0057c3d4  00 30 a0 e3                                      mov r3, #0
0057c3d8  09 e1 a0 e1                                      lsl lr, sb, #2
0057c3dc  20 80 94 e5                                      ldr r8, [r4, #0x20]
0057c3e0  1c b0 8d e5                                      str fp, [sp, #0x1c]
0057c3e4  30 b0 8d e5                                      str fp, [sp, #0x30]
0057c3e8  28 e0 8d e5                                      str lr, [sp, #0x28]
0057c3ec  2c 30 8d e5                                      str r3, [sp, #0x2c]
0057c3f0  4c 30 8d e5                                      str r3, [sp, #0x4c]
0057c3f4  10 30 8d e5                                      str r3, [sp, #0x10]
0057c3f8  18 30 8d e5                                      str r3, [sp, #0x18]
0057c3fc  03 b0 a0 e1                                      mov fp, r3
0057c400  0a 30 88 e0                                      add r3, r8, sl
0057c404  bc 60 d3 e1                                      ldrh r6, [r3, #0xc]
0057c408  70 e0 94 e5                                      ldr lr, [r4, #0x70]
0057c40c  08 c0 94 e5                                      ldr ip, [r4, #8]
0057c410  06 60 8b e0                                      add r6, fp, r6
0057c414  9e c6 26 e0                                      mla r6, lr, r6, ip
0057c418  08 30 96 e5                                      ldr r3, [r6, #8]
0057c41c  00 00 53 e3                                      cmp r3, #0
0057c420  f9 00 00 0a                                      beq #0x57c80c
0057c424  b4 02 d6 e1                                      ldrh r0, [r6, #0x24]
0057c428  b6 72 d6 e1                                      ldrh r7, [r6, #0x26]
0057c42c  14 50 9d e5                                      ldr r5, [sp, #0x14]
0057c430  0c 00 8d e5                                      str r0, [sp, #0xc]
0057c434  14 10 96 e5                                      ldr r1, [r6, #0x14]
0057c438  0b 00 59 e1                                      cmp sb, fp
0057c43c  20 10 8d e5                                      str r1, [sp, #0x20]
0057c440  10 20 96 e5                                      ldr r2, [r6, #0x10]
0057c444  24 20 8d e5                                      str r2, [sp, #0x24]
0057c448  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
0057c44c  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
0057c450  0f 00 b6 e8                                      ldm r6!, {r0, r1, r2, r3}
0057c454  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
0057c458  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0057c45c  20 00 9d e5                                      ldr r0, [sp, #0x20]
0057c460  24 10 9d e5                                      ldr r1, [sp, #0x24]
0057c464  07 70 63 e0                                      rsb r7, r3, r7
0057c468  00 30 61 e0                                      rsb r3, r1, r0
0057c46c  07 00 96 e8                                      ldm r6, {r0, r1, r2}
0057c470  b8 20 c5 e1                                      strh r2, [r5, #8]
0057c474  18 20 9d e5                                      ldr r2, [sp, #0x18]
0057c478  03 00 85 e8                                      stm r5, {r0, r1}
0057c47c  07 20 82 e0                                      add r2, r2, r7
0057c480  18 20 8d e5                                      str r2, [sp, #0x18]
0057c484  10 00 9d e5                                      ldr r0, [sp, #0x10]
0057c488  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0057c48c  0b 61 a0 e1                                      lsl r6, fp, #2
0057c490  03 00 80 e0                                      add r0, r0, r3
0057c494  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
0057c498  01 10 41 e2                                      sub r1, r1, #1
0057c49c  10 00 8d e5                                      str r0, [sp, #0x10]
0057c4a0  1c 10 8d e5                                      str r1, [sp, #0x1c]
0057c4a4  0b 31 93 e7                                      ldr r3, [r3, fp, lsl #2]
0057c4a8  0c 30 8d e5                                      str r3, [sp, #0xc]
0057c4ac  19 00 00 9a                                      bls #0x57c518
0057c4b0  01 70 8b e2                                      add r7, fp, #1
0057c4b4  07 71 a0 e1                                      lsl r7, r7, #2
0057c4b8  0b 50 a0 e1                                      mov r5, fp
0057c4bc  02 00 00 ea                                      b #0x57c4cc
0057c4c0  20 80 94 e5                                      ldr r8, [r4, #0x20]
0057c4c4  70 e0 94 e5                                      ldr lr, [r4, #0x70]
0057c4c8  08 c0 94 e5                                      ldr ip, [r4, #8]
0057c4cc  0a 80 88 e0                                      add r8, r8, sl
0057c4d0  bc 10 d8 e1                                      ldrh r1, [r8, #0xc]
0057c4d4  2a 20 a0 e3                                      mov r2, #0x2a
0057c4d8  01 00 85 e0                                      add r0, r5, r1
0057c4dc  01 50 85 e2                                      add r5, r5, #1
0057c4e0  01 10 85 e0                                      add r1, r5, r1
0057c4e4  9e c1 21 e0                                      mla r1, lr, r1, ip
0057c4e8  9e c0 20 e0                                      mla r0, lr, r0, ip
0057c4ec  dd 48 f6 eb                                      bl #0x30e868
0057c4f0  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
0057c4f4  09 00 55 e1                                      cmp r5, sb
0057c4f8  07 20 93 e7                                      ldr r2, [r3, r7]
0057c4fc  04 70 87 e2                                      add r7, r7, #4
0057c500  06 20 83 e7                                      str r2, [r3, r6]
0057c504  04 60 86 e2                                      add r6, r6, #4
0057c508  ec ff ff 3a                                      blo #0x57c4c0
0057c50c  20 80 94 e5                                      ldr r8, [r4, #0x20]
0057c510  70 e0 94 e5                                      ldr lr, [r4, #0x70]
0057c514  08 c0 94 e5                                      ldr ip, [r4, #8]
0057c518  0a 80 88 e0                                      add r8, r8, sl
0057c51c  bc 00 d8 e1                                      ldrh r0, [r8, #0xc]
0057c520  2a 20 a0 e3                                      mov r2, #0x2a
0057c524  14 10 9d e5                                      ldr r1, [sp, #0x14]
0057c528  00 00 89 e0                                      add r0, sb, r0
0057c52c  9e c0 20 e0                                      mla r0, lr, r0, ip
0057c530  cc 48 f6 eb                                      bl #0x30e868
0057c534  cc 30 9d e5                                      ldr r3, [sp, #0xcc]
0057c538  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0057c53c  28 20 9d e5                                      ldr r2, [sp, #0x28]
0057c540  02 c0 83 e7                                      str ip, [r3, r2]
0057c544  9d 30 dd e5                                      ldrb r3, [sp, #0x9d]
0057c548  00 00 53 e3                                      cmp r3, #0
0057c54c  ac 00 00 0a                                      beq #0x57c804
0057c550  44 00 9d e5                                      ldr r0, [sp, #0x44]
0057c554  48 e0 9d e5                                      ldr lr, [sp, #0x48]
0057c558  88 20 9d e5                                      ldr r2, [sp, #0x88]
0057c55c  0e 30 90 e7                                      ldr r3, [r0, lr]
0057c560  00 30 93 e5                                      ldr r3, [r3]
0057c564  00 00 53 e3                                      cmp r3, #0
0057c568  01 00 00 0a                                      beq #0x57c574
0057c56c  03 00 52 e1                                      cmp r2, r3
0057c570  9b 00 00 2a                                      bhs #0x57c7e4
0057c574  44 e0 9d e5                                      ldr lr, [sp, #0x44]
0057c578  48 c0 9d e5                                      ldr ip, [sp, #0x48]
0057c57c  00 30 82 e5                                      str r3, [r2]
0057c580  0c 10 9e e7                                      ldr r1, [lr, ip]
0057c584  00 20 81 e5                                      str r2, [r1]
0057c588  20 80 94 e5                                      ldr r8, [r4, #0x20]
0057c58c  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
0057c590  0b 00 5e e1                                      cmp lr, fp
0057c594  99 ff ff 8a                                      bhi #0x57c400
0057c598  68 30 94 e5                                      ldr r3, [r4, #0x68]
0057c59c  10 00 9d e5                                      ldr r0, [sp, #0x10]
0057c5a0  30 b0 9d e5                                      ldr fp, [sp, #0x30]
0057c5a4  01 30 83 e2                                      add r3, r3, #1
0057c5a8  80 00 a0 e1                                      lsl r0, r0, #1
0057c5ac  5c 00 8d e5                                      str r0, [sp, #0x5c]
0057c5b0  68 30 84 e5                                      str r3, [r4, #0x68]
0057c5b4  0a 30 98 e7                                      ldr r3, [r8, sl]
0057c5b8  01 20 a0 e3                                      mov r2, #1
0057c5bc  34 20 c3 e5                                      strb r2, [r3, #0x34]
0057c5c0  20 30 94 e5                                      ldr r3, [r4, #0x20]
0057c5c4  18 10 9d e5                                      ldr r1, [sp, #0x18]
0057c5c8  0a 30 93 e7                                      ldr r3, [r3, sl]
0057c5cc  14 30 93 e5                                      ldr r3, [r3, #0x14]
0057c5d0  b2 32 d3 e1                                      ldrh r3, [r3, #0x22]
0057c5d4  93 01 01 e0                                      mul r1, r3, r1
0057c5d8  20 30 8d e5                                      str r3, [sp, #0x20]
0057c5dc  01 00 a0 e1                                      mov r0, r1
0057c5e0  60 10 8d e5                                      str r1, [sp, #0x60]
0057c5e4  02 e0 fe eb                                      bl #0x5345f4
0057c5e8  34 00 8d e5                                      str r0, [sp, #0x34]
0057c5ec  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0057c5f0  ff df fe eb                                      bl #0x5345f4
0057c5f4  30 00 8d e5                                      str r0, [sp, #0x30]
0057c5f8  20 30 94 e5                                      ldr r3, [r4, #0x20]
0057c5fc  05 10 a0 e3                                      mov r1, #5
0057c600  0a 30 93 e7                                      ldr r3, [r3, sl]
0057c604  14 30 93 e5                                      ldr r3, [r3, #0x14]
0057c608  14 20 93 e5                                      ldr r2, [r3, #0x14]
0057c60c  00 00 52 e3                                      cmp r2, #0
0057c610  40 20 8d e5                                      str r2, [sp, #0x40]
0057c614  40 c0 9d 15                                      ldrne ip, [sp, #0x40]
0057c618  02 00 a0 01                                      moveq r0, r2
0057c61c  04 20 9c 15                                      ldrne r2, [ip, #4]
0057c620  01 20 82 12                                      addne r2, r2, #1
0057c624  04 20 8c 15                                      strne r2, [ip, #4]
0057c628  14 00 93 15                                      ldrne r0, [r3, #0x14]
0057c62c  ef 94 00 eb                                      bl #0x5a19f0
0057c630  10 00 8d e5                                      str r0, [sp, #0x10]
0057c634  20 30 94 e5                                      ldr r3, [r4, #0x20]
0057c638  05 10 a0 e3                                      mov r1, #5
0057c63c  0a 30 93 e7                                      ldr r3, [r3, sl]
0057c640  54 30 8d e5                                      str r3, [sp, #0x54]
0057c644  18 00 93 e5                                      ldr r0, [r3, #0x18]
0057c648  e8 94 00 eb                                      bl #0x5a19f0
0057c64c  54 e0 9d e5                                      ldr lr, [sp, #0x54]
0057c650  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
0057c654  1c 30 9e e5                                      ldr r3, [lr, #0x1c]
0057c658  01 00 5b e1                                      cmp fp, r1
0057c65c  03 30 80 e0                                      add r3, r0, r3
0057c660  18 30 8d e5                                      str r3, [sp, #0x18]
0057c664  a0 00 00 9a                                      bls #0x57c8ec
0057c668  4c 70 9d e5                                      ldr r7, [sp, #0x4c]
0057c66c  00 20 a0 e3                                      mov r2, #0
0057c670  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
0057c674  0c 20 8d e5                                      str r2, [sp, #0xc]
0057c678  01 60 a0 e1                                      mov r6, r1
0057c67c  02 90 a0 e1                                      mov sb, r2
0057c680  38 a0 8d e5                                      str sl, [sp, #0x38]
0057c684  2c b0 8d e5                                      str fp, [sp, #0x2c]
0057c688  38 c0 9d e5                                      ldr ip, [sp, #0x38]
0057c68c  20 10 94 e5                                      ldr r1, [r4, #0x20]
0057c690  70 20 94 e5                                      ldr r2, [r4, #0x70]
0057c694  08 30 94 e5                                      ldr r3, [r4, #8]
0057c698  0c 10 81 e0                                      add r1, r1, ip
0057c69c  bc 50 d1 e1                                      ldrh r5, [r1, #0xc]
0057c6a0  34 e0 9d e5                                      ldr lr, [sp, #0x34]
0057c6a4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0057c6a8  05 50 86 e0                                      add r5, r6, r5
0057c6ac  92 35 25 e0                                      mla r5, r2, r5, r3
0057c6b0  20 20 9d e5                                      ldr r2, [sp, #0x20]
0057c6b4  b4 32 d5 e1                                      ldrh r3, [r5, #0x24]
0057c6b8  b6 b2 d5 e1                                      ldrh fp, [r5, #0x26]
0057c6bc  09 00 8e e0                                      add r0, lr, sb
0057c6c0  92 c3 21 e0                                      mla r1, r2, r3, ip
0057c6c4  0b b0 63 e0                                      rsb fp, r3, fp
0057c6c8  7b b0 ff e6                                      uxth fp, fp
0057c6cc  92 0b 0a e0                                      mul sl, r2, fp
0057c6d0  0a 20 a0 e1                                      mov r2, sl
0057c6d4  63 48 f6 eb                                      bl #0x30e868
0057c6d8  b6 e2 d5 e1                                      ldrh lr, [r5, #0x26]
0057c6dc  b4 12 d5 e1                                      ldrh r1, [r5, #0x24]
0057c6e0  10 20 95 e5                                      ldr r2, [r5, #0x10]
0057c6e4  14 00 95 e5                                      ldr r0, [r5, #0x14]
0057c6e8  24 e0 8d e5                                      str lr, [sp, #0x24]
0057c6ec  b8 32 d5 e1                                      ldrh r3, [r5, #0x28]
0057c6f0  30 c0 9d e5                                      ldr ip, [sp, #0x30]
0057c6f4  0c e0 9d e5                                      ldr lr, [sp, #0xc]
0057c6f8  28 30 8d e5                                      str r3, [sp, #0x28]
0057c6fc  00 00 62 e0                                      rsb r0, r2, r0
0057c700  8e 30 8c e0                                      add r3, ip, lr, lsl #1
0057c704  28 c0 9d e5                                      ldr ip, [sp, #0x28]
0057c708  0a 90 89 e0                                      add sb, sb, sl
0057c70c  0c c0 61 e0                                      rsb ip, r1, ip
0057c710  28 c0 8d e5                                      str ip, [sp, #0x28]
0057c714  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0057c718  0c e0 61 e0                                      rsb lr, r1, ip
0057c71c  0e e0 87 e0                                      add lr, r7, lr
0057c720  24 e0 8d e5                                      str lr, [sp, #0x24]
0057c724  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0057c728  80 c0 83 e0                                      add ip, r3, r0, lsl #1
0057c72c  0c 00 53 e1                                      cmp r3, ip
0057c730  0e e0 87 e0                                      add lr, r7, lr
0057c734  28 e0 8d e5                                      str lr, [sp, #0x28]
0057c738  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0057c73c  07 10 61 e0                                      rsb r1, r1, r7
0057c740  71 10 ff e6                                      uxth r1, r1
0057c744  b6 e2 c5 e1                                      strh lr, [r5, #0x26]
0057c748  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0057c74c  00 30 a0 01                                      moveq r3, r0
0057c750  b4 72 c5 e1                                      strh r7, [r5, #0x24]
0057c754  b8 e2 c5 e1                                      strh lr, [r5, #0x28]
0057c758  0f 00 00 0a                                      beq #0x57c79c
0057c75c  02 e0 83 e2                                      add lr, r3, #2
0057c760  0c c0 6e e0                                      rsb ip, lr, ip
0057c764  18 e0 9d e5                                      ldr lr, [sp, #0x18]
0057c768  01 c0 cc e3                                      bic ip, ip, #1
0057c76c  02 c0 8c e2                                      add ip, ip, #2
0057c770  82 20 8e e0                                      add r2, lr, r2, lsl #1
0057c774  00 e0 a0 e3                                      mov lr, #0
0057c778  be a0 92 e1                                      ldrh sl, [r2, lr]
0057c77c  0a a0 81 e0                                      add sl, r1, sl
0057c780  be a0 83 e1                                      strh sl, [r3, lr]
0057c784  02 e0 8e e2                                      add lr, lr, #2
0057c788  0c 00 5e e1                                      cmp lr, ip
0057c78c  f9 ff ff 1a                                      bne #0x57c778
0057c790  14 30 95 e5                                      ldr r3, [r5, #0x14]
0057c794  10 20 95 e5                                      ldr r2, [r5, #0x10]
0057c798  03 30 62 e0                                      rsb r3, r2, r3
0057c79c  18 10 95 e5                                      ldr r1, [r5, #0x18]
0057c7a0  01 60 86 e2                                      add r6, r6, #1
0057c7a4  08 30 83 e0                                      add r3, r3, r8
0057c7a8  01 20 62 e0                                      rsb r2, r2, r1
0057c7ac  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0057c7b0  08 20 82 e0                                      add r2, r2, r8
0057c7b4  14 30 85 e5                                      str r3, [r5, #0x14]
0057c7b8  01 00 56 e1                                      cmp r6, r1
0057c7bc  18 20 85 e5                                      str r2, [r5, #0x18]
0057c7c0  10 80 85 e5                                      str r8, [r5, #0x10]
0057c7c4  46 00 00 2a                                      bhs #0x57c8e4
0057c7c8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0057c7cc  0b 70 87 e0                                      add r7, r7, fp
0057c7d0  00 80 88 e0                                      add r8, r8, r0
0057c7d4  00 20 82 e0                                      add r2, r2, r0
0057c7d8  0c 20 8d e5                                      str r2, [sp, #0xc]
0057c7dc  77 70 ff e6                                      uxth r7, r7
0057c7e0  a8 ff ff ea                                      b #0x57c688
0057c7e4  03 10 a0 e1                                      mov r1, r3
0057c7e8  00 30 93 e5                                      ldr r3, [r3]
0057c7ec  00 00 53 e3                                      cmp r3, #0
0057c7f0  01 00 00 0a                                      beq #0x57c7fc
0057c7f4  03 00 52 e1                                      cmp r2, r3
0057c7f8  f9 ff ff 2a                                      bhs #0x57c7e4
0057c7fc  00 30 82 e5                                      str r3, [r2]
0057c800  00 20 81 e5                                      str r2, [r1]
0057c804  20 80 94 e5                                      ldr r8, [r4, #0x20]
0057c808  5f ff ff ea                                      b #0x57c58c
0057c80c  b6 12 d6 e1                                      ldrh r1, [r6, #0x26]
0057c810  b4 22 d6 e1                                      ldrh r2, [r6, #0x24]
0057c814  10 30 96 e5                                      ldr r3, [r6, #0x10]
0057c818  14 00 96 e5                                      ldr r0, [r6, #0x14]
0057c81c  01 20 62 e0                                      rsb r2, r2, r1
0057c820  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0057c824  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0057c828  00 30 63 e0                                      rsb r3, r3, r0
0057c82c  02 20 81 e0                                      add r2, r1, r2
0057c830  03 c0 8c e0                                      add ip, ip, r3
0057c834  72 20 ff e6                                      uxth r2, r2
0057c838  2c c0 8d e5                                      str ip, [sp, #0x2c]
0057c83c  4c 20 8d e5                                      str r2, [sp, #0x4c]
0057c840  01 b0 8b e2                                      add fp, fp, #1
0057c844  50 ff ff ea                                      b #0x57c58c
0057c848  58 00 9d e5                                      ldr r0, [sp, #0x58]
0057c84c  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0057c850  70 30 9d e5                                      ldr r3, [sp, #0x70]
0057c854  00 80 8d e5                                      str r8, [sp]
0057c858  04 80 8d e5                                      str r8, [sp, #4]
0057c85c  f7 fd ff eb                                      bl #0x57c040
0057c860  be fe ff ea                                      b #0x57c360
0057c864  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
0057c868  06 30 63 e0                                      rsb r3, r3, r6
0057c86c  43 31 a0 e1                                      asr r3, r3, #2
0057c870  01 00 53 e3                                      cmp r3, #1
0057c874  03 90 83 20                                      addhs sb, r3, r3
0057c878  01 90 83 32                                      addlo sb, r3, #1
0057c87c  07 01 79 e3                                      cmn sb, #0xc0000001
0057c880  15 00 00 8a                                      bhi #0x57c8dc
0057c884  09 00 53 e1                                      cmp r3, sb
0057c888  09 91 a0 91                                      lslls sb, sb, #2
0057c88c  12 00 00 8a                                      bhi #0x57c8dc
0057c890  00 10 a0 e3                                      mov r1, #0
0057c894  09 00 a0 e1                                      mov r0, sb
0057c898  32 4f f6 eb                                      bl #0x310568
0057c89c  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
0057c8a0  00 70 a0 e1                                      mov r7, r0
0057c8a4  01 60 56 e0                                      subs r6, r6, r1
0057c8a8  00 60 a0 01                                      moveq r6, r0
0057c8ac  02 00 00 0a                                      beq #0x57c8bc
0057c8b0  06 20 a0 e1                                      mov r2, r6
0057c8b4  9f 45 f6 eb                                      bl #0x30df38
0057c8b8  06 60 80 e0                                      add r6, r0, r6
0057c8bc  04 50 86 e4                                      str r5, [r6], #4
0057c8c0  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
0057c8c4  09 90 87 e0                                      add sb, r7, sb
0057c8c8  e0 4e f6 eb                                      bl #0x310450
0057c8cc  c4 60 8d e5                                      str r6, [sp, #0xc4]
0057c8d0  c8 90 8d e5                                      str sb, [sp, #0xc8]
0057c8d4  c0 70 8d e5                                      str r7, [sp, #0xc0]
0057c8d8  97 fe ff ea                                      b #0x57c33c
0057c8dc  03 90 e0 e3                                      mvn sb, #3
0057c8e0  ea ff ff ea                                      b #0x57c890
0057c8e4  38 a0 9d e5                                      ldr sl, [sp, #0x38]
0057c8e8  2c b0 9d e5                                      ldr fp, [sp, #0x2c]
0057c8ec  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0057c8f0  00 00 53 e3                                      cmp r3, #0
0057c8f4  03 70 a0 01                                      moveq r7, r3
0057c8f8  07 60 a0 01                                      moveq r6, r7
0057c8fc  4b 00 00 0a                                      beq #0x57ca30
0057c900  20 90 9d e5                                      ldr sb, [sp, #0x20]
0057c904  00 80 a0 e3                                      mov r8, #0
0057c908  08 70 a0 e1                                      mov r7, r8
0057c90c  08 60 a0 e1                                      mov r6, r8
0057c910  0c a0 8d e5                                      str sl, [sp, #0xc]
0057c914  24 b0 8d e5                                      str fp, [sp, #0x24]
0057c918  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0057c91c  20 10 94 e5                                      ldr r1, [r4, #0x20]
0057c920  70 20 94 e5                                      ldr r2, [r4, #0x70]
0057c924  08 30 94 e5                                      ldr r3, [r4, #8]
0057c928  0c 10 81 e0                                      add r1, r1, ip
0057c92c  bc 50 d1 e1                                      ldrh r5, [r1, #0xc]
0057c930  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0057c934  05 50 88 e0                                      add r5, r8, r5
0057c938  92 35 25 e0                                      mla r5, r2, r5, r3
0057c93c  99 e6 20 e0                                      mla r0, sb, r6, lr
0057c940  b4 32 d5 e1                                      ldrh r3, [r5, #0x24]
0057c944  b6 a2 d5 e1                                      ldrh sl, [r5, #0x26]
0057c948  99 e3 21 e0                                      mla r1, sb, r3, lr
0057c94c  0a a0 63 e0                                      rsb sl, r3, sl
0057c950  7a a0 ff e6                                      uxth sl, sl
0057c954  99 0a 02 e0                                      mul r2, sb, sl
0057c958  76 45 f6 eb                                      bl #0x30df38
0057c95c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0057c960  10 e0 95 e5                                      ldr lr, [r5, #0x10]
0057c964  14 b0 95 e5                                      ldr fp, [r5, #0x14]
0057c968  b4 c2 d5 e1                                      ldrh ip, [r5, #0x24]
0057c96c  b6 02 d5 e1                                      ldrh r0, [r5, #0x26]
0057c970  b8 22 d5 e1                                      ldrh r2, [r5, #0x28]
0057c974  0b b0 6e e0                                      rsb fp, lr, fp
0057c978  87 10 83 e0                                      add r1, r3, r7, lsl #1
0057c97c  00 00 6c e0                                      rsb r0, ip, r0
0057c980  02 20 6c e0                                      rsb r2, ip, r2
0057c984  8b 30 81 e0                                      add r3, r1, fp, lsl #1
0057c988  02 20 86 e0                                      add r2, r6, r2
0057c98c  00 00 86 e0                                      add r0, r6, r0
0057c990  03 00 51 e1                                      cmp r1, r3
0057c994  b8 22 c5 e1                                      strh r2, [r5, #0x28]
0057c998  b6 02 c5 e1                                      strh r0, [r5, #0x26]
0057c99c  b4 62 c5 e1                                      strh r6, [r5, #0x24]
0057c9a0  0b 20 a0 01                                      moveq r2, fp
0057c9a4  11 00 00 0a                                      beq #0x57c9f0
0057c9a8  02 00 81 e2                                      add r0, r1, #2
0057c9ac  18 20 9d e5                                      ldr r2, [sp, #0x18]
0057c9b0  03 00 60 e0                                      rsb r0, r0, r3
0057c9b4  06 c0 6c e0                                      rsb ip, ip, r6
0057c9b8  01 00 c0 e3                                      bic r0, r0, #1
0057c9bc  8e e0 82 e0                                      add lr, r2, lr, lsl #1
0057c9c0  7c c0 ff e6                                      uxth ip, ip
0057c9c4  02 00 80 e2                                      add r0, r0, #2
0057c9c8  00 30 a0 e3                                      mov r3, #0
0057c9cc  b3 20 9e e1                                      ldrh r2, [lr, r3]
0057c9d0  02 20 8c e0                                      add r2, ip, r2
0057c9d4  b3 20 81 e1                                      strh r2, [r1, r3]
0057c9d8  02 30 83 e2                                      add r3, r3, #2
0057c9dc  00 00 53 e1                                      cmp r3, r0
0057c9e0  f9 ff ff 1a                                      bne #0x57c9cc
0057c9e4  14 20 95 e5                                      ldr r2, [r5, #0x14]
0057c9e8  10 e0 95 e5                                      ldr lr, [r5, #0x10]
0057c9ec  02 20 6e e0                                      rsb r2, lr, r2
0057c9f0  18 30 95 e5                                      ldr r3, [r5, #0x18]
0057c9f4  01 80 88 e2                                      add r8, r8, #1
0057c9f8  07 20 82 e0                                      add r2, r2, r7
0057c9fc  03 e0 6e e0                                      rsb lr, lr, r3
0057ca00  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0057ca04  07 e0 8e e0                                      add lr, lr, r7
0057ca08  0a 60 86 e0                                      add r6, r6, sl
0057ca0c  03 00 58 e1                                      cmp r8, r3
0057ca10  10 70 85 e5                                      str r7, [r5, #0x10]
0057ca14  14 20 85 e5                                      str r2, [r5, #0x14]
0057ca18  18 e0 85 e5                                      str lr, [r5, #0x18]
0057ca1c  0b 70 87 e0                                      add r7, r7, fp
0057ca20  76 60 ff e6                                      uxth r6, r6
0057ca24  bb ff ff 1a                                      bne #0x57c918
0057ca28  0c a0 9d e5                                      ldr sl, [sp, #0xc]
0057ca2c  24 b0 9d e5                                      ldr fp, [sp, #0x24]
0057ca30  20 c0 9d e5                                      ldr ip, [sp, #0x20]
0057ca34  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0057ca38  60 20 9d e5                                      ldr r2, [sp, #0x60]
0057ca3c  34 10 9d e5                                      ldr r1, [sp, #0x34]
0057ca40  9c e6 20 e0                                      mla r0, ip, r6, lr
0057ca44  87 47 f6 eb                                      bl #0x30e868
0057ca48  18 10 9d e5                                      ldr r1, [sp, #0x18]
0057ca4c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0057ca50  87 00 81 e0                                      add r0, r1, r7, lsl #1
0057ca54  30 10 9d e5                                      ldr r1, [sp, #0x30]
0057ca58  82 47 f6 eb                                      bl #0x30e868
0057ca5c  18 20 9d e5                                      ldr r2, [sp, #0x18]
0057ca60  00 00 52 e3                                      cmp r2, #0
0057ca64  09 00 00 0a                                      beq #0x57ca90
0057ca68  54 30 9d e5                                      ldr r3, [sp, #0x54]
0057ca6c  18 50 93 e5                                      ldr r5, [r3, #0x18]
0057ca70  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
0057ca74  1f 20 03 e2                                      and r2, r3, #0x1f
0057ca78  01 00 52 e3                                      cmp r2, #1
0057ca7c  90 00 00 9a                                      bls #0x57ccc4
0057ca80  01 20 42 e2                                      sub r2, r2, #1
0057ca84  1f 30 c3 e3                                      bic r3, r3, #0x1f
0057ca88  03 30 82 e1                                      orr r3, r2, r3
0057ca8c  13 30 c5 e5                                      strb r3, [r5, #0x13]
0057ca90  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0057ca94  00 00 5e e3                                      cmp lr, #0
0057ca98  08 00 00 0a                                      beq #0x57cac0
0057ca9c  40 00 9d e5                                      ldr r0, [sp, #0x40]
0057caa0  13 30 d0 e5                                      ldrb r3, [r0, #0x13]
0057caa4  1f 20 03 e2                                      and r2, r3, #0x1f
0057caa8  01 00 52 e3                                      cmp r2, #1
0057caac  8a 00 00 9a                                      bls #0x57ccdc
0057cab0  01 20 42 e2                                      sub r2, r2, #1
0057cab4  1f 30 c3 e3                                      bic r3, r3, #0x1f
0057cab8  03 30 82 e1                                      orr r3, r2, r3
0057cabc  13 30 c0 e5                                      strb r3, [r0, #0x13]
0057cac0  40 c0 9d e5                                      ldr ip, [sp, #0x40]
0057cac4  00 00 5c e3                                      cmp ip, #0
0057cac8  01 00 00 0a                                      beq #0x57cad4
0057cacc  0c 00 a0 e1                                      mov r0, ip
0057cad0  ab 82 f6 eb                                      bl #0x31d584
0057cad4  30 e0 9d e5                                      ldr lr, [sp, #0x30]
0057cad8  00 00 5e e3                                      cmp lr, #0
0057cadc  01 00 00 0a                                      beq #0x57cae8
0057cae0  0e 00 a0 e1                                      mov r0, lr
0057cae4  e7 de fe eb                                      bl #0x534688
0057cae8  34 00 9d e5                                      ldr r0, [sp, #0x34]
0057caec  00 00 50 e3                                      cmp r0, #0
0057caf0  00 00 00 0a                                      beq #0x57caf8
0057caf4  e3 de fe eb                                      bl #0x534688
0057caf8  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
0057cafc  00 20 a0 e3                                      mov r2, #0
0057cb00  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
0057cb04  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0057cb08  00 10 93 e5                                      ldr r1, [r3]
0057cb0c  04 00 93 e5                                      ldr r0, [r3, #4]
0057cb10  00 10 91 e5                                      ldr r1, [r1]
0057cb14  80 c1 81 e7                                      str ip, [r1, r0, lsl #3]
0057cb18  00 10 93 e5                                      ldr r1, [r3]
0057cb1c  04 00 93 e5                                      ldr r0, [r3, #4]
0057cb20  00 10 91 e5                                      ldr r1, [r1]
0057cb24  80 11 81 e0                                      add r1, r1, r0, lsl #3
0057cb28  04 20 81 e5                                      str r2, [r1, #4]
0057cb2c  08 10 93 e5                                      ldr r1, [r3, #8]
0057cb30  01 20 82 e2                                      add r2, r2, #1
0057cb34  00 00 51 e3                                      cmp r1, #0
0057cb38  30 10 91 15                                      ldrne r1, [r1, #0x30]
0057cb3c  04 30 93 15                                      ldrne r3, [r3, #4]
0057cb40  18 40 81 15                                      strne r4, [r1, #0x18]
0057cb44  1c 30 81 15                                      strne r3, [r1, #0x1c]
0057cb48  0b 00 52 e1                                      cmp r2, fp
0057cb4c  eb ff ff 3a                                      blo #0x57cb00
0057cb50  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
0057cb54  00 00 50 e3                                      cmp r0, #0
0057cb58  00 00 00 0a                                      beq #0x57cb60
0057cb5c  3b 4e f6 eb                                      bl #0x310450
0057cb60  cc 00 9d e5                                      ldr r0, [sp, #0xcc]
0057cb64  00 00 50 e3                                      cmp r0, #0
0057cb68  00 00 00 0a                                      beq #0x57cb70
0057cb6c  c5 de fe eb                                      bl #0x534688
0057cb70  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0057cb74  64 20 9d e5                                      ldr r2, [sp, #0x64]
0057cb78  14 a0 8a e2                                      add sl, sl, #0x14
0057cb7c  01 10 81 e2                                      add r1, r1, #1
0057cb80  02 00 51 e1                                      cmp r1, r2
0057cb84  3c 10 8d e5                                      str r1, [sp, #0x3c]
0057cb88  c1 fd ff 1a                                      bne #0x57c294
0057cb8c  bf c4 a0 e3                                      mov ip, #0xbf000000
0057cb90  02 c5 8c e2                                      add ip, ip, #0x800000
0057cb94  fe 35 a0 e3                                      mov r3, #0x3f800000
0057cb98  2c 00 84 e2                                      add r0, r4, #0x2c
0057cb9c  50 10 9d e5                                      ldr r1, [sp, #0x50]
0057cba0  a8 20 8d e2                                      add r2, sp, #0xa8
0057cba4  b0 c0 8d e5                                      str ip, [sp, #0xb0]
0057cba8  a8 c0 8d e5                                      str ip, [sp, #0xa8]
0057cbac  ac c0 8d e5                                      str ip, [sp, #0xac]
0057cbb0  bc 30 8d e5                                      str r3, [sp, #0xbc]
0057cbb4  b4 30 8d e5                                      str r3, [sp, #0xb4]
0057cbb8  b8 30 8d e5                                      str r3, [sp, #0xb8]
0057cbbc  55 f9 ff eb                                      bl #0x57b118
0057cbc0  0c c0 94 e5                                      ldr ip, [r4, #0xc]
0057cbc4  08 00 94 e5                                      ldr r0, [r4, #8]
0057cbc8  2c 60 94 e5                                      ldr r6, [r4, #0x2c]
0057cbcc  70 40 94 e5                                      ldr r4, [r4, #0x70]
0057cbd0  0c 00 50 e1                                      cmp r0, ip
0057cbd4  27 00 00 0a                                      beq #0x57cc78
0057cbd8  00 20 a0 e3                                      mov r2, #0
0057cbdc  60 81 9f e5                                      ldr r8, [pc, #0x160]
0057cbe0  00 30 a0 e1                                      mov r3, r0
0057cbe4  02 a0 a0 e1                                      mov sl, r2
0057cbe8  44 90 9d e5                                      ldr sb, [sp, #0x44]
0057cbec  03 00 00 ea                                      b #0x57cc00
0057cbf0  04 20 82 e0                                      add r2, r2, r4
0057cbf4  02 30 80 e0                                      add r3, r0, r2
0057cbf8  03 00 5c e1                                      cmp ip, r3
0057cbfc  1d 00 00 0a                                      beq #0x57cc78
0057cc00  08 10 93 e5                                      ldr r1, [r3, #8]
0057cc04  00 00 51 e3                                      cmp r1, #0
0057cc08  f8 ff ff 1a                                      bne #0x57cbf0
0057cc0c  0c 50 93 e5                                      ldr r5, [r3, #0xc]
0057cc10  05 00 56 e1                                      cmp r6, r5
0057cc14  12 00 00 0a                                      beq #0x57cc64
0057cc18  21 10 d3 e5                                      ldrb r1, [r3, #0x21]
0057cc1c  00 00 51 e3                                      cmp r1, #0
0057cc20  0e 00 00 0a                                      beq #0x57cc60
0057cc24  08 10 99 e7                                      ldr r1, [sb, r8]
0057cc28  00 10 91 e5                                      ldr r1, [r1]
0057cc2c  00 00 51 e3                                      cmp r1, #0
0057cc30  40 00 00 0a                                      beq #0x57cd38
0057cc34  01 00 55 e1                                      cmp r5, r1
0057cc38  3e 00 00 3a                                      blo #0x57cd38
0057cc3c  01 70 a0 e1                                      mov r7, r1
0057cc40  00 10 91 e5                                      ldr r1, [r1]
0057cc44  00 00 51 e3                                      cmp r1, #0
0057cc48  01 00 00 0a                                      beq #0x57cc54
0057cc4c  01 00 55 e1                                      cmp r5, r1
0057cc50  f9 ff ff 2a                                      bhs #0x57cc3c
0057cc54  00 10 85 e5                                      str r1, [r5]
0057cc58  00 50 87 e5                                      str r5, [r7]
0057cc5c  21 a0 c3 e5                                      strb sl, [r3, #0x21]
0057cc60  0c 60 83 e5                                      str r6, [r3, #0xc]
0057cc64  04 20 82 e0                                      add r2, r2, r4
0057cc68  02 30 80 e0                                      add r3, r0, r2
0057cc6c  03 00 5c e1                                      cmp ip, r3
0057cc70  18 60 86 e2                                      add r6, r6, #0x18
0057cc74  e1 ff ff 1a                                      bne #0x57cc00
0057cc78  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
0057cc7c  00 00 50 e3                                      cmp r0, #0
0057cc80  00 00 00 0a                                      beq #0x57cc88
0057cc84  7f de fe eb                                      bl #0x534688
0057cc88  74 00 9d e5                                      ldr r0, [sp, #0x74]
0057cc8c  f4 d0 8d e2                                      add sp, sp, #0xf4
0057cc90  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0057cc94  00 00 51 e3                                      cmp r1, #0
0057cc98  96 ff ff 1a                                      bne #0x57caf8
0057cc9c  68 20 94 e5                                      ldr r2, [r4, #0x68]
0057cca0  20 30 94 e5                                      ldr r3, [r4, #0x20]
0057cca4  00 00 5b e3                                      cmp fp, #0
0057cca8  01 20 82 e2                                      add r2, r2, #1
0057ccac  68 20 84 e5                                      str r2, [r4, #0x68]
0057ccb0  0a 30 93 e7                                      ldr r3, [r3, sl]
0057ccb4  01 20 a0 e3                                      mov r2, #1
0057ccb8  34 20 c3 e5                                      strb r2, [r3, #0x34]
0057ccbc  8d ff ff 1a                                      bne #0x57caf8
0057ccc0  a2 ff ff ea                                      b #0x57cb50
0057ccc4  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
0057ccc8  20 00 13 e3                                      tst r3, #0x20
0057cccc  14 00 00 1a                                      bne #0x57cd24
0057ccd0  00 c0 a0 e3                                      mov ip, #0
0057ccd4  13 c0 c5 e5                                      strb ip, [r5, #0x13]
0057ccd8  6c ff ff ea                                      b #0x57ca90
0057ccdc  40 10 9d e5                                      ldr r1, [sp, #0x40]
0057cce0  12 30 d1 e5                                      ldrb r3, [r1, #0x12]
0057cce4  20 00 13 e3                                      tst r3, #0x20
0057cce8  08 00 00 1a                                      bne #0x57cd10
0057ccec  40 30 9d e5                                      ldr r3, [sp, #0x40]
0057ccf0  00 20 a0 e3                                      mov r2, #0
0057ccf4  13 20 c3 e5                                      strb r2, [r3, #0x13]
0057ccf8  70 ff ff ea                                      b #0x57cac0
0057ccfc  20 30 94 e5                                      ldr r3, [r4, #0x20]
0057cd00  00 c0 a0 e3                                      mov ip, #0
0057cd04  0a 30 83 e0                                      add r3, r3, sl
0057cd08  b0 c1 c3 e1                                      strh ip, [r3, #0x10]
0057cd0c  e2 ff ff ea                                      b #0x57cc9c
0057cd10  00 30 91 e5                                      ldr r3, [r1]
0057cd14  01 00 a0 e1                                      mov r0, r1
0057cd18  0f e0 a0 e1                                      mov lr, pc
0057cd1c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0057cd20  f1 ff ff ea                                      b #0x57ccec
0057cd24  00 30 95 e5                                      ldr r3, [r5]
0057cd28  05 00 a0 e1                                      mov r0, r5
0057cd2c  0f e0 a0 e1                                      mov lr, pc
0057cd30  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0057cd34  e5 ff ff ea                                      b #0x57ccd0
0057cd38  08 70 99 e7                                      ldr r7, [sb, r8]
0057cd3c  c4 ff ff ea                                      b #0x57cc54
; mapping-symbol data/literal pool
0057cd40  84 88 41 00 60 20 00 00                          .byte 0x84, 0x88, 0x41, 0x00, 0x60, 0x20, 0x00, 0x00

; FUNCTION 0x0057cd48, declared_size=2836, range_size=2836, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZNK6glitch5scene10CBatchMesh4saveEPNS_2io10IWriteFileEPNS_5video12IVideoDriverENS_2os8E_ENDIANEbb
; demangled: glitch::scene::CBatchMesh::save(glitch::io::IWriteFile*, glitch::video::IVideoDriver*, glitch::os::E_ENDIAN, bool, bool) const
; decoder-mode: arm
0057cd48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057cd4c  dc 2a 9f e5                                      ldr r2, [pc, #0xadc]
0057cd50  dc aa 9f e5                                      ldr sl, [pc, #0xadc]
0057cd54  8b df 4d e2                                      sub sp, sp, #0x22c
0057cd58  02 20 8f e0                                      add r2, pc, r2
0057cd5c  10 20 8d e5                                      str r2, [sp, #0x10]
0057cd60  0a 20 92 e7                                      ldr r2, [r2, sl]
0057cd64  54 e2 dd e5                                      ldrb lr, [sp, #0x254]
0057cd68  74 c0 8d e2                                      add ip, sp, #0x74
0057cd6c  00 20 92 e5                                      ldr r2, [r2]
0057cd70  00 90 a0 e1                                      mov sb, r0
0057cd74  0c 00 a0 e1                                      mov r0, ip
0057cd78  03 40 a0 e1                                      mov r4, r3
0057cd7c  68 a0 8d e5                                      str sl, [sp, #0x68]
0057cd80  58 c0 8d e5                                      str ip, [sp, #0x58]
0057cd84  01 70 a0 e1                                      mov r7, r1
0057cd88  24 22 8d e5                                      str r2, [sp, #0x224]
0057cd8c  6c e0 8d e5                                      str lr, [sp, #0x6c]
0057cd90  7e e0 04 eb                                      bl #0x6b4f90
0057cd94  20 30 99 e5                                      ldr r3, [sb, #0x20]
0057cd98  24 60 99 e5                                      ldr r6, [sb, #0x24]
0057cd9c  4c a0 99 e5                                      ldr sl, [sb, #0x4c]
0057cda0  38 c0 99 e5                                      ldr ip, [sb, #0x38]
0057cda4  06 60 63 e0                                      rsb r6, r3, r6
0057cda8  cd 2c 0c e3                                      movw r2, #0xcccd
0057cdac  14 30 99 e5                                      ldr r3, [sb, #0x14]
0057cdb0  18 50 99 e5                                      ldr r5, [sb, #0x18]
0057cdb4  cc 2c 4c e3                                      movt r2, #0xcccc
0057cdb8  46 61 a0 e1                                      asr r6, r6, #2
0057cdbc  68 80 99 e5                                      ldr r8, [sb, #0x68]
0057cdc0  70 e0 99 e5                                      ldr lr, [sb, #0x70]
0057cdc4  3c 00 99 e5                                      ldr r0, [sb, #0x3c]
0057cdc8  40 10 99 e5                                      ldr r1, [sb, #0x40]
0057cdcc  48 b0 99 e5                                      ldr fp, [sb, #0x48]
0057cdd0  92 06 06 e0                                      mul r6, r2, r6
0057cdd4  44 20 99 e5                                      ldr r2, [sb, #0x44]
0057cdd8  08 a0 8d e5                                      str sl, [sp, #8]
0057cddc  02 00 54 e3                                      cmp r4, #2
0057cde0  42 a0 a0 e3                                      mov sl, #0x42
0057cde4  a8 c0 8d e5                                      str ip, [sp, #0xa8]
0057cde8  08 c0 9d e5                                      ldr ip, [sp, #8]
0057cdec  00 40 a0 03                                      moveq r4, #0
0057cdf0  05 50 63 e0                                      rsb r5, r3, r5
0057cdf4  a4 a0 cd e5                                      strb sl, [sp, #0xa4]
0057cdf8  41 a0 a0 e3                                      mov sl, #0x41
0057cdfc  00 30 a0 e3                                      mov r3, #0
0057ce00  c5 51 a0 e1                                      asr r5, r5, #3
0057ce04  a5 a0 cd e5                                      strb sl, [sp, #0xa5]
0057ce08  01 00 54 e3                                      cmp r4, #1
0057ce0c  13 a0 8a e2                                      add sl, sl, #0x13
0057ce10  a6 a0 cd e5                                      strb sl, [sp, #0xa6]
0057ce14  c0 80 8d e5                                      str r8, [sp, #0xc0]
0057ce18  c4 60 8d e5                                      str r6, [sp, #0xc4]
0057ce1c  c8 50 8d e5                                      str r5, [sp, #0xc8]
0057ce20  cc e0 8d e5                                      str lr, [sp, #0xcc]
0057ce24  ac 00 8d e5                                      str r0, [sp, #0xac]
0057ce28  b0 10 8d e5                                      str r1, [sp, #0xb0]
0057ce2c  b4 20 8d e5                                      str r2, [sp, #0xb4]
0057ce30  b8 b0 8d e5                                      str fp, [sp, #0xb8]
0057ce34  bc c0 8d e5                                      str ip, [sp, #0xbc]
0057ce38  54 31 8d e5                                      str r3, [sp, #0x154]
0057ce3c  58 31 8d e5                                      str r3, [sp, #0x158]
0057ce40  5c 31 8d e5                                      str r3, [sp, #0x15c]
0057ce44  a7 40 cd e5                                      strb r4, [sp, #0xa7]
0057ce48  3e 02 00 0a                                      beq #0x57d748
0057ce4c  28 30 8d e5                                      str r3, [sp, #0x28]
0057ce50  e0 19 9f e5                                      ldr r1, [pc, #0x9e0]
0057ce54  83 4f 8d e2                                      add r4, sp, #0x20c
0057ce58  19 2e 8d e2                                      add r2, sp, #0x190
0057ce5c  01 10 8f e0                                      add r1, pc, r1
0057ce60  04 00 a0 e1                                      mov r0, r4
0057ce64  74 a4 f6 eb                                      bl #0x32603c
0057ce68  58 00 9d e5                                      ldr r0, [sp, #0x58]
0057ce6c  04 10 a0 e1                                      mov r1, r4
0057ce70  a4 20 8d e2                                      add r2, sp, #0xa4
0057ce74  2c 30 a0 e3                                      mov r3, #0x2c
0057ce78  72 e1 04 eb                                      bl #0x6b5448
0057ce7c  20 02 9d e5                                      ldr r0, [sp, #0x220]
0057ce80  04 00 50 e1                                      cmp r0, r4
0057ce84  02 00 00 0a                                      beq #0x57ce94
0057ce88  00 00 50 e3                                      cmp r0, #0
0057ce8c  00 00 00 0a                                      beq #0x57ce94
0057ce90  6e 4d f6 eb                                      bl #0x310450
0057ce94  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0057ce98  00 00 5e e3                                      cmp lr, #0
0057ce9c  fb 01 00 0a                                      beq #0x57d690
0057cea0  14 30 99 e5                                      ldr r3, [sb, #0x14]
0057cea4  18 20 99 e5                                      ldr r2, [sb, #0x18]
0057cea8  02 10 63 e0                                      rsb r1, r3, r2
0057ceac  a1 11 b0 e1                                      lsrs r1, r1, #3
0057ceb0  3a 00 00 0a                                      beq #0x57cfa0
0057ceb4  52 0f 8d e2                                      add r0, sp, #0x148
0057ceb8  00 40 a0 e3                                      mov r4, #0
0057cebc  04 10 80 e2                                      add r1, r0, #4
0057cec0  07 20 80 e2                                      add r2, r0, #7
0057cec4  06 c0 80 e2                                      add ip, r0, #6
0057cec8  05 e0 80 e2                                      add lr, r0, #5
0057cecc  20 00 8d e5                                      str r0, [sp, #0x20]
0057ced0  03 80 80 e2                                      add r8, r0, #3
0057ced4  02 a0 80 e2                                      add sl, r0, #2
0057ced8  01 b0 80 e2                                      add fp, r0, #1
0057cedc  16 6e 8d e2                                      add r6, sp, #0x160
0057cee0  18 10 8d e5                                      str r1, [sp, #0x18]
0057cee4  14 20 8d e5                                      str r2, [sp, #0x14]
0057cee8  0c c0 8d e5                                      str ip, [sp, #0xc]
0057ceec  08 e0 8d e5                                      str lr, [sp, #8]
0057cef0  04 50 a0 e1                                      mov r5, r4
0057cef4  84 21 93 e7                                      ldr r2, [r3, r4, lsl #3]
0057cef8  84 11 83 e0                                      add r1, r3, r4, lsl #3
0057cefc  00 30 97 e5                                      ldr r3, [r7]
0057cf00  48 21 8d e5                                      str r2, [sp, #0x148]
0057cf04  04 20 91 e5                                      ldr r2, [r1, #4]
0057cf08  60 51 8d e5                                      str r5, [sp, #0x160]
0057cf0c  20 10 9d e5                                      ldr r1, [sp, #0x20]
0057cf10  4c 21 8d e5                                      str r2, [sp, #0x14c]
0057cf14  00 c0 d8 e5                                      ldrb ip, [r8]
0057cf18  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0057cf1c  08 20 a0 e3                                      mov r2, #8
0057cf20  60 c1 cd e5                                      strb ip, [sp, #0x160]
0057cf24  00 c0 da e5                                      ldrb ip, [sl]
0057cf28  07 00 a0 e1                                      mov r0, r7
0057cf2c  01 40 84 e2                                      add r4, r4, #1
0057cf30  61 c1 cd e5                                      strb ip, [sp, #0x161]
0057cf34  00 c0 db e5                                      ldrb ip, [fp]
0057cf38  62 c1 cd e5                                      strb ip, [sp, #0x162]
0057cf3c  00 c0 d1 e5                                      ldrb ip, [r1]
0057cf40  63 c1 cd e5                                      strb ip, [sp, #0x163]
0057cf44  00 c0 96 e5                                      ldr ip, [r6]
0057cf48  60 51 8d e5                                      str r5, [sp, #0x160]
0057cf4c  48 c1 8d e5                                      str ip, [sp, #0x148]
0057cf50  00 c0 de e5                                      ldrb ip, [lr]
0057cf54  0c e0 9d e5                                      ldr lr, [sp, #0xc]
0057cf58  60 c1 cd e5                                      strb ip, [sp, #0x160]
0057cf5c  00 c0 de e5                                      ldrb ip, [lr]
0057cf60  08 e0 9d e5                                      ldr lr, [sp, #8]
0057cf64  61 c1 cd e5                                      strb ip, [sp, #0x161]
0057cf68  00 c0 de e5                                      ldrb ip, [lr]
0057cf6c  18 e0 9d e5                                      ldr lr, [sp, #0x18]
0057cf70  62 c1 cd e5                                      strb ip, [sp, #0x162]
0057cf74  00 c0 de e5                                      ldrb ip, [lr]
0057cf78  63 c1 cd e5                                      strb ip, [sp, #0x163]
0057cf7c  00 c0 96 e5                                      ldr ip, [r6]
0057cf80  4c c1 8d e5                                      str ip, [sp, #0x14c]
0057cf84  0f e0 a0 e1                                      mov lr, pc
0057cf88  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057cf8c  14 30 99 e5                                      ldr r3, [sb, #0x14]
0057cf90  18 20 99 e5                                      ldr r2, [sb, #0x18]
0057cf94  02 10 63 e0                                      rsb r1, r3, r2
0057cf98  c1 01 54 e1                                      cmp r4, r1, asr #3
0057cf9c  d4 ff ff 3a                                      blo #0x57cef4
0057cfa0  02 30 63 e0                                      rsb r3, r3, r2
0057cfa4  07 10 c3 e3                                      bic r1, r3, #7
0057cfa8  46 0f 8d e2                                      add r0, sp, #0x118
0057cfac  4c 00 8d e5                                      str r0, [sp, #0x4c]
0057cfb0  53 df 04 eb                                      bl #0x6b4d04
0057cfb4  24 20 99 e5                                      ldr r2, [sb, #0x24]
0057cfb8  20 30 99 e5                                      ldr r3, [sb, #0x20]
0057cfbc  cd 6c 0c e3                                      movw r6, #0xcccd
0057cfc0  cc 6c 4c e3                                      movt r6, #0xcccc
0057cfc4  02 30 63 e0                                      rsb r3, r3, r2
0057cfc8  43 31 a0 e1                                      asr r3, r3, #2
0057cfcc  96 03 03 e0                                      mul r3, r6, r3
0057cfd0  01 5c 8d e2                                      add r5, sp, #0x100
0057cfd4  0c 10 a0 e3                                      mov r1, #0xc
0057cfd8  91 03 01 e0                                      mul r1, r1, r3
0057cfdc  05 00 a0 e1                                      mov r0, r5
0057cfe0  47 df 04 eb                                      bl #0x6b4d04
0057cfe4  18 20 99 e5                                      ldr r2, [sb, #0x18]
0057cfe8  14 30 99 e5                                      ldr r3, [sb, #0x14]
0057cfec  70 10 99 e5                                      ldr r1, [sb, #0x70]
0057cff0  e8 a0 8d e2                                      add sl, sp, #0xe8
0057cff4  02 30 63 e0                                      rsb r3, r3, r2
0057cff8  c3 31 a0 e1                                      asr r3, r3, #3
0057cffc  91 03 01 e0                                      mul r1, r1, r3
0057d000  0a 00 a0 e1                                      mov r0, sl
0057d004  54 a0 8d e5                                      str sl, [sp, #0x54]
0057d008  3d df 04 eb                                      bl #0x6b4d04
0057d00c  24 20 99 e5                                      ldr r2, [sb, #0x24]
0057d010  20 30 99 e5                                      ldr r3, [sb, #0x20]
0057d014  d0 c0 8d e2                                      add ip, sp, #0xd0
0057d018  fa 1f a0 e3                                      mov r1, #0x3e8
0057d01c  02 30 63 e0                                      rsb r3, r3, r2
0057d020  43 31 a0 e1                                      asr r3, r3, #2
0057d024  96 03 03 e0                                      mul r3, r6, r3
0057d028  0c 00 a0 e1                                      mov r0, ip
0057d02c  91 03 01 e0                                      mul r1, r1, r3
0057d030  50 c0 8d e5                                      str ip, [sp, #0x50]
0057d034  32 df 04 eb                                      bl #0x6b4d04
0057d038  20 40 99 e5                                      ldr r4, [sb, #0x20]
0057d03c  24 30 99 e5                                      ldr r3, [sb, #0x24]
0057d040  03 30 64 e0                                      rsb r3, r4, r3
0057d044  43 31 a0 e1                                      asr r3, r3, #2
0057d048  96 03 06 e0                                      mul r6, r6, r3
0057d04c  00 00 56 e3                                      cmp r6, #0
0057d050  06 01 00 0a                                      beq #0x57d470
0057d054  e0 e7 9f e5                                      ldr lr, [pc, #0x7e0]
0057d058  00 00 a0 e3                                      mov r0, #0
0057d05c  c5 6e 04 e3                                      movw r6, #0x4ec5
0057d060  14 e0 8d e5                                      str lr, [sp, #0x14]
0057d064  52 1f 8d e2                                      add r1, sp, #0x148
0057d068  17 2e 8d e2                                      add r2, sp, #0x170
0057d06c  5e 3f 8d e2                                      add r3, sp, #0x178
0057d070  5d af 8d e2                                      add sl, sp, #0x174
0057d074  5b cf 8d e2                                      add ip, sp, #0x16c
0057d078  16 ee 8d e2                                      add lr, sp, #0x160
0057d07c  24 00 8d e5                                      str r0, [sp, #0x24]
0057d080  ec 64 4c e3                                      movt r6, #0xc4ec
0057d084  2c 00 8d e5                                      str r0, [sp, #0x2c]
0057d088  00 80 a0 e1                                      mov r8, r0
0057d08c  20 10 8d e5                                      str r1, [sp, #0x20]
0057d090  5c 20 8d e5                                      str r2, [sp, #0x5c]
0057d094  64 30 8d e5                                      str r3, [sp, #0x64]
0057d098  60 a0 8d e5                                      str sl, [sp, #0x60]
0057d09c  34 c0 8d e5                                      str ip, [sp, #0x34]
0057d0a0  38 e0 8d e5                                      str lr, [sp, #0x38]
0057d0a4  34 70 a0 e3                                      mov r7, #0x34
0057d0a8  24 00 9d e5                                      ldr r0, [sp, #0x24]
0057d0ac  00 30 a0 e3                                      mov r3, #0
0057d0b0  74 31 8d e5                                      str r3, [sp, #0x174]
0057d0b4  78 31 8d e5                                      str r3, [sp, #0x178]
0057d0b8  00 30 94 e7                                      ldr r3, [r4, r0]
0057d0bc  00 40 84 e0                                      add r4, r4, r0
0057d0c0  00 00 53 e3                                      cmp r3, #0
0057d0c4  70 31 8d e5                                      str r3, [sp, #0x170]
0057d0c8  04 20 93 15                                      ldrne r2, [r3, #4]
0057d0cc  01 20 82 12                                      addne r2, r2, #1
0057d0d0  04 20 83 15                                      strne r2, [r3, #4]
0057d0d4  60 a0 9d e5                                      ldr sl, [sp, #0x60]
0057d0d8  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
0057d0dc  50 10 9d e5                                      ldr r1, [sp, #0x50]
0057d0e0  28 20 9d e5                                      ldr r2, [sp, #0x28]
0057d0e4  64 30 9d e5                                      ldr r3, [sp, #0x64]
0057d0e8  00 a0 8d e5                                      str sl, [sp]
0057d0ec  9a ed 04 eb                                      bl #0x6b875c
0057d0f0  70 01 9d e5                                      ldr r0, [sp, #0x170]
0057d0f4  00 00 50 e3                                      cmp r0, #0
0057d0f8  00 00 00 0a                                      beq #0x57d100
0057d0fc  20 81 f6 eb                                      bl #0x31d584
0057d100  00 30 94 e5                                      ldr r3, [r4]
0057d104  14 30 93 e5                                      ldr r3, [r3, #0x14]
0057d108  00 00 53 e3                                      cmp r3, #0
0057d10c  6c 31 8d e5                                      str r3, [sp, #0x16c]
0057d110  00 20 93 15                                      ldrne r2, [r3]
0057d114  01 20 82 12                                      addne r2, r2, #1
0057d118  00 20 83 15                                      strne r2, [r3]
0057d11c  34 00 9d e5                                      ldr r0, [sp, #0x34]
0057d120  e0 e1 04 eb                                      bl #0x6b58a8
0057d124  0c 00 8d e5                                      str r0, [sp, #0xc]
0057d128  34 00 9d e5                                      ldr r0, [sp, #0x34]
0057d12c  97 86 f7 eb                                      bl #0x35eb90
0057d130  78 21 9d e5                                      ldr r2, [sp, #0x178]
0057d134  74 11 9d e5                                      ldr r1, [sp, #0x174]
0057d138  0c a0 9d e5                                      ldr sl, [sp, #0xc]
0057d13c  02 80 88 e0                                      add r8, r8, r2
0057d140  68 81 8d e5                                      str r8, [sp, #0x168]
0057d144  00 20 94 e5                                      ldr r2, [r4]
0057d148  01 10 88 e0                                      add r1, r8, r1
0057d14c  10 00 9d e5                                      ldr r0, [sp, #0x10]
0057d150  14 20 92 e5                                      ldr r2, [r2, #0x14]
0057d154  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0057d158  41 30 a0 e3                                      mov r3, #0x41
0057d15c  08 20 92 e5                                      ldr r2, [r2, #8]
0057d160  0e c0 90 e7                                      ldr ip, [r0, lr]
0057d164  08 00 84 e2                                      add r0, r4, #8
0057d168  92 1a 22 e0                                      mla r2, r2, sl, r1
0057d16c  01 ac 8d e2                                      add sl, sp, #0x100
0057d170  30 20 8d e5                                      str r2, [sp, #0x30]
0057d174  64 21 8d e5                                      str r2, [sp, #0x164]
0057d178  00 20 94 e5                                      ldr r2, [r4]
0057d17c  bc e2 d2 e1                                      ldrh lr, [r2, #0x2c]
0057d180  08 e0 8d e5                                      str lr, [sp, #8]
0057d184  20 20 92 e5                                      ldr r2, [r2, #0x20]
0057d188  4a 31 cd e5                                      strb r3, [sp, #0x14a]
0057d18c  48 31 cd e5                                      strb r3, [sp, #0x148]
0057d190  40 20 8d e5                                      str r2, [sp, #0x40]
0057d194  42 20 a0 e3                                      mov r2, #0x42
0057d198  49 21 cd e5                                      strb r2, [sp, #0x149]
0057d19c  54 20 a0 e3                                      mov r2, #0x54
0057d1a0  4b 21 cd e5                                      strb r2, [sp, #0x14b]
0057d1a4  b0 11 d4 e1                                      ldrh r1, [r4, #0x10]
0057d1a8  01 2c 8d e2                                      add r2, sp, #0x100
0057d1ac  0e c1 9c e7                                      ldr ip, [ip, lr, lsl #2]
0057d1b0  be 14 c2 e1                                      strh r1, [r2, #0x4e]
0057d1b4  be 30 d4 e1                                      ldrh r3, [r4, #0xe]
0057d1b8  bc 20 d4 e1                                      ldrh r2, [r4, #0xc]
0057d1bc  3c c0 8d e5                                      str ip, [sp, #0x3c]
0057d1c0  03 30 62 e0                                      rsb r3, r2, r3
0057d1c4  bc 34 ca e1                                      strh r3, [sl, #0x4c]
0057d1c8  f3 ee ff eb                                      bl #0x578d9c
0057d1cc  1e c0 a0 e3                                      mov ip, #0x1e
0057d1d0  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0057d1d4  9c 00 00 e0                                      mul r0, ip, r0
0057d1d8  01 1c 8d e2                                      add r1, sp, #0x100
0057d1dc  00 00 5e e3                                      cmp lr, #0
0057d1e0  b0 05 c1 e1                                      strh r0, [r1, #0x50]
0057d1e4  21 00 00 0a                                      beq #0x57d270
0057d1e8  20 a0 9d e5                                      ldr sl, [sp, #0x20]
0057d1ec  00 20 a0 e3                                      mov r2, #0
0057d1f0  b0 26 c1 e1                                      strh r2, [r1, #0x60]
0057d1f4  07 30 da e5                                      ldrb r3, [sl, #7]
0057d1f8  38 c0 9d e5                                      ldr ip, [sp, #0x38]
0057d1fc  38 e0 9d e5                                      ldr lr, [sp, #0x38]
0057d200  60 31 cd e5                                      strb r3, [sp, #0x160]
0057d204  06 30 da e5                                      ldrb r3, [sl, #6]
0057d208  38 00 9d e5                                      ldr r0, [sp, #0x38]
0057d20c  61 31 cd e5                                      strb r3, [sp, #0x161]
0057d210  b0 c0 dc e1                                      ldrh ip, [ip]
0057d214  b0 26 c1 e1                                      strh r2, [r1, #0x60]
0057d218  be c4 c1 e1                                      strh ip, [r1, #0x4e]
0057d21c  05 30 da e5                                      ldrb r3, [sl, #5]
0057d220  60 31 cd e5                                      strb r3, [sp, #0x160]
0057d224  04 30 da e5                                      ldrb r3, [sl, #4]
0057d228  61 31 cd e5                                      strb r3, [sp, #0x161]
0057d22c  b0 e0 de e1                                      ldrh lr, [lr]
0057d230  b0 26 c1 e1                                      strh r2, [r1, #0x60]
0057d234  bc e4 c1 e1                                      strh lr, [r1, #0x4c]
0057d238  09 30 da e5                                      ldrb r3, [sl, #9]
0057d23c  60 31 cd e5                                      strb r3, [sp, #0x160]
0057d240  08 30 da e5                                      ldrb r3, [sl, #8]
0057d244  61 31 cd e5                                      strb r3, [sp, #0x161]
0057d248  b0 00 d0 e1                                      ldrh r0, [r0]
0057d24c  b0 26 c1 e1                                      strh r2, [r1, #0x60]
0057d250  38 20 9d e5                                      ldr r2, [sp, #0x38]
0057d254  b0 05 c1 e1                                      strh r0, [r1, #0x50]
0057d258  0b 30 da e5                                      ldrb r3, [sl, #0xb]
0057d25c  60 31 cd e5                                      strb r3, [sp, #0x160]
0057d260  0a 30 da e5                                      ldrb r3, [sl, #0xa]
0057d264  61 31 cd e5                                      strb r3, [sp, #0x161]
0057d268  b0 20 d2 e1                                      ldrh r2, [r2]
0057d26c  b2 25 c1 e1                                      strh r2, [r1, #0x52]
0057d270  20 10 9d e5                                      ldr r1, [sp, #0x20]
0057d274  05 00 a0 e1                                      mov r0, r5
0057d278  0c 20 a0 e3                                      mov r2, #0xc
0057d27c  f0 de 04 eb                                      bl #0x6b4e44
0057d280  08 30 94 e5                                      ldr r3, [r4, #8]
0057d284  04 10 93 e5                                      ldr r1, [r3, #4]
0057d288  10 c0 d1 e5                                      ldrb ip, [r1, #0x10]
0057d28c  00 00 5c e3                                      cmp ip, #0
0057d290  22 00 00 0a                                      beq #0x57d320
0057d294  18 00 91 e5                                      ldr r0, [r1, #0x18]
0057d298  00 b0 a0 e3                                      mov fp, #0
0057d29c  0c e0 a0 e3                                      mov lr, #0xc
0057d2a0  9e 0b 0a e0                                      mul sl, lr, fp
0057d2a4  0a 20 80 e0                                      add r2, r0, sl
0057d2a8  04 e0 d2 e5                                      ldrb lr, [r2, #4]
0057d2ac  00 00 5e e3                                      cmp lr, #0
0057d2b0  00 80 a0 13                                      movne r8, #0
0057d2b4  15 00 00 0a                                      beq #0x57d310
0057d2b8  08 c0 92 e5                                      ldr ip, [r2, #8]
0057d2bc  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
0057d2c0  1e 20 a0 e3                                      mov r2, #0x1e
0057d2c4  97 c8 2c e0                                      mla ip, r7, r8, ip
0057d2c8  05 00 a0 e1                                      mov r0, r5
0057d2cc  0c 10 61 e0                                      rsb r1, r1, ip
0057d2d0  41 11 a0 e1                                      asr r1, r1, #2
0057d2d4  96 01 01 e0                                      mul r1, r6, r1
0057d2d8  01 80 88 e2                                      add r8, r8, #1
0057d2dc  01 31 83 e0                                      add r3, r3, r1, lsl #2
0057d2e0  08 10 93 e5                                      ldr r1, [r3, #8]
0057d2e4  78 80 ef e6                                      uxtb r8, r8
0057d2e8  04 10 81 e2                                      add r1, r1, #4
0057d2ec  d4 de 04 eb                                      bl #0x6b4e44
0057d2f0  08 30 94 e5                                      ldr r3, [r4, #8]
0057d2f4  04 10 93 e5                                      ldr r1, [r3, #4]
0057d2f8  18 00 91 e5                                      ldr r0, [r1, #0x18]
0057d2fc  0a 20 80 e0                                      add r2, r0, sl
0057d300  04 c0 d2 e5                                      ldrb ip, [r2, #4]
0057d304  08 00 5c e1                                      cmp ip, r8
0057d308  ea ff ff 8a                                      bhi #0x57d2b8
0057d30c  10 c0 d1 e5                                      ldrb ip, [r1, #0x10]
0057d310  01 b0 8b e2                                      add fp, fp, #1
0057d314  7b b0 ef e6                                      uxtb fp, fp
0057d318  0b 00 5c e1                                      cmp ip, fp
0057d31c  de ff ff 8a                                      bhi #0x57d29c
0057d320  bc a0 d4 e1                                      ldrh sl, [r4, #0xc]
0057d324  be 30 d4 e1                                      ldrh r3, [r4, #0xe]
0057d328  0a 00 53 e1                                      cmp r3, sl
0057d32c  39 00 00 9a                                      bls #0x57d418
0057d330  44 50 8d e5                                      str r5, [sp, #0x44]
0057d334  48 60 8d e5                                      str r6, [sp, #0x48]
0057d338  28 80 9d e5                                      ldr r8, [sp, #0x28]
0057d33c  54 50 9d e5                                      ldr r5, [sp, #0x54]
0057d340  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
0057d344  59 0f 8d e2                                      add r0, sp, #0x164
0057d348  5a bf 8d e2                                      add fp, sp, #0x168
0057d34c  18 00 8d e5                                      str r0, [sp, #0x18]
0057d350  1c 40 8d e5                                      str r4, [sp, #0x1c]
0057d354  08 30 99 e5                                      ldr r3, [sb, #8]
0057d358  70 40 99 e5                                      ldr r4, [sb, #0x70]
0057d35c  05 10 a0 e1                                      mov r1, r5
0057d360  08 20 a0 e1                                      mov r2, r8
0057d364  94 3a 24 e0                                      mla r4, r4, sl, r3
0057d368  01 a0 8a e2                                      add sl, sl, #1
0057d36c  04 00 a0 e1                                      mov r0, r4
0057d370  da ee ff eb                                      bl #0x578ee0
0057d374  08 30 a0 e1                                      mov r3, r8
0057d378  00 c0 99 e5                                      ldr ip, [sb]
0057d37c  05 20 a0 e1                                      mov r2, r5
0057d380  09 00 a0 e1                                      mov r0, sb
0057d384  2c 10 84 e2                                      add r1, r4, #0x2c
0057d388  0f e0 a0 e1                                      mov lr, pc
0057d38c  40 f0 9c e5                                      ldr pc, [ip, #0x40]
0057d390  0b 10 a0 e1                                      mov r1, fp
0057d394  04 20 a0 e3                                      mov r2, #4
0057d398  06 00 a0 e1                                      mov r0, r6
0057d39c  a8 de 04 eb                                      bl #0x6b4e44
0057d3a0  18 10 9d e5                                      ldr r1, [sp, #0x18]
0057d3a4  04 20 a0 e3                                      mov r2, #4
0057d3a8  06 00 a0 e1                                      mov r0, r6
0057d3ac  a4 de 04 eb                                      bl #0x6b4e44
0057d3b0  b4 22 d4 e1                                      ldrh r2, [r4, #0x24]
0057d3b4  b6 12 d4 e1                                      ldrh r1, [r4, #0x26]
0057d3b8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0057d3bc  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0057d3c0  01 10 62 e0                                      rsb r1, r2, r1
0057d3c4  68 21 9d e5                                      ldr r2, [sp, #0x168]
0057d3c8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0057d3cc  71 10 ff e6                                      uxth r1, r1
0057d3d0  91 20 22 e0                                      mla r2, r1, r0, r2
0057d3d4  0c 30 9e e7                                      ldr r3, [lr, ip]
0057d3d8  08 10 9d e5                                      ldr r1, [sp, #8]
0057d3dc  68 21 8d e5                                      str r2, [sp, #0x168]
0057d3e0  10 20 94 e5                                      ldr r2, [r4, #0x10]
0057d3e4  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
0057d3e8  14 10 94 e5                                      ldr r1, [r4, #0x14]
0057d3ec  64 01 9d e5                                      ldr r0, [sp, #0x164]
0057d3f0  7a a0 ff e6                                      uxth sl, sl
0057d3f4  01 20 62 e0                                      rsb r2, r2, r1
0057d3f8  93 02 22 e0                                      mla r2, r3, r2, r0
0057d3fc  64 21 8d e5                                      str r2, [sp, #0x164]
0057d400  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0057d404  be 30 d2 e1                                      ldrh r3, [r2, #0xe]
0057d408  0a 00 53 e1                                      cmp r3, sl
0057d40c  d0 ff ff 8a                                      bhi #0x57d354
0057d410  44 50 9d e5                                      ldr r5, [sp, #0x44]
0057d414  48 60 9d e5                                      ldr r6, [sp, #0x48]
0057d418  20 40 99 e5                                      ldr r4, [sb, #0x20]
0057d41c  24 30 99 e5                                      ldr r3, [sb, #0x24]
0057d420  2c a0 9d e5                                      ldr sl, [sp, #0x2c]
0057d424  24 c0 9d e5                                      ldr ip, [sp, #0x24]
0057d428  03 30 64 e0                                      rsb r3, r4, r3
0057d42c  43 31 a0 e1                                      asr r3, r3, #2
0057d430  01 a0 8a e2                                      add sl, sl, #1
0057d434  83 20 83 e0                                      add r2, r3, r3, lsl #1
0057d438  14 c0 8c e2                                      add ip, ip, #0x14
0057d43c  02 22 82 e0                                      add r2, r2, r2, lsl #4
0057d440  2c a0 8d e5                                      str sl, [sp, #0x2c]
0057d444  02 24 82 e0                                      add r2, r2, r2, lsl #8
0057d448  24 c0 8d e5                                      str ip, [sp, #0x24]
0057d44c  02 28 82 e0                                      add r2, r2, r2, lsl #16
0057d450  02 31 83 e0                                      add r3, r3, r2, lsl #2
0057d454  03 00 5a e1                                      cmp sl, r3
0057d458  04 00 00 2a                                      bhs #0x57d470
0057d45c  3c e0 9d e5                                      ldr lr, [sp, #0x3c]
0057d460  40 00 9d e5                                      ldr r0, [sp, #0x40]
0057d464  30 10 9d e5                                      ldr r1, [sp, #0x30]
0057d468  90 1e 28 e0                                      mla r8, r0, lr, r1
0057d46c  0d ff ff ea                                      b #0x57d0a8
0057d470  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0057d474  00 00 52 e3                                      cmp r2, #0
0057d478  9b 00 00 1a                                      bne #0x57d6ec
0057d47c  bc 13 9f e5                                      ldr r1, [pc, #0x3bc]
0057d480  71 4f 8d e2                                      add r4, sp, #0x1c4
0057d484  61 2f 8d e2                                      add r2, sp, #0x184
0057d488  01 10 8f e0                                      add r1, pc, r1
0057d48c  04 00 a0 e1                                      mov r0, r4
0057d490  e9 a2 f6 eb                                      bl #0x32603c
0057d494  05 00 a0 e1                                      mov r0, r5
0057d498  fb dd 04 eb                                      bl #0x6b4c8c
0057d49c  00 60 a0 e1                                      mov r6, r0
0057d4a0  05 00 a0 e1                                      mov r0, r5
0057d4a4  fa dd 04 eb                                      bl #0x6b4c94
0057d4a8  04 10 a0 e1                                      mov r1, r4
0057d4ac  00 30 a0 e1                                      mov r3, r0
0057d4b0  06 20 a0 e1                                      mov r2, r6
0057d4b4  58 00 9d e5                                      ldr r0, [sp, #0x58]
0057d4b8  e2 df 04 eb                                      bl #0x6b5448
0057d4bc  d8 01 9d e5                                      ldr r0, [sp, #0x1d8]
0057d4c0  04 00 50 e1                                      cmp r0, r4
0057d4c4  02 00 00 0a                                      beq #0x57d4d4
0057d4c8  00 00 50 e3                                      cmp r0, #0
0057d4cc  00 00 00 0a                                      beq #0x57d4d4
0057d4d0  de 4b f6 eb                                      bl #0x310450
0057d4d4  68 13 9f e5                                      ldr r1, [pc, #0x368]
0057d4d8  6b 4f 8d e2                                      add r4, sp, #0x1ac
0057d4dc  06 2d 8d e2                                      add r2, sp, #0x180
0057d4e0  01 10 8f e0                                      add r1, pc, r1
0057d4e4  04 00 a0 e1                                      mov r0, r4
0057d4e8  d3 a2 f6 eb                                      bl #0x32603c
0057d4ec  54 00 9d e5                                      ldr r0, [sp, #0x54]
0057d4f0  e5 dd 04 eb                                      bl #0x6b4c8c
0057d4f4  00 50 a0 e1                                      mov r5, r0
0057d4f8  54 00 9d e5                                      ldr r0, [sp, #0x54]
0057d4fc  e4 dd 04 eb                                      bl #0x6b4c94
0057d500  04 10 a0 e1                                      mov r1, r4
0057d504  00 30 a0 e1                                      mov r3, r0
0057d508  05 20 a0 e1                                      mov r2, r5
0057d50c  58 00 9d e5                                      ldr r0, [sp, #0x58]
0057d510  cc df 04 eb                                      bl #0x6b5448
0057d514  c0 01 9d e5                                      ldr r0, [sp, #0x1c0]
0057d518  04 00 50 e1                                      cmp r0, r4
0057d51c  02 00 00 0a                                      beq #0x57d52c
0057d520  00 00 50 e3                                      cmp r0, #0
0057d524  00 00 00 0a                                      beq #0x57d52c
0057d528  c8 4b f6 eb                                      bl #0x310450
0057d52c  14 13 9f e5                                      ldr r1, [pc, #0x314]
0057d530  65 4f 8d e2                                      add r4, sp, #0x194
0057d534  5f 2f 8d e2                                      add r2, sp, #0x17c
0057d538  01 10 8f e0                                      add r1, pc, r1
0057d53c  04 00 a0 e1                                      mov r0, r4
0057d540  bd a2 f6 eb                                      bl #0x32603c
0057d544  50 00 9d e5                                      ldr r0, [sp, #0x50]
0057d548  cf dd 04 eb                                      bl #0x6b4c8c
0057d54c  00 50 a0 e1                                      mov r5, r0
0057d550  50 00 9d e5                                      ldr r0, [sp, #0x50]
0057d554  ce dd 04 eb                                      bl #0x6b4c94
0057d558  04 10 a0 e1                                      mov r1, r4
0057d55c  00 30 a0 e1                                      mov r3, r0
0057d560  05 20 a0 e1                                      mov r2, r5
0057d564  58 00 9d e5                                      ldr r0, [sp, #0x58]
0057d568  b6 df 04 eb                                      bl #0x6b5448
0057d56c  a8 01 9d e5                                      ldr r0, [sp, #0x1a8]
0057d570  04 00 50 e1                                      cmp r0, r4
0057d574  02 00 00 0a                                      beq #0x57d584
0057d578  00 00 50 e3                                      cmp r0, #0
0057d57c  00 00 00 0a                                      beq #0x57d584
0057d580  b2 4b f6 eb                                      bl #0x310450
0057d584  c0 52 9f e5                                      ldr r5, [pc, #0x2c0]
0057d588  10 a0 9d e5                                      ldr sl, [sp, #0x10]
0057d58c  dc 00 9d e5                                      ldr r0, [sp, #0xdc]
0057d590  05 30 9a e7                                      ldr r3, [sl, r5]
0057d594  00 00 50 e3                                      cmp r0, #0
0057d598  08 30 83 e2                                      add r3, r3, #8
0057d59c  d0 30 8d e5                                      str r3, [sp, #0xd0]
0057d5a0  00 00 00 0a                                      beq #0x57d5a8
0057d5a4  a9 4b f6 eb                                      bl #0x310450
0057d5a8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0057d5ac  9c 42 9f e5                                      ldr r4, [pc, #0x29c]
0057d5b0  f4 00 9d e5                                      ldr r0, [sp, #0xf4]
0057d5b4  05 30 9c e7                                      ldr r3, [ip, r5]
0057d5b8  04 20 9c e7                                      ldr r2, [ip, r4]
0057d5bc  00 00 50 e3                                      cmp r0, #0
0057d5c0  08 30 83 e2                                      add r3, r3, #8
0057d5c4  08 20 82 e2                                      add r2, r2, #8
0057d5c8  d0 20 8d e5                                      str r2, [sp, #0xd0]
0057d5cc  e8 30 8d e5                                      str r3, [sp, #0xe8]
0057d5d0  00 00 00 0a                                      beq #0x57d5d8
0057d5d4  9d 4b f6 eb                                      bl #0x310450
0057d5d8  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0057d5dc  0c 01 9d e5                                      ldr r0, [sp, #0x10c]
0057d5e0  04 20 9e e7                                      ldr r2, [lr, r4]
0057d5e4  05 30 9e e7                                      ldr r3, [lr, r5]
0057d5e8  00 00 50 e3                                      cmp r0, #0
0057d5ec  08 20 82 e2                                      add r2, r2, #8
0057d5f0  08 30 83 e2                                      add r3, r3, #8
0057d5f4  e8 20 8d e5                                      str r2, [sp, #0xe8]
0057d5f8  00 31 8d e5                                      str r3, [sp, #0x100]
0057d5fc  00 00 00 0a                                      beq #0x57d604
0057d600  92 4b f6 eb                                      bl #0x310450
0057d604  10 00 9d e5                                      ldr r0, [sp, #0x10]
0057d608  05 30 90 e7                                      ldr r3, [r0, r5]
0057d60c  04 20 90 e7                                      ldr r2, [r0, r4]
0057d610  24 01 9d e5                                      ldr r0, [sp, #0x124]
0057d614  08 30 83 e2                                      add r3, r3, #8
0057d618  08 20 82 e2                                      add r2, r2, #8
0057d61c  00 00 50 e3                                      cmp r0, #0
0057d620  00 21 8d e5                                      str r2, [sp, #0x100]
0057d624  18 31 8d e5                                      str r3, [sp, #0x118]
0057d628  00 00 00 0a                                      beq #0x57d630
0057d62c  87 4b f6 eb                                      bl #0x310450
0057d630  10 10 9d e5                                      ldr r1, [sp, #0x10]
0057d634  54 31 9d e5                                      ldr r3, [sp, #0x154]
0057d638  04 20 91 e7                                      ldr r2, [r1, r4]
0057d63c  00 00 53 e3                                      cmp r3, #0
0057d640  08 20 82 e2                                      add r2, r2, #8
0057d644  18 21 8d e5                                      str r2, [sp, #0x118]
0057d648  05 00 00 0a                                      beq #0x57d664
0057d64c  5c 21 9d e5                                      ldr r2, [sp, #0x15c]
0057d650  03 10 a0 e1                                      mov r1, r3
0057d654  57 0f 8d e2                                      add r0, sp, #0x15c
0057d658  02 30 63 e0                                      rsb r3, r3, r2
0057d65c  c3 20 a0 e1                                      asr r2, r3, #1
0057d660  14 f4 ff eb                                      bl #0x57a6b8
0057d664  58 00 9d e5                                      ldr r0, [sp, #0x58]
0057d668  f2 de 04 eb                                      bl #0x6b5238
0057d66c  68 20 9d e5                                      ldr r2, [sp, #0x68]
0057d670  10 a0 9d e5                                      ldr sl, [sp, #0x10]
0057d674  02 30 9a e7                                      ldr r3, [sl, r2]
0057d678  24 22 9d e5                                      ldr r2, [sp, #0x224]
0057d67c  00 30 93 e5                                      ldr r3, [r3]
0057d680  03 00 52 e1                                      cmp r2, r3
0057d684  68 00 00 1a                                      bne #0x57d82c
0057d688  8b df 8d e2                                      add sp, sp, #0x22c
0057d68c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0057d690  bc 11 9f e5                                      ldr r1, [pc, #0x1bc]
0057d694  7d 4f 8d e2                                      add r4, sp, #0x1f4
0057d698  63 2f 8d e2                                      add r2, sp, #0x18c
0057d69c  01 10 8f e0                                      add r1, pc, r1
0057d6a0  04 00 a0 e1                                      mov r0, r4
0057d6a4  64 a2 f6 eb                                      bl #0x32603c
0057d6a8  14 30 99 e5                                      ldr r3, [sb, #0x14]
0057d6ac  18 10 99 e5                                      ldr r1, [sb, #0x18]
0057d6b0  58 00 9d e5                                      ldr r0, [sp, #0x58]
0057d6b4  03 20 a0 e1                                      mov r2, r3
0057d6b8  01 30 63 e0                                      rsb r3, r3, r1
0057d6bc  07 30 c3 e3                                      bic r3, r3, #7
0057d6c0  04 10 a0 e1                                      mov r1, r4
0057d6c4  5f df 04 eb                                      bl #0x6b5448
0057d6c8  08 02 9d e5                                      ldr r0, [sp, #0x208]
0057d6cc  04 00 50 e1                                      cmp r0, r4
0057d6d0  02 00 00 0a                                      beq #0x57d6e0
0057d6d4  00 00 50 e3                                      cmp r0, #0
0057d6d8  00 00 00 0a                                      beq #0x57d6e0
0057d6dc  5b 4b f6 eb                                      bl #0x310450
0057d6e0  18 20 99 e5                                      ldr r2, [sb, #0x18]
0057d6e4  14 30 99 e5                                      ldr r3, [sb, #0x14]
0057d6e8  2c fe ff ea                                      b #0x57cfa0
0057d6ec  64 11 9f e5                                      ldr r1, [pc, #0x164]
0057d6f0  77 4f 8d e2                                      add r4, sp, #0x1dc
0057d6f4  62 2f 8d e2                                      add r2, sp, #0x188
0057d6f8  01 10 8f e0                                      add r1, pc, r1
0057d6fc  04 00 a0 e1                                      mov r0, r4
0057d700  4d a2 f6 eb                                      bl #0x32603c
0057d704  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0057d708  5f dd 04 eb                                      bl #0x6b4c8c
0057d70c  00 60 a0 e1                                      mov r6, r0
0057d710  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0057d714  5e dd 04 eb                                      bl #0x6b4c94
0057d718  04 10 a0 e1                                      mov r1, r4
0057d71c  00 30 a0 e1                                      mov r3, r0
0057d720  06 20 a0 e1                                      mov r2, r6
0057d724  58 00 9d e5                                      ldr r0, [sp, #0x58]
0057d728  46 df 04 eb                                      bl #0x6b5448
0057d72c  f0 01 9d e5                                      ldr r0, [sp, #0x1f0]
0057d730  04 00 50 e1                                      cmp r0, r4
0057d734  50 ff ff 0a                                      beq #0x57d47c
0057d738  00 00 50 e3                                      cmp r0, #0
0057d73c  4e ff ff 0a                                      beq #0x57d47c
0057d740  42 4b f6 eb                                      bl #0x310450
0057d744  4c ff ff ea                                      b #0x57d47c
0057d748  13 0e 8d e2                                      add r0, sp, #0x130
0057d74c  a8 10 8d e2                                      add r1, sp, #0xa8
0057d750  ca ed ff eb                                      bl #0x578e80
0057d754  c2 50 dd e5                                      ldrb r5, [sp, #0xc2]
0057d758  c1 e0 dd e5                                      ldrb lr, [sp, #0xc1]
0057d75c  c0 c0 dd e5                                      ldrb ip, [sp, #0xc0]
0057d760  c3 60 dd e5                                      ldrb r6, [sp, #0xc3]
0057d764  c5 20 dd e5                                      ldrb r2, [sp, #0xc5]
0057d768  61 51 cd e5                                      strb r5, [sp, #0x161]
0057d76c  62 e1 cd e5                                      strb lr, [sp, #0x162]
0057d770  60 61 cd e5                                      strb r6, [sp, #0x160]
0057d774  63 c1 cd e5                                      strb ip, [sp, #0x163]
0057d778  60 c1 9d e5                                      ldr ip, [sp, #0x160]
0057d77c  62 21 cd e5                                      strb r2, [sp, #0x162]
0057d780  30 21 9d e5                                      ldr r2, [sp, #0x130]
0057d784  c7 00 dd e5                                      ldrb r0, [sp, #0xc7]
0057d788  c6 10 dd e5                                      ldrb r1, [sp, #0xc6]
0057d78c  a8 20 8d e5                                      str r2, [sp, #0xa8]
0057d790  34 21 9d e5                                      ldr r2, [sp, #0x134]
0057d794  c4 30 dd e5                                      ldrb r3, [sp, #0xc4]
0057d798  60 01 cd e5                                      strb r0, [sp, #0x160]
0057d79c  ac 20 8d e5                                      str r2, [sp, #0xac]
0057d7a0  38 21 9d e5                                      ldr r2, [sp, #0x138]
0057d7a4  61 11 cd e5                                      strb r1, [sp, #0x161]
0057d7a8  63 31 cd e5                                      strb r3, [sp, #0x163]
0057d7ac  b0 20 8d e5                                      str r2, [sp, #0xb0]
0057d7b0  3c 21 9d e5                                      ldr r2, [sp, #0x13c]
0057d7b4  cb 30 dd e5                                      ldrb r3, [sp, #0xcb]
0057d7b8  c0 c0 8d e5                                      str ip, [sp, #0xc0]
0057d7bc  b4 20 8d e5                                      str r2, [sp, #0xb4]
0057d7c0  40 21 9d e5                                      ldr r2, [sp, #0x140]
0057d7c4  b8 20 8d e5                                      str r2, [sp, #0xb8]
0057d7c8  44 21 9d e5                                      ldr r2, [sp, #0x144]
0057d7cc  bc 20 8d e5                                      str r2, [sp, #0xbc]
0057d7d0  60 21 9d e5                                      ldr r2, [sp, #0x160]
0057d7d4  c4 20 8d e5                                      str r2, [sp, #0xc4]
0057d7d8  60 31 cd e5                                      strb r3, [sp, #0x160]
0057d7dc  c8 30 dd e5                                      ldrb r3, [sp, #0xc8]
0057d7e0  ca 50 dd e5                                      ldrb r5, [sp, #0xca]
0057d7e4  c9 e0 dd e5                                      ldrb lr, [sp, #0xc9]
0057d7e8  63 31 cd e5                                      strb r3, [sp, #0x163]
0057d7ec  61 51 cd e5                                      strb r5, [sp, #0x161]
0057d7f0  62 e1 cd e5                                      strb lr, [sp, #0x162]
0057d7f4  cf c0 dd e5                                      ldrb ip, [sp, #0xcf]
0057d7f8  ce 00 dd e5                                      ldrb r0, [sp, #0xce]
0057d7fc  cd 10 dd e5                                      ldrb r1, [sp, #0xcd]
0057d800  cc 20 dd e5                                      ldrb r2, [sp, #0xcc]
0057d804  60 31 9d e5                                      ldr r3, [sp, #0x160]
0057d808  60 c1 cd e5                                      strb ip, [sp, #0x160]
0057d80c  61 01 cd e5                                      strb r0, [sp, #0x161]
0057d810  62 11 cd e5                                      strb r1, [sp, #0x162]
0057d814  63 21 cd e5                                      strb r2, [sp, #0x163]
0057d818  c8 30 8d e5                                      str r3, [sp, #0xc8]
0057d81c  60 31 9d e5                                      ldr r3, [sp, #0x160]
0057d820  28 40 8d e5                                      str r4, [sp, #0x28]
0057d824  cc 30 8d e5                                      str r3, [sp, #0xcc]
0057d828  88 fd ff ea                                      b #0x57ce50
0057d82c  b7 42 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0057d830  38 7d 41 00 ac 40 00 00 94 23 36 00 9c 42 00 00  .byte 0x38, 0x7d, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00, 0x94, 0x23, 0x36, 0x00, 0x9c, 0x42, 0x00, 0x00
0057d840  b0 1d 36 00 68 1d 36 00 28 1d 36 00 d4 2b 00 00  .byte 0xb0, 0x1d, 0x36, 0x00, 0x68, 0x1d, 0x36, 0x00, 0x28, 0x1d, 0x36, 0x00, 0xd4, 0x2b, 0x00, 0x00
0057d850  44 2b 00 00 64 1b 36 00 20 1b 36 00              .byte 0x44, 0x2b, 0x00, 0x00, 0x64, 0x1b, 0x36, 0x00, 0x20, 0x1b, 0x36, 0x00

; FUNCTION 0x0057d98c, declared_size=520, range_size=520, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh10addSegmentEtjs
; demangled: glitch::scene::CBatchMesh::addSegment(unsigned short, unsigned int, short)
; decoder-mode: arm
0057d98c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057d990  00 40 a0 e1                                      mov r4, r0
0057d994  24 e0 94 e5                                      ldr lr, [r4, #0x24]
0057d998  20 00 90 e5                                      ldr r0, [r0, #0x20]
0057d99c  14 c0 a0 e3                                      mov ip, #0x14
0057d9a0  01 a0 a0 e1                                      mov sl, r1
0057d9a4  0e e0 60 e0                                      rsb lr, r0, lr
0057d9a8  4e e1 a0 e1                                      asr lr, lr, #2
0057d9ac  4c d0 4d e2                                      sub sp, sp, #0x4c
0057d9b0  8e 60 8e e0                                      add r6, lr, lr, lsl #1
0057d9b4  0c 30 8d e5                                      str r3, [sp, #0xc]
0057d9b8  06 62 86 e0                                      add r6, r6, r6, lsl #4
0057d9bc  02 90 a0 e1                                      mov sb, r2
0057d9c0  06 64 86 e0                                      add r6, r6, r6, lsl #8
0057d9c4  c0 51 9f e5                                      ldr r5, [pc, #0x1c0]
0057d9c8  06 68 86 e0                                      add r6, r6, r6, lsl #16
0057d9cc  06 b1 8e e0                                      add fp, lr, r6, lsl #2
0057d9d0  01 b0 4b e2                                      sub fp, fp, #1
0057d9d4  9c 0b 21 e0                                      mla r1, ip, fp, r0
0057d9d8  05 50 8f e0                                      add r5, pc, r5
0057d9dc  be 20 d1 e1                                      ldrh r2, [r1, #0xe]
0057d9e0  bc 30 d1 e1                                      ldrh r3, [r1, #0xc]
0057d9e4  03 30 52 e0                                      subs r3, r2, r3
0057d9e8  03 70 a0 01                                      moveq r7, r3
0057d9ec  03 80 a0 01                                      moveq r8, r3
0057d9f0  0c 00 00 0a                                      beq #0x57da28
0057d9f4  14 e0 94 e5                                      ldr lr, [r4, #0x14]
0057d9f8  01 60 42 e2                                      sub r6, r2, #1
0057d9fc  70 80 94 e5                                      ldr r8, [r4, #0x70]
0057da00  86 71 9e e7                                      ldr r7, [lr, r6, lsl #3]
0057da04  86 e1 8e e0                                      add lr, lr, r6, lsl #3
0057da08  04 e0 9e e5                                      ldr lr, [lr, #4]
0057da0c  9c 07 20 e0                                      mla r0, ip, r7, r0
0057da10  08 60 94 e5                                      ldr r6, [r4, #8]
0057da14  bc 00 d0 e1                                      ldrh r0, [r0, #0xc]
0057da18  0e e0 80 e0                                      add lr, r0, lr
0057da1c  98 6e 28 e0                                      mla r8, r8, lr, r6
0057da20  14 70 98 e5                                      ldr r7, [r8, #0x14]
0057da24  b6 82 d8 e1                                      ldrh r8, [r8, #0x26]
0057da28  01 20 82 e2                                      add r2, r2, #1
0057da2c  be 20 c1 e1                                      strh r2, [r1, #0xe]
0057da30  08 20 94 e5                                      ldr r2, [r4, #8]
0057da34  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0057da38  70 10 94 e5                                      ldr r1, [r4, #0x70]
0057da3c  40 30 8d e5                                      str r3, [sp, #0x40]
0057da40  00 00 62 e0                                      rsb r0, r2, r0
0057da44  3c b0 8d e5                                      str fp, [sp, #0x3c]
0057da48  7f 44 f6 eb                                      bl #0x30ec4c
0057da4c  18 10 94 e5                                      ldr r1, [r4, #0x18]
0057da50  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0057da54  00 60 a0 e1                                      mov r6, r0
0057da58  14 c0 84 e2                                      add ip, r4, #0x14
0057da5c  03 00 51 e1                                      cmp r1, r3
0057da60  3f 00 00 0a                                      beq #0x57db64
0057da64  00 b0 81 e5                                      str fp, [r1]
0057da68  40 30 9d e5                                      ldr r3, [sp, #0x40]
0057da6c  04 30 81 e5                                      str r3, [r1, #4]
0057da70  18 30 94 e5                                      ldr r3, [r4, #0x18]
0057da74  08 30 83 e2                                      add r3, r3, #8
0057da78  18 30 84 e5                                      str r3, [r4, #0x18]
0057da7c  08 00 94 e5                                      ldr r0, [r4, #8]
0057da80  0c b0 94 e5                                      ldr fp, [r4, #0xc]
0057da84  70 10 94 e5                                      ldr r1, [r4, #0x70]
0057da88  0a a0 88 e0                                      add sl, r8, sl
0057da8c  0b b0 60 e0                                      rsb fp, r0, fp
0057da90  01 00 a0 e3                                      mov r0, #1
0057da94  30 00 cd e5                                      strb r0, [sp, #0x30]
0057da98  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0057da9c  00 30 a0 e3                                      mov r3, #0
0057daa0  48 20 8d e2                                      add r2, sp, #0x48
0057daa4  7a a0 ff e6                                      uxth sl, sl
0057daa8  09 90 87 e0                                      add sb, r7, sb
0057daac  18 30 8d e5                                      str r3, [sp, #0x18]
0057dab0  1c 30 8d e5                                      str r3, [sp, #0x1c]
0057dab4  2c 30 8d e5                                      str r3, [sp, #0x2c]
0057dab8  31 30 cd e5                                      strb r3, [sp, #0x31]
0057dabc  10 c0 8d e5                                      str ip, [sp, #0x10]
0057dac0  b2 03 cd e1                                      strh r0, [sp, #0x32]
0057dac4  20 70 8d e5                                      str r7, [sp, #0x20]
0057dac8  28 90 8d e5                                      str sb, [sp, #0x28]
0057dacc  b4 83 cd e1                                      strh r8, [sp, #0x34]
0057dad0  b8 a3 cd e1                                      strh sl, [sp, #0x38]
0057dad4  14 60 8d e5                                      str r6, [sp, #0x14]
0057dad8  24 90 8d e5                                      str sb, [sp, #0x24]
0057dadc  b6 a3 cd e1                                      strh sl, [sp, #0x36]
0057dae0  01 10 8b e0                                      add r1, fp, r1
0057dae4  01 30 62 e5                                      strb r3, [r2, #-1]!
0057dae8  08 00 84 e2                                      add r0, r4, #8
0057daec  96 ff ff eb                                      bl #0x57d94c
0057daf0  08 00 94 e5                                      ldr r0, [r4, #8]
0057daf4  70 20 94 e5                                      ldr r2, [r4, #0x70]
0057daf8  10 10 8d e2                                      add r1, sp, #0x10
0057dafc  0b 00 80 e0                                      add r0, r0, fp
0057db00  58 43 f6 eb                                      bl #0x30e868
0057db04  31 30 dd e5                                      ldrb r3, [sp, #0x31]
0057db08  00 00 53 e3                                      cmp r3, #0
0057db0c  0f 00 00 0a                                      beq #0x57db50
0057db10  78 10 9f e5                                      ldr r1, [pc, #0x78]
0057db14  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0057db18  01 30 95 e7                                      ldr r3, [r5, r1]
0057db1c  00 30 93 e5                                      ldr r3, [r3]
0057db20  00 00 53 e3                                      cmp r3, #0
0057db24  0c 00 00 0a                                      beq #0x57db5c
0057db28  03 00 52 e1                                      cmp r2, r3
0057db2c  0a 00 00 3a                                      blo #0x57db5c
0057db30  03 10 a0 e1                                      mov r1, r3
0057db34  00 30 93 e5                                      ldr r3, [r3]
0057db38  00 00 53 e3                                      cmp r3, #0
0057db3c  01 00 00 0a                                      beq #0x57db48
0057db40  03 00 52 e1                                      cmp r2, r3
0057db44  f9 ff ff 2a                                      bhs #0x57db30
0057db48  00 30 82 e5                                      str r3, [r2]
0057db4c  00 20 81 e5                                      str r2, [r1]
0057db50  06 00 a0 e1                                      mov r0, r6
0057db54  4c d0 8d e2                                      add sp, sp, #0x4c
0057db58  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0057db5c  01 10 95 e7                                      ldr r1, [r5, r1]
0057db60  f8 ff ff ea                                      b #0x57db48
0057db64  01 e0 a0 e3                                      mov lr, #1
0057db68  0c 00 a0 e1                                      mov r0, ip
0057db6c  3c 20 8d e2                                      add r2, sp, #0x3c
0057db70  44 30 8d e2                                      add r3, sp, #0x44
0057db74  08 c0 8d e5                                      str ip, [sp, #8]
0057db78  04 e0 8d e5                                      str lr, [sp, #4]
0057db7c  00 e0 8d e5                                      str lr, [sp]
0057db80  10 f0 ff eb                                      bl #0x579bc8
0057db84  08 c0 9d e5                                      ldr ip, [sp, #8]
0057db88  bb ff ff ea                                      b #0x57da7c
; mapping-symbol data/literal pool
0057db8c  b8 70 41 00 60 20 00 00                          .byte 0xb8, 0x70, 0x41, 0x00, 0x60, 0x20, 0x00, 0x00

; FUNCTION 0x0057db94, declared_size=2448, range_size=2448, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZN6glitch5scene10CBatchMesh4loadEPNS_2io9IReadFileEPNS_5video12IVideoDriverEPNS2_11IFileSystemEPNS_7collada14CRootSceneNodeEPNSA_15CColladaFactoryE
; demangled: glitch::scene::CBatchMesh::load(glitch::io::IReadFile*, glitch::video::IVideoDriver*, glitch::io::IFileSystem*, glitch::collada::CRootSceneNode*, glitch::collada::CColladaFactory*)
; decoder-mode: arm
0057db94  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0057db98  4b df 4d e2                                      sub sp, sp, #0x12c
0057db9c  40 20 8d e5                                      str r2, [sp, #0x40]
0057dba0  a8 20 8d e2                                      add r2, sp, #0xa8
0057dba4  1c 20 8d e5                                      str r2, [sp, #0x1c]
0057dba8  00 20 a0 e3                                      mov r2, #0
0057dbac  02 30 a0 e1                                      mov r3, r2
0057dbb0  14 00 8d e5                                      str r0, [sp, #0x14]
0057dbb4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0057dbb8  54 41 9d e5                                      ldr r4, [sp, #0x154]
0057dbbc  f8 e8 ff eb                                      bl #0x577fa4
0057dbc0  38 19 9f e5                                      ldr r1, [pc, #0x938]
0057dbc4  38 39 9f e5                                      ldr r3, [pc, #0x938]
0057dbc8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0057dbcc  01 10 8f e0                                      add r1, pc, r1
0057dbd0  2c 30 8d e5                                      str r3, [sp, #0x2c]
0057dbd4  92 ea ff eb                                      bl #0x578624
0057dbd8  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
0057dbdc  00 60 50 e2                                      subs r6, r0, #0
0057dbe0  24 60 8d 05                                      streq r6, [sp, #0x24]
0057dbe4  05 50 8f e0                                      add r5, pc, r5
0057dbe8  2c 50 8d e5                                      str r5, [sp, #0x2c]
0057dbec  38 60 8d 05                                      streq r6, [sp, #0x38]
0057dbf0  0b 00 00 0a                                      beq #0x57dc24
0057dbf4  00 00 54 e3                                      cmp r4, #0
0057dbf8  34 02 00 0a                                      beq #0x57e4d0
0057dbfc  00 10 a0 e3                                      mov r1, #0
0057dc00  08 00 a0 e3                                      mov r0, #8
0057dc04  68 d9 fe eb                                      bl #0x5341ac
0057dc08  06 10 a0 e1                                      mov r1, r6
0057dc0c  04 20 a0 e1                                      mov r2, r4
0057dc10  00 50 a0 e1                                      mov r5, r0
0057dc14  ea 45 02 eb                                      bl #0x60f3c4
0057dc18  01 c0 a0 e3                                      mov ip, #1
0057dc1c  24 50 8d e5                                      str r5, [sp, #0x24]
0057dc20  38 c0 8d e5                                      str ip, [sp, #0x38]
0057dc24  dc 18 9f e5                                      ldr r1, [pc, #0x8dc]
0057dc28  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0057dc2c  7c 40 8d e2                                      add r4, sp, #0x7c
0057dc30  01 10 8f e0                                      add r1, pc, r1
0057dc34  7a ea ff eb                                      bl #0x578624
0057dc38  bf 24 a0 e3                                      mov r2, #0xbf000000
0057dc3c  02 25 82 e2                                      add r2, r2, #0x800000
0057dc40  fe 35 a0 e3                                      mov r3, #0x3f800000
0057dc44  88 20 8d e5                                      str r2, [sp, #0x88]
0057dc48  80 20 8d e5                                      str r2, [sp, #0x80]
0057dc4c  84 20 8d e5                                      str r2, [sp, #0x84]
0057dc50  94 30 8d e5                                      str r3, [sp, #0x94]
0057dc54  8c 30 8d e5                                      str r3, [sp, #0x8c]
0057dc58  90 30 8d e5                                      str r3, [sp, #0x90]
0057dc5c  00 30 90 e5                                      ldr r3, [r0]
0057dc60  04 10 a0 e1                                      mov r1, r4
0057dc64  2c 20 a0 e3                                      mov r2, #0x2c
0057dc68  0f e0 a0 e1                                      mov lr, pc
0057dc6c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057dc70  7f 30 dd e5                                      ldrb r3, [sp, #0x7f]
0057dc74  01 00 53 e3                                      cmp r3, #1
0057dc78  00 30 a0 13                                      movne r3, #0
0057dc7c  01 30 a0 03                                      moveq r3, #1
0057dc80  00 00 53 e3                                      cmp r3, #0
0057dc84  18 30 8d e5                                      str r3, [sp, #0x18]
0057dc88  3a 00 00 0a                                      beq #0x57dd78
0057dc8c  04 10 84 e2                                      add r1, r4, #4
0057dc90  c8 00 8d e2                                      add r0, sp, #0xc8
0057dc94  79 ec ff eb                                      bl #0x578e80
0057dc98  1c 30 84 e2                                      add r3, r4, #0x1c
0057dc9c  01 e0 d3 e5                                      ldrb lr, [r3, #1]
0057dca0  02 50 d3 e5                                      ldrb r5, [r3, #2]
0057dca4  03 60 d3 e5                                      ldrb r6, [r3, #3]
0057dca8  98 c0 dd e5                                      ldrb ip, [sp, #0x98]
0057dcac  20 30 84 e2                                      add r3, r4, #0x20
0057dcb0  02 10 d3 e5                                      ldrb r1, [r3, #2]
0057dcb4  01 20 d3 e5                                      ldrb r2, [r3, #1]
0057dcb8  03 00 d3 e5                                      ldrb r0, [r3, #3]
0057dcbc  51 50 cd e5                                      strb r5, [sp, #0x51]
0057dcc0  52 e0 cd e5                                      strb lr, [sp, #0x52]
0057dcc4  50 60 cd e5                                      strb r6, [sp, #0x50]
0057dcc8  53 c0 cd e5                                      strb ip, [sp, #0x53]
0057dccc  9c 30 dd e5                                      ldrb r3, [sp, #0x9c]
0057dcd0  50 c0 9d e5                                      ldr ip, [sp, #0x50]
0057dcd4  51 10 cd e5                                      strb r1, [sp, #0x51]
0057dcd8  c8 10 9d e5                                      ldr r1, [sp, #0xc8]
0057dcdc  50 00 cd e5                                      strb r0, [sp, #0x50]
0057dce0  53 30 cd e5                                      strb r3, [sp, #0x53]
0057dce4  52 20 cd e5                                      strb r2, [sp, #0x52]
0057dce8  24 30 84 e2                                      add r3, r4, #0x24
0057dcec  03 20 d3 e5                                      ldrb r2, [r3, #3]
0057dcf0  80 10 8d e5                                      str r1, [sp, #0x80]
0057dcf4  cc 10 9d e5                                      ldr r1, [sp, #0xcc]
0057dcf8  28 40 84 e2                                      add r4, r4, #0x28
0057dcfc  98 c0 8d e5                                      str ip, [sp, #0x98]
0057dd00  84 10 8d e5                                      str r1, [sp, #0x84]
0057dd04  d0 10 9d e5                                      ldr r1, [sp, #0xd0]
0057dd08  88 10 8d e5                                      str r1, [sp, #0x88]
0057dd0c  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
0057dd10  8c 10 8d e5                                      str r1, [sp, #0x8c]
0057dd14  d8 10 9d e5                                      ldr r1, [sp, #0xd8]
0057dd18  90 10 8d e5                                      str r1, [sp, #0x90]
0057dd1c  dc 10 9d e5                                      ldr r1, [sp, #0xdc]
0057dd20  94 10 8d e5                                      str r1, [sp, #0x94]
0057dd24  50 10 9d e5                                      ldr r1, [sp, #0x50]
0057dd28  9c 10 8d e5                                      str r1, [sp, #0x9c]
0057dd2c  50 20 cd e5                                      strb r2, [sp, #0x50]
0057dd30  01 e0 d3 e5                                      ldrb lr, [r3, #1]
0057dd34  02 50 d3 e5                                      ldrb r5, [r3, #2]
0057dd38  a0 c0 dd e5                                      ldrb ip, [sp, #0xa0]
0057dd3c  01 20 d4 e5                                      ldrb r2, [r4, #1]
0057dd40  03 00 d4 e5                                      ldrb r0, [r4, #3]
0057dd44  02 10 d4 e5                                      ldrb r1, [r4, #2]
0057dd48  a4 30 dd e5                                      ldrb r3, [sp, #0xa4]
0057dd4c  51 50 cd e5                                      strb r5, [sp, #0x51]
0057dd50  52 e0 cd e5                                      strb lr, [sp, #0x52]
0057dd54  53 c0 cd e5                                      strb ip, [sp, #0x53]
0057dd58  50 c0 9d e5                                      ldr ip, [sp, #0x50]
0057dd5c  50 00 cd e5                                      strb r0, [sp, #0x50]
0057dd60  51 10 cd e5                                      strb r1, [sp, #0x51]
0057dd64  52 20 cd e5                                      strb r2, [sp, #0x52]
0057dd68  53 30 cd e5                                      strb r3, [sp, #0x53]
0057dd6c  50 30 9d e5                                      ldr r3, [sp, #0x50]
0057dd70  a0 c0 8d e5                                      str ip, [sp, #0xa0]
0057dd74  a4 30 8d e5                                      str r3, [sp, #0xa4]
0057dd78  90 10 9d e5                                      ldr r1, [sp, #0x90]
0057dd7c  14 50 9d e5                                      ldr r5, [sp, #0x14]
0057dd80  88 c0 9d e5                                      ldr ip, [sp, #0x88]
0057dd84  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
0057dd88  84 e0 9d e5                                      ldr lr, [sp, #0x84]
0057dd8c  94 20 9d e5                                      ldr r2, [sp, #0x94]
0057dd90  98 30 9d e5                                      ldr r3, [sp, #0x98]
0057dd94  80 40 9d e5                                      ldr r4, [sp, #0x80]
0057dd98  48 10 85 e5                                      str r1, [r5, #0x48]
0057dd9c  68 17 9f e5                                      ldr r1, [pc, #0x768]
0057dda0  00 70 a0 e3                                      mov r7, #0
0057dda4  40 c0 85 e5                                      str ip, [r5, #0x40]
0057dda8  38 40 85 e5                                      str r4, [r5, #0x38]
0057ddac  3c e0 85 e5                                      str lr, [r5, #0x3c]
0057ddb0  44 00 85 e5                                      str r0, [r5, #0x44]
0057ddb4  4c 20 85 e5                                      str r2, [r5, #0x4c]
0057ddb8  68 30 85 e5                                      str r3, [r5, #0x68]
0057ddbc  74 70 c5 e5                                      strb r7, [r5, #0x74]
0057ddc0  01 10 8f e0                                      add r1, pc, r1
0057ddc4  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0057ddc8  15 ea ff eb                                      bl #0x578624
0057ddcc  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0057ddd0  00 50 a0 e1                                      mov r5, r0
0057ddd4  07 00 5c e1                                      cmp ip, r7
0057ddd8  3b 00 00 0a                                      beq #0x57decc
0057dddc  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0057dde0  f4 40 8d e2                                      add r4, sp, #0xf4
0057dde4  49 0f 8d e2                                      add r0, sp, #0x124
0057dde8  14 e0 8e e2                                      add lr, lr, #0x14
0057ddec  30 e0 8d e5                                      str lr, [sp, #0x30]
0057ddf0  50 80 8d e2                                      add r8, sp, #0x50
0057ddf4  04 60 84 e2                                      add r6, r4, #4
0057ddf8  08 00 8d e5                                      str r0, [sp, #8]
0057ddfc  01 a0 a0 e3                                      mov sl, #1
0057de00  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
0057de04  04 10 a0 e1                                      mov r1, r4
0057de08  08 20 a0 e3                                      mov r2, #8
0057de0c  03 00 57 e1                                      cmp r7, r3
0057de10  05 00 a0 e1                                      mov r0, r5
0057de14  3f 00 00 2a                                      bhs #0x57df18
0057de18  00 30 95 e5                                      ldr r3, [r5]
0057de1c  0f e0 a0 e1                                      mov lr, pc
0057de20  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057de24  00 c0 d4 e5                                      ldrb ip, [r4]
0057de28  03 b0 d4 e5                                      ldrb fp, [r4, #3]
0057de2c  02 90 d4 e5                                      ldrb sb, [r4, #2]
0057de30  01 e0 d4 e5                                      ldrb lr, [r4, #1]
0057de34  01 20 d6 e5                                      ldrb r2, [r6, #1]
0057de38  02 10 d6 e5                                      ldrb r1, [r6, #2]
0057de3c  00 30 d6 e5                                      ldrb r3, [r6]
0057de40  03 00 d6 e5                                      ldrb r0, [r6, #3]
0057de44  50 b0 cd e5                                      strb fp, [sp, #0x50]
0057de48  51 90 cd e5                                      strb sb, [sp, #0x51]
0057de4c  52 e0 cd e5                                      strb lr, [sp, #0x52]
0057de50  53 c0 cd e5                                      strb ip, [sp, #0x53]
0057de54  00 c0 98 e5                                      ldr ip, [r8]
0057de58  52 20 cd e5                                      strb r2, [sp, #0x52]
0057de5c  14 20 9d e5                                      ldr r2, [sp, #0x14]
0057de60  50 00 cd e5                                      strb r0, [sp, #0x50]
0057de64  51 10 cd e5                                      strb r1, [sp, #0x51]
0057de68  53 30 cd e5                                      strb r3, [sp, #0x53]
0057de6c  18 10 92 e5                                      ldr r1, [r2, #0x18]
0057de70  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
0057de74  00 30 98 e5                                      ldr r3, [r8]
0057de78  f4 c0 8d e5                                      str ip, [sp, #0xf4]
0057de7c  02 00 51 e1                                      cmp r1, r2
0057de80  f8 30 8d e5                                      str r3, [sp, #0xf8]
0057de84  08 00 00 0a                                      beq #0x57deac
0057de88  00 c0 81 e5                                      str ip, [r1]
0057de8c  f8 30 9d e5                                      ldr r3, [sp, #0xf8]
0057de90  01 70 87 e2                                      add r7, r7, #1
0057de94  04 30 81 e5                                      str r3, [r1, #4]
0057de98  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0057de9c  18 30 9c e5                                      ldr r3, [ip, #0x18]
0057dea0  08 30 83 e2                                      add r3, r3, #8
0057dea4  18 30 8c e5                                      str r3, [ip, #0x18]
0057dea8  d4 ff ff ea                                      b #0x57de00
0057deac  30 00 9d e5                                      ldr r0, [sp, #0x30]
0057deb0  04 20 a0 e1                                      mov r2, r4
0057deb4  08 30 9d e5                                      ldr r3, [sp, #8]
0057deb8  00 a0 8d e5                                      str sl, [sp]
0057debc  04 a0 8d e5                                      str sl, [sp, #4]
0057dec0  01 70 87 e2                                      add r7, r7, #1
0057dec4  3f ef ff eb                                      bl #0x579bc8
0057dec8  cc ff ff ea                                      b #0x57de00
0057decc  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0057ded0  18 30 9d e5                                      ldr r3, [sp, #0x18]
0057ded4  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
0057ded8  14 e0 8e e2                                      add lr, lr, #0x14
0057dedc  0e 00 a0 e1                                      mov r0, lr
0057dee0  01 2c 8d e2                                      add r2, sp, #0x100
0057dee4  30 e0 8d e5                                      str lr, [sp, #0x30]
0057dee8  00 31 8d e5                                      str r3, [sp, #0x100]
0057deec  04 31 8d e5                                      str r3, [sp, #0x104]
0057def0  9c ef ff eb                                      bl #0x579d68
0057def4  a0 20 9d e5                                      ldr r2, [sp, #0xa0]
0057def8  14 40 9d e5                                      ldr r4, [sp, #0x14]
0057defc  00 30 95 e5                                      ldr r3, [r5]
0057df00  05 00 a0 e1                                      mov r0, r5
0057df04  82 21 a0 e1                                      lsl r2, r2, #3
0057df08  14 10 94 e5                                      ldr r1, [r4, #0x14]
0057df0c  0f e0 a0 e1                                      mov lr, pc
0057df10  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057df14  a0 30 9d e5                                      ldr r3, [sp, #0xa0]
0057df18  14 50 9d e5                                      ldr r5, [sp, #0x14]
0057df1c  4a 2f 8d e2                                      add r2, sp, #0x128
0057df20  00 40 a0 e3                                      mov r4, #0
0057df24  70 10 95 e5                                      ldr r1, [r5, #0x70]
0057df28  08 00 85 e2                                      add r0, r5, #8
0057df2c  01 40 62 e5                                      strb r4, [r2, #-1]!
0057df30  93 01 01 e0                                      mul r1, r3, r1
0057df34  84 fe ff eb                                      bl #0x57d94c
0057df38  d0 15 9f e5                                      ldr r1, [pc, #0x5d0]
0057df3c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0057df40  28 40 8d e5                                      str r4, [sp, #0x28]
0057df44  01 10 8f e0                                      add r1, pc, r1
0057df48  b5 e9 ff eb                                      bl #0x578624
0057df4c  c0 15 9f e5                                      ldr r1, [pc, #0x5c0]
0057df50  f4 c0 8d e2                                      add ip, sp, #0xf4
0057df54  00 40 a0 e1                                      mov r4, r0
0057df58  01 10 8f e0                                      add r1, pc, r1
0057df5c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0057df60  20 c0 8d e5                                      str ip, [sp, #0x20]
0057df64  ae e9 ff eb                                      bl #0x578624
0057df68  a8 15 9f e5                                      ldr r1, [pc, #0x5a8]
0057df6c  34 00 8d e5                                      str r0, [sp, #0x34]
0057df70  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0057df74  01 10 8f e0                                      add r1, pc, r1
0057df78  a9 e9 ff eb                                      bl #0x578624
0057df7c  48 00 8d e5                                      str r0, [sp, #0x48]
0057df80  20 00 9d e5                                      ldr r0, [sp, #0x20]
0057df84  c5 6e 04 e3                                      movw r6, #0x4ec5
0057df88  28 b0 9d e5                                      ldr fp, [sp, #0x28]
0057df8c  ec 64 4c e3                                      movt r6, #0xc4ec
0057df90  20 e0 85 e2                                      add lr, r5, #0x20
0057df94  06 00 80 e2                                      add r0, r0, #6
0057df98  4c e0 8d e5                                      str lr, [sp, #0x4c]
0057df9c  44 00 8d e5                                      str r0, [sp, #0x44]
0057dfa0  06 80 a0 e1                                      mov r8, r6
0057dfa4  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
0057dfa8  28 00 9d e5                                      ldr r0, [sp, #0x28]
0057dfac  03 00 50 e1                                      cmp r0, r3
0057dfb0  3b 01 00 2a                                      bhs #0x57e4a4
0057dfb4  20 10 9d e5                                      ldr r1, [sp, #0x20]
0057dfb8  00 30 94 e5                                      ldr r3, [r4]
0057dfbc  04 00 a0 e1                                      mov r0, r4
0057dfc0  0c 20 a0 e3                                      mov r2, #0xc
0057dfc4  0f e0 a0 e1                                      mov lr, pc
0057dfc8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057dfcc  18 10 9d e5                                      ldr r1, [sp, #0x18]
0057dfd0  00 00 51 e3                                      cmp r1, #0
0057dfd4  19 00 00 0a                                      beq #0x57e040
0057dfd8  44 30 9d e5                                      ldr r3, [sp, #0x44]
0057dfdc  20 50 9d e5                                      ldr r5, [sp, #0x20]
0057dfe0  01 20 d3 e5                                      ldrb r2, [r3, #1]
0057dfe4  00 30 d3 e5                                      ldrb r3, [r3]
0057dfe8  05 e0 d5 e5                                      ldrb lr, [r5, #5]
0057dfec  04 c0 d5 e5                                      ldrb ip, [r5, #4]
0057dff0  09 00 d5 e5                                      ldrb r0, [r5, #9]
0057dff4  08 10 d5 e5                                      ldrb r1, [r5, #8]
0057dff8  50 20 cd e5                                      strb r2, [sp, #0x50]
0057dffc  51 30 cd e5                                      strb r3, [sp, #0x51]
0057e000  0b 20 d5 e5                                      ldrb r2, [r5, #0xb]
0057e004  0a 30 d5 e5                                      ldrb r3, [r5, #0xa]
0057e008  b0 55 dd e1                                      ldrh r5, [sp, #0x50]
0057e00c  50 e0 cd e5                                      strb lr, [sp, #0x50]
0057e010  51 c0 cd e5                                      strb ip, [sp, #0x51]
0057e014  b0 c5 dd e1                                      ldrh ip, [sp, #0x50]
0057e018  50 00 cd e5                                      strb r0, [sp, #0x50]
0057e01c  51 10 cd e5                                      strb r1, [sp, #0x51]
0057e020  b0 e5 dd e1                                      ldrh lr, [sp, #0x50]
0057e024  50 20 cd e5                                      strb r2, [sp, #0x50]
0057e028  51 30 cd e5                                      strb r3, [sp, #0x51]
0057e02c  b0 05 dd e1                                      ldrh r0, [sp, #0x50]
0057e030  ba 5f cd e1                                      strh r5, [sp, #0xfa]
0057e034  b8 cf cd e1                                      strh ip, [sp, #0xf8]
0057e038  bc ef cd e1                                      strh lr, [sp, #0xfc]
0057e03c  be 0f cd e1                                      strh r0, [sp, #0xfe]
0057e040  e0 10 8d e2                                      add r1, sp, #0xe0
0057e044  01 00 a0 e1                                      mov r0, r1
0057e048  3c 10 8d e5                                      str r1, [sp, #0x3c]
0057e04c  3a eb ff eb                                      bl #0x578d3c
0057e050  14 50 9d e5                                      ldr r5, [sp, #0x14]
0057e054  01 30 a0 e3                                      mov r3, #1
0057e058  38 20 9d e5                                      ldr r2, [sp, #0x38]
0057e05c  74 30 c5 e5                                      strb r3, [r5, #0x74]
0057e060  ba cf dd e1                                      ldrh ip, [sp, #0xfa]
0057e064  00 00 52 e3                                      cmp r2, #0
0057e068  b0 cf cd e1                                      strh ip, [sp, #0xf0]
0057e06c  15 00 00 0a                                      beq #0x57e0c8
0057e070  50 e1 9d e5                                      ldr lr, [sp, #0x150]
0057e074  12 5e 8d e2                                      add r5, sp, #0x120
0057e078  40 20 9d e5                                      ldr r2, [sp, #0x40]
0057e07c  be 3f dd e1                                      ldrh r3, [sp, #0xfe]
0057e080  05 00 a0 e1                                      mov r0, r5
0057e084  24 10 9d e5                                      ldr r1, [sp, #0x24]
0057e088  00 e0 8d e5                                      str lr, [sp]
0057e08c  ac 7b 02 eb                                      bl #0x61cf44
0057e090  20 31 9d e5                                      ldr r3, [sp, #0x120]
0057e094  43 0f 8d e2                                      add r0, sp, #0x10c
0057e098  0c 31 8d e5                                      str r3, [sp, #0x10c]
0057e09c  00 00 53 e3                                      cmp r3, #0
0057e0a0  00 20 93 15                                      ldrne r2, [r3]
0057e0a4  01 20 82 12                                      addne r2, r2, #1
0057e0a8  00 20 83 15                                      strne r2, [r3]
0057e0ac  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
0057e0b0  0c 21 9d e5                                      ldr r2, [sp, #0x10c]
0057e0b4  0c 31 8d e5                                      str r3, [sp, #0x10c]
0057e0b8  e4 20 8d e5                                      str r2, [sp, #0xe4]
0057e0bc  c9 4a f6 eb                                      bl #0x310be8
0057e0c0  05 00 a0 e1                                      mov r0, r5
0057e0c4  c7 4a f6 eb                                      bl #0x310be8
0057e0c8  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
0057e0cc  47 5f 8d e2                                      add r5, sp, #0x11c
0057e0d0  05 00 a0 e1                                      mov r0, r5
0057e0d4  04 10 81 e2                                      add r1, r1, #4
0057e0d8  97 84 01 eb                                      bl #0x5df33c
0057e0dc  1c 31 9d e5                                      ldr r3, [sp, #0x11c]
0057e0e0  42 0f 8d e2                                      add r0, sp, #0x108
0057e0e4  00 00 53 e3                                      cmp r3, #0
0057e0e8  08 31 8d e5                                      str r3, [sp, #0x108]
0057e0ec  00 20 93 15                                      ldrne r2, [r3]
0057e0f0  01 20 82 12                                      addne r2, r2, #1
0057e0f4  00 20 83 15                                      strne r2, [r3]
0057e0f8  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
0057e0fc  08 21 9d e5                                      ldr r2, [sp, #0x108]
0057e100  08 31 8d e5                                      str r3, [sp, #0x108]
0057e104  e8 20 8d e5                                      str r2, [sp, #0xe8]
0057e108  57 f0 ff eb                                      bl #0x57a26c
0057e10c  05 00 a0 e1                                      mov r0, r5
0057e110  55 f0 ff eb                                      bl #0x57a26c
0057e114  e8 70 9d e5                                      ldr r7, [sp, #0xe8]
0057e118  04 30 97 e5                                      ldr r3, [r7, #4]
0057e11c  10 20 d3 e5                                      ldrb r2, [r3, #0x10]
0057e120  00 00 52 e3                                      cmp r2, #0
0057e124  00 00 a0 13                                      movne r0, #0
0057e128  18 30 93 15                                      ldrne r3, [r3, #0x18]
0057e12c  08 00 8d 15                                      strne r0, [sp, #8]
0057e130  54 00 00 0a                                      beq #0x57e288
0057e134  08 c0 9d e5                                      ldr ip, [sp, #8]
0057e138  0c 50 a0 e3                                      mov r5, #0xc
0057e13c  95 0c 05 e0                                      mul r5, r5, ip
0057e140  05 10 83 e0                                      add r1, r3, r5
0057e144  04 10 d1 e5                                      ldrb r1, [r1, #4]
0057e148  00 00 51 e3                                      cmp r1, #0
0057e14c  47 00 00 0a                                      beq #0x57e270
0057e150  46 1f 8d e2                                      add r1, sp, #0x118
0057e154  45 2f 8d e2                                      add r2, sp, #0x114
0057e158  49 af 8d e2                                      add sl, sp, #0x124
0057e15c  00 90 a0 e3                                      mov sb, #0
0057e160  0c 10 8d e5                                      str r1, [sp, #0xc]
0057e164  10 20 8d e5                                      str r2, [sp, #0x10]
0057e168  02 a0 8a e2                                      add sl, sl, #2
0057e16c  0b 10 a0 e1                                      mov r1, fp
0057e170  24 00 a0 e3                                      mov r0, #0x24
0057e174  18 b1 8d e5                                      str fp, [sp, #0x118]
0057e178  0b d8 fe eb                                      bl #0x5341ac
0057e17c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0057e180  00 60 a0 e1                                      mov r6, r0
0057e184  f3 89 00 eb                                      bl #0x5a0958
0057e188  00 00 56 e3                                      cmp r6, #0
0057e18c  14 61 8d e5                                      str r6, [sp, #0x114]
0057e190  00 30 96 15                                      ldrne r3, [r6]
0057e194  07 00 a0 e1                                      mov r0, r7
0057e198  09 20 a0 e1                                      mov r2, sb
0057e19c  01 30 83 12                                      addne r3, r3, #1
0057e1a0  00 30 86 15                                      strne r3, [r6]
0057e1a4  08 10 9d e5                                      ldr r1, [sp, #8]
0057e1a8  10 30 9d e5                                      ldr r3, [sp, #0x10]
0057e1ac  98 85 01 eb                                      bl #0x5df814
0057e1b0  14 01 9d e5                                      ldr r0, [sp, #0x114]
0057e1b4  00 00 50 e3                                      cmp r0, #0
0057e1b8  05 00 00 0a                                      beq #0x57e1d4
0057e1bc  00 30 90 e5                                      ldr r3, [r0]
0057e1c0  01 30 43 e2                                      sub r3, r3, #1
0057e1c4  00 00 53 e3                                      cmp r3, #0
0057e1c8  00 30 80 e5                                      str r3, [r0]
0057e1cc  00 00 00 1a                                      bne #0x57e1d4
0057e1d0  36 40 f6 eb                                      bl #0x30e2b0
0057e1d4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0057e1d8  6c 82 f7 eb                                      bl #0x35eb90
0057e1dc  34 30 a0 e3                                      mov r3, #0x34
0057e1e0  93 09 07 e0                                      mul r7, r3, sb
0057e1e4  00 60 a0 e3                                      mov r6, #0
0057e1e8  00 30 94 e5                                      ldr r3, [r4]
0057e1ec  0a 10 a0 e1                                      mov r1, sl
0057e1f0  01 20 a0 e3                                      mov r2, #1
0057e1f4  04 00 a0 e1                                      mov r0, r4
0057e1f8  0f e0 a0 e1                                      mov lr, pc
0057e1fc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057e200  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
0057e204  26 11 dd e5                                      ldrb r1, [sp, #0x126]
0057e208  04 20 93 e5                                      ldr r2, [r3, #4]
0057e20c  18 00 92 e5                                      ldr r0, [r2, #0x18]
0057e210  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
0057e214  05 00 80 e0                                      add r0, r0, r5
0057e218  08 00 90 e5                                      ldr r0, [r0, #8]
0057e21c  07 00 80 e0                                      add r0, r0, r7
0057e220  00 20 62 e0                                      rsb r2, r2, r0
0057e224  42 21 a0 e1                                      asr r2, r2, #2
0057e228  98 02 02 e0                                      mul r2, r8, r2
0057e22c  02 31 83 e0                                      add r3, r3, r2, lsl #2
0057e230  08 30 93 e5                                      ldr r3, [r3, #8]
0057e234  06 30 83 e0                                      add r3, r3, r6
0057e238  01 60 86 e2                                      add r6, r6, #1
0057e23c  1e 00 56 e3                                      cmp r6, #0x1e
0057e240  04 10 c3 e5                                      strb r1, [r3, #4]
0057e244  e7 ff ff 1a                                      bne #0x57e1e8
0057e248  e8 70 9d e5                                      ldr r7, [sp, #0xe8]
0057e24c  01 90 89 e2                                      add sb, sb, #1
0057e250  79 90 ef e6                                      uxtb sb, sb
0057e254  04 20 97 e5                                      ldr r2, [r7, #4]
0057e258  18 30 92 e5                                      ldr r3, [r2, #0x18]
0057e25c  05 10 83 e0                                      add r1, r3, r5
0057e260  04 10 d1 e5                                      ldrb r1, [r1, #4]
0057e264  09 00 51 e1                                      cmp r1, sb
0057e268  bf ff ff 8a                                      bhi #0x57e16c
0057e26c  10 20 d2 e5                                      ldrb r2, [r2, #0x10]
0057e270  08 50 9d e5                                      ldr r5, [sp, #8]
0057e274  01 10 85 e2                                      add r1, r5, #1
0057e278  71 10 ef e6                                      uxtb r1, r1
0057e27c  01 00 52 e1                                      cmp r2, r1
0057e280  08 10 8d e5                                      str r1, [sp, #8]
0057e284  aa ff ff 8a                                      bhi #0x57e134
0057e288  b8 3f dd e1                                      ldrh r3, [sp, #0xf8]
0057e28c  00 00 53 e3                                      cmp r3, #0
0057e290  5a 00 00 0a                                      beq #0x57e400
0057e294  50 70 8d e2                                      add r7, sp, #0x50
0057e298  00 e0 a0 e3                                      mov lr, #0
0057e29c  00 50 a0 e3                                      mov r5, #0
0057e2a0  00 30 a0 e3                                      mov r3, #0
0057e2a4  18 20 9d e5                                      ldr r2, [sp, #0x18]
0057e2a8  07 00 a0 e1                                      mov r0, r7
0057e2ac  34 10 9d e5                                      ldr r1, [sp, #0x34]
0057e2b0  01 60 a0 e3                                      mov r6, #1
0057e2b4  50 e0 8d e5                                      str lr, [sp, #0x50]
0057e2b8  54 e0 8d e5                                      str lr, [sp, #0x54]
0057e2bc  58 e0 8d e5                                      str lr, [sp, #0x58]
0057e2c0  5c e0 8d e5                                      str lr, [sp, #0x5c]
0057e2c4  60 e0 8d e5                                      str lr, [sp, #0x60]
0057e2c8  64 e0 8d e5                                      str lr, [sp, #0x64]
0057e2cc  68 e0 8d e5                                      str lr, [sp, #0x68]
0057e2d0  6c e0 8d e5                                      str lr, [sp, #0x6c]
0057e2d4  71 30 cd e5                                      strb r3, [sp, #0x71]
0057e2d8  b2 e7 cd e1                                      strh lr, [sp, #0x72]
0057e2dc  b4 57 cd e1                                      strh r5, [sp, #0x74]
0057e2e0  b6 57 cd e1                                      strh r5, [sp, #0x76]
0057e2e4  b8 57 cd e1                                      strh r5, [sp, #0x78]
0057e2e8  70 60 cd e5                                      strb r6, [sp, #0x70]
0057e2ec  39 f4 ff eb                                      bl #0x57b3d8
0057e2f0  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0057e2f4  54 30 9d e5                                      ldr r3, [sp, #0x54]
0057e2f8  30 e0 9d e5                                      ldr lr, [sp, #0x30]
0057e2fc  08 20 9c e5                                      ldr r2, [ip, #8]
0057e300  70 50 9c e5                                      ldr r5, [ip, #0x70]
0057e304  00 00 a0 e3                                      mov r0, #0
0057e308  07 10 a0 e1                                      mov r1, r7
0057e30c  95 23 25 e0                                      mla r5, r5, r3, r2
0057e310  58 00 8d e5                                      str r0, [sp, #0x58]
0057e314  05 00 a0 e1                                      mov r0, r5
0057e318  50 e0 8d e5                                      str lr, [sp, #0x50]
0057e31c  bc 3e cd e1                                      strh r3, [sp, #0xec]
0057e320  d5 f4 ff eb                                      bl #0x57b67c
0057e324  14 10 9d e5                                      ldr r1, [sp, #0x14]
0057e328  34 20 9d e5                                      ldr r2, [sp, #0x34]
0057e32c  18 30 9d e5                                      ldr r3, [sp, #0x18]
0057e330  00 c0 91 e5                                      ldr ip, [r1]
0057e334  01 00 a0 e1                                      mov r0, r1
0057e338  2c 10 85 e2                                      add r1, r5, #0x2c
0057e33c  0f e0 a0 e1                                      mov lr, pc
0057e340  44 f0 9c e5                                      ldr pc, [ip, #0x44]
0057e344  b8 3f dd e1                                      ldrh r3, [sp, #0xf8]
0057e348  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0057e34c  06 00 53 e1                                      cmp r3, r6
0057e350  70 20 9c e5                                      ldr r2, [ip, #0x70]
0057e354  18 00 00 9a                                      bls #0x57e3bc
0057e358  34 90 9d e5                                      ldr sb, [sp, #0x34]
0057e35c  18 a0 9d e5                                      ldr sl, [sp, #0x18]
0057e360  02 50 85 e0                                      add r5, r5, r2
0057e364  0c 70 a0 e1                                      mov r7, ip
0057e368  05 00 a0 e1                                      mov r0, r5
0057e36c  09 10 a0 e1                                      mov r1, sb
0057e370  0a 20 a0 e1                                      mov r2, sl
0057e374  17 f4 ff eb                                      bl #0x57b3d8
0057e378  30 e0 9d e5                                      ldr lr, [sp, #0x30]
0057e37c  00 00 a0 e3                                      mov r0, #0
0057e380  08 00 85 e5                                      str r0, [r5, #8]
0057e384  00 e0 85 e5                                      str lr, [r5]
0057e388  2c 10 85 e2                                      add r1, r5, #0x2c
0057e38c  09 20 a0 e1                                      mov r2, sb
0057e390  0a 30 a0 e1                                      mov r3, sl
0057e394  00 c0 97 e5                                      ldr ip, [r7]
0057e398  07 00 a0 e1                                      mov r0, r7
0057e39c  0f e0 a0 e1                                      mov lr, pc
0057e3a0  44 f0 9c e5                                      ldr pc, [ip, #0x44]
0057e3a4  b8 3f dd e1                                      ldrh r3, [sp, #0xf8]
0057e3a8  70 20 97 e5                                      ldr r2, [r7, #0x70]
0057e3ac  01 60 86 e2                                      add r6, r6, #1
0057e3b0  06 00 53 e1                                      cmp r3, r6
0057e3b4  02 50 85 e0                                      add r5, r5, r2
0057e3b8  ea ff ff 8a                                      bhi #0x57e368
0057e3bc  71 20 dd e5                                      ldrb r2, [sp, #0x71]
0057e3c0  00 00 52 e3                                      cmp r2, #0
0057e3c4  0d 00 00 0a                                      beq #0x57e400
0057e3c8  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
0057e3cc  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
0057e3d0  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0057e3d4  01 30 95 e7                                      ldr r3, [r5, r1]
0057e3d8  00 30 93 e5                                      ldr r3, [r3]
0057e3dc  00 00 53 e3                                      cmp r3, #0
0057e3e0  01 00 00 0a                                      beq #0x57e3ec
0057e3e4  03 00 52 e1                                      cmp r2, r3
0057e3e8  23 00 00 2a                                      bhs #0x57e47c
0057e3ec  00 30 82 e5                                      str r3, [r2]
0057e3f0  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
0057e3f4  b8 3f dd e1                                      ldrh r3, [sp, #0xf8]
0057e3f8  01 10 9c e7                                      ldr r1, [ip, r1]
0057e3fc  00 20 81 e5                                      str r2, [r1]
0057e400  bc ce dd e1                                      ldrh ip, [sp, #0xec]
0057e404  18 20 9d e5                                      ldr r2, [sp, #0x18]
0057e408  11 0e 8d e2                                      add r0, sp, #0x110
0057e40c  0c c0 83 e0                                      add ip, r3, ip
0057e410  48 10 9d e5                                      ldr r1, [sp, #0x48]
0057e414  40 30 9d e5                                      ldr r3, [sp, #0x40]
0057e418  be ce cd e1                                      strh ip, [sp, #0xee]
0057e41c  fe e5 04 eb                                      bl #0x6b7c1c
0057e420  10 31 9d e5                                      ldr r3, [sp, #0x110]
0057e424  00 00 53 e3                                      cmp r3, #0
0057e428  04 20 93 15                                      ldrne r2, [r3, #4]
0057e42c  01 20 82 12                                      addne r2, r2, #1
0057e430  04 20 83 15                                      strne r2, [r3, #4]
0057e434  e0 00 9d e5                                      ldr r0, [sp, #0xe0]
0057e438  e0 30 8d e5                                      str r3, [sp, #0xe0]
0057e43c  00 00 50 e3                                      cmp r0, #0
0057e440  00 00 00 0a                                      beq #0x57e448
0057e444  4e 7c f6 eb                                      bl #0x31d584
0057e448  10 01 9d e5                                      ldr r0, [sp, #0x110]
0057e44c  00 00 50 e3                                      cmp r0, #0
0057e450  00 00 00 0a                                      beq #0x57e458
0057e454  4a 7c f6 eb                                      bl #0x31d584
0057e458  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0057e45c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0057e460  b8 f4 ff eb                                      bl #0x57b748
0057e464  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
0057e468  be ef ff eb                                      bl #0x57a368
0057e46c  28 e0 9d e5                                      ldr lr, [sp, #0x28]
0057e470  01 e0 8e e2                                      add lr, lr, #1
0057e474  28 e0 8d e5                                      str lr, [sp, #0x28]
0057e478  c9 fe ff ea                                      b #0x57dfa4
0057e47c  03 10 a0 e1                                      mov r1, r3
0057e480  00 30 93 e5                                      ldr r3, [r3]
0057e484  00 00 53 e3                                      cmp r3, #0
0057e488  01 00 00 0a                                      beq #0x57e494
0057e48c  03 00 52 e1                                      cmp r2, r3
0057e490  f9 ff ff 2a                                      bhs #0x57e47c
0057e494  00 30 82 e5                                      str r3, [r2]
0057e498  00 20 81 e5                                      str r2, [r1]
0057e49c  b8 3f dd e1                                      ldrh r3, [sp, #0xf8]
0057e4a0  d6 ff ff ea                                      b #0x57e400
0057e4a4  24 10 9d e5                                      ldr r1, [sp, #0x24]
0057e4a8  00 00 51 e3                                      cmp r1, #0
0057e4ac  03 00 00 0a                                      beq #0x57e4c0
0057e4b0  01 00 a0 e1                                      mov r0, r1
0057e4b4  ee 6b 02 eb                                      bl #0x619474
0057e4b8  24 00 9d e5                                      ldr r0, [sp, #0x24]
0057e4bc  7b 3f f6 eb                                      bl #0x30e2b0
0057e4c0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0057e4c4  ef e3 ff eb                                      bl #0x577488
0057e4c8  4b df 8d e2                                      add sp, sp, #0x12c
0057e4cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0057e4d0  04 10 a0 e1                                      mov r1, r4
0057e4d4  08 00 a0 e3                                      mov r0, #8
0057e4d8  33 d7 fe eb                                      bl #0x5341ac
0057e4dc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0057e4e0  2c e0 9d e5                                      ldr lr, [sp, #0x2c]
0057e4e4  06 10 a0 e1                                      mov r1, r6
0057e4e8  24 00 8d e5                                      str r0, [sp, #0x24]
0057e4ec  03 20 9e e7                                      ldr r2, [lr, r3]
0057e4f0  b3 43 02 eb                                      bl #0x60f3c4
0057e4f4  01 00 a0 e3                                      mov r0, #1
0057e4f8  38 00 8d e5                                      str r0, [sp, #0x38]
0057e4fc  c8 fd ff ea                                      b #0x57dc24
; mapping-symbol data/literal pool
0057e500  a4 16 36 00 ac 6e 41 00 c0 15 36 00 40 14 36 00  .byte 0xa4, 0x16, 0x36, 0x00, 0xac, 0x6e, 0x41, 0x00, 0xc0, 0x15, 0x36, 0x00, 0x40, 0x14, 0x36, 0x00
0057e510  f4 12 36 00 f0 12 36 00 ec 12 36 00 60 20 00 00  .byte 0xf4, 0x12, 0x36, 0x00, 0xf0, 0x12, 0x36, 0x00, 0xec, 0x12, 0x36, 0x00, 0x60, 0x20, 0x00, 0x00
0057e520  10 47 00 00                                      .byte 0x10, 0x47, 0x00, 0x00

; FUNCTION 0x0057e90c, declared_size=356, range_size=356, mode=arm
; class-group: glitch::scene::CBatchMesh
; alias: _ZNK6glitch5scene10CBatchMesh16getSegmentCenterEPv
; demangled: glitch::scene::CBatchMesh::getSegmentCenter(void*) const
; decoder-mode: arm
0057e90c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0057e910  14 60 91 e5                                      ldr r6, [r1, #0x14]
0057e914  20 c0 91 e5                                      ldr ip, [r1, #0x20]
0057e918  14 e0 a0 e3                                      mov lr, #0x14
0057e91c  82 41 96 e7                                      ldr r4, [r6, r2, lsl #3]
0057e920  82 81 86 e0                                      add r8, r6, r2, lsl #3
0057e924  04 30 98 e5                                      ldr r3, [r8, #4]
0057e928  9e c4 24 e0                                      mla r4, lr, r4, ip
0057e92c  08 70 91 e5                                      ldr r7, [r1, #8]
0057e930  bc 40 d4 e1                                      ldrh r4, [r4, #0xc]
0057e934  70 10 91 e5                                      ldr r1, [r1, #0x70]
0057e938  18 d0 4d e2                                      sub sp, sp, #0x18
0057e93c  03 30 84 e0                                      add r3, r4, r3
0057e940  91 73 23 e0                                      mla r3, r1, r3, r7
0057e944  00 40 a0 e1                                      mov r4, r0
0057e948  0c 50 93 e5                                      ldr r5, [r3, #0xc]
0057e94c  00 00 55 e3                                      cmp r5, #0
0057e950  16 00 00 0a                                      beq #0x57e9b0
0057e954  10 10 95 e5                                      ldr r1, [r5, #0x10]
0057e958  04 00 95 e5                                      ldr r0, [r5, #4]
0057e95c  90 40 f6 eb                                      bl #0x30eba4
0057e960  3f 14 a0 e3                                      mov r1, #0x3f000000
0057e964  00 41 f6 eb                                      bl #0x30ed6c
0057e968  14 10 95 e5                                      ldr r1, [r5, #0x14]
0057e96c  00 70 a0 e1                                      mov r7, r0
0057e970  08 00 95 e5                                      ldr r0, [r5, #8]
0057e974  8a 40 f6 eb                                      bl #0x30eba4
0057e978  3f 14 a0 e3                                      mov r1, #0x3f000000
0057e97c  fa 40 f6 eb                                      bl #0x30ed6c
0057e980  0c 10 95 e5                                      ldr r1, [r5, #0xc]
0057e984  00 60 a0 e1                                      mov r6, r0
0057e988  00 00 95 e5                                      ldr r0, [r5]
0057e98c  84 40 f6 eb                                      bl #0x30eba4
0057e990  3f 14 a0 e3                                      mov r1, #0x3f000000
0057e994  f4 40 f6 eb                                      bl #0x30ed6c
0057e998  04 70 84 e5                                      str r7, [r4, #4]
0057e99c  00 00 84 e5                                      str r0, [r4]
0057e9a0  08 60 84 e5                                      str r6, [r4, #8]
0057e9a4  04 00 a0 e1                                      mov r0, r4
0057e9a8  18 d0 8d e2                                      add sp, sp, #0x18
0057e9ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0057e9b0  bf 54 a0 e3                                      mov r5, #0xbf000000
0057e9b4  02 55 85 e2                                      add r5, r5, #0x800000
0057e9b8  fe 05 a0 e3                                      mov r0, #0x3f800000
0057e9bc  08 50 8d e5                                      str r5, [sp, #8]
0057e9c0  14 00 8d e5                                      str r0, [sp, #0x14]
0057e9c4  00 50 8d e5                                      str r5, [sp]
0057e9c8  04 50 8d e5                                      str r5, [sp, #4]
0057e9cc  0c 00 8d e5                                      str r0, [sp, #0xc]
0057e9d0  10 00 8d e5                                      str r0, [sp, #0x10]
0057e9d4  82 01 96 e7                                      ldr r0, [r6, r2, lsl #3]
0057e9d8  04 20 98 e5                                      ldr r2, [r8, #4]
0057e9dc  0d 30 a0 e1                                      mov r3, sp
0057e9e0  9e c0 20 e0                                      mla r0, lr, r0, ip
0057e9e4  bc 00 d0 e1                                      ldrh r0, [r0, #0xc]
0057e9e8  02 20 80 e0                                      add r2, r0, r2
0057e9ec  91 02 01 e0                                      mul r1, r1, r2
0057e9f0  01 20 97 e7                                      ldr r2, [r7, r1]
0057e9f4  01 70 87 e0                                      add r7, r7, r1
0057e9f8  04 50 97 e5                                      ldr r5, [r7, #4]
0057e9fc  00 00 92 e5                                      ldr r0, [r2]
0057ea00  b4 12 d7 e1                                      ldrh r1, [r7, #0x24]
0057ea04  b6 22 d7 e1                                      ldrh r2, [r7, #0x26]
0057ea08  85 01 90 e7                                      ldr r0, [r0, r5, lsl #3]
0057ea0c  9e 00 0e e0                                      mul lr, lr, r0
0057ea10  0e 00 9c e7                                      ldr r0, [ip, lr]
0057ea14  14 00 90 e5                                      ldr r0, [r0, #0x14]
0057ea18  28 89 00 eb                                      bl #0x5a0ec0
0057ea1c  10 10 9d e5                                      ldr r1, [sp, #0x10]
0057ea20  04 00 9d e5                                      ldr r0, [sp, #4]
0057ea24  5e 40 f6 eb                                      bl #0x30eba4
0057ea28  3f 14 a0 e3                                      mov r1, #0x3f000000
0057ea2c  ce 40 f6 eb                                      bl #0x30ed6c
0057ea30  14 10 9d e5                                      ldr r1, [sp, #0x14]
0057ea34  00 60 a0 e1                                      mov r6, r0
0057ea38  08 00 9d e5                                      ldr r0, [sp, #8]
0057ea3c  58 40 f6 eb                                      bl #0x30eba4
0057ea40  3f 14 a0 e3                                      mov r1, #0x3f000000
0057ea44  c8 40 f6 eb                                      bl #0x30ed6c
0057ea48  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0057ea4c  00 50 a0 e1                                      mov r5, r0
0057ea50  00 00 9d e5                                      ldr r0, [sp]
0057ea54  52 40 f6 eb                                      bl #0x30eba4
0057ea58  3f 14 a0 e3                                      mov r1, #0x3f000000
0057ea5c  c2 40 f6 eb                                      bl #0x30ed6c
0057ea60  04 60 84 e5                                      str r6, [r4, #4]
0057ea64  00 00 84 e5                                      str r0, [r4]
0057ea68  08 50 84 e5                                      str r5, [r4, #8]
0057ea6c  cc ff ff ea                                      b #0x57e9a4
