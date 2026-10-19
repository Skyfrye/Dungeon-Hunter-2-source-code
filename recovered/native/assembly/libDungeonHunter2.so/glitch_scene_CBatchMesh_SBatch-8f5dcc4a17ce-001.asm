; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00578d1c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::scene::CBatchMesh::SBatch
; alias: _ZN6glitch5scene10CBatchMesh6SBatchC2Ev
; demangled: glitch::scene::CBatchMesh::SBatch::SBatch()
; decoder-mode: arm
00578d1c  00 20 a0 e3                                      mov r2, #0
00578d20  b0 21 c0 e1                                      strh r2, [r0, #0x10]
00578d24  00 20 80 e5                                      str r2, [r0]
00578d28  04 20 80 e5                                      str r2, [r0, #4]
00578d2c  08 20 80 e5                                      str r2, [r0, #8]
00578d30  bc 20 c0 e1                                      strh r2, [r0, #0xc]
00578d34  be 20 c0 e1                                      strh r2, [r0, #0xe]
00578d38  1e ff 2f e1                                      bx lr

; FUNCTION 0x00578d3c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::scene::CBatchMesh::SBatch
; alias: _ZN6glitch5scene10CBatchMesh6SBatchC1Ev
; demangled: glitch::scene::CBatchMesh::SBatch::SBatch()
; decoder-mode: arm
00578d3c  00 20 a0 e3                                      mov r2, #0
00578d40  b0 21 c0 e1                                      strh r2, [r0, #0x10]
00578d44  00 20 80 e5                                      str r2, [r0]
00578d48  04 20 80 e5                                      str r2, [r0, #4]
00578d4c  08 20 80 e5                                      str r2, [r0, #8]
00578d50  bc 20 c0 e1                                      strh r2, [r0, #0xc]
00578d54  be 20 c0 e1                                      strh r2, [r0, #0xe]
00578d58  1e ff 2f e1                                      bx lr

; FUNCTION 0x00578d5c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::scene::CBatchMesh::SBatch
; alias: _ZN6glitch5scene10CBatchMesh6SBatchC2Et
; demangled: glitch::scene::CBatchMesh::SBatch::SBatch(unsigned short)
; decoder-mode: arm
00578d5c  00 20 a0 e3                                      mov r2, #0
00578d60  b0 21 c0 e1                                      strh r2, [r0, #0x10]
00578d64  be 10 c0 e1                                      strh r1, [r0, #0xe]
00578d68  00 20 80 e5                                      str r2, [r0]
00578d6c  04 20 80 e5                                      str r2, [r0, #4]
00578d70  08 20 80 e5                                      str r2, [r0, #8]
00578d74  bc 10 c0 e1                                      strh r1, [r0, #0xc]
00578d78  1e ff 2f e1                                      bx lr

; FUNCTION 0x00578d7c, declared_size=32, range_size=32, mode=arm
; class-group: glitch::scene::CBatchMesh::SBatch
; alias: _ZN6glitch5scene10CBatchMesh6SBatchC1Et
; demangled: glitch::scene::CBatchMesh::SBatch::SBatch(unsigned short)
; decoder-mode: arm
00578d7c  00 20 a0 e3                                      mov r2, #0
00578d80  b0 21 c0 e1                                      strh r2, [r0, #0x10]
00578d84  be 10 c0 e1                                      strh r1, [r0, #0xe]
00578d88  00 20 80 e5                                      str r2, [r0]
00578d8c  04 20 80 e5                                      str r2, [r0, #4]
00578d90  08 20 80 e5                                      str r2, [r0, #8]
00578d94  bc 10 c0 e1                                      strh r1, [r0, #0xc]
00578d98  1e ff 2f e1                                      bx lr

; FUNCTION 0x0057a368, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::CBatchMesh::SBatch
; alias: _ZN6glitch5scene10CBatchMesh6SBatchD1Ev
; demangled: glitch::scene::CBatchMesh::SBatch::~SBatch()
; decoder-mode: arm
0057a368  10 40 2d e9                                      push {r4, lr}
0057a36c  00 40 a0 e1                                      mov r4, r0
0057a370  08 00 80 e2                                      add r0, r0, #8
0057a374  bc ff ff eb                                      bl #0x57a26c
0057a378  04 00 84 e2                                      add r0, r4, #4
0057a37c  19 5a f6 eb                                      bl #0x310be8
0057a380  00 00 94 e5                                      ldr r0, [r4]
0057a384  00 00 50 e3                                      cmp r0, #0
0057a388  00 00 00 0a                                      beq #0x57a390
0057a38c  7c 8c f6 eb                                      bl #0x31d584
0057a390  04 00 a0 e1                                      mov r0, r4
0057a394  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0057a688, declared_size=48, range_size=48, mode=arm
; class-group: glitch::scene::CBatchMesh::SBatch
; alias: _ZN6glitch5scene10CBatchMesh6SBatchD2Ev
; demangled: glitch::scene::CBatchMesh::SBatch::~SBatch()
; decoder-mode: arm
0057a688  10 40 2d e9                                      push {r4, lr}
0057a68c  00 40 a0 e1                                      mov r4, r0
0057a690  08 00 80 e2                                      add r0, r0, #8
0057a694  f4 fe ff eb                                      bl #0x57a26c
0057a698  04 00 84 e2                                      add r0, r4, #4
0057a69c  51 59 f6 eb                                      bl #0x310be8
0057a6a0  00 00 94 e5                                      ldr r0, [r4]
0057a6a4  00 00 50 e3                                      cmp r0, #0
0057a6a8  00 00 00 0a                                      beq #0x57a6b0
0057a6ac  b4 8b f6 eb                                      bl #0x31d584
0057a6b0  04 00 a0 e1                                      mov r0, r4
0057a6b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0057ba8c, declared_size=192, range_size=192, mode=arm
; class-group: glitch::scene::CBatchMesh::SBatch
; alias: _ZN6glitch5scene10CBatchMesh6SBatchaSERKS2_
; demangled: glitch::scene::CBatchMesh::SBatch::operator=(glitch::scene::CBatchMesh::SBatch const&)
; decoder-mode: arm
0057ba8c  30 40 2d e9                                      push {r4, r5, lr}
0057ba90  00 30 91 e5                                      ldr r3, [r1]
0057ba94  00 40 a0 e1                                      mov r4, r0
0057ba98  0c d0 4d e2                                      sub sp, sp, #0xc
0057ba9c  00 00 53 e3                                      cmp r3, #0
0057baa0  04 20 93 15                                      ldrne r2, [r3, #4]
0057baa4  01 50 a0 e1                                      mov r5, r1
0057baa8  01 20 82 12                                      addne r2, r2, #1
0057baac  04 20 83 15                                      strne r2, [r3, #4]
0057bab0  00 00 90 e5                                      ldr r0, [r0]
0057bab4  00 30 84 e5                                      str r3, [r4]
0057bab8  00 00 50 e3                                      cmp r0, #0
0057babc  00 00 00 0a                                      beq #0x57bac4
0057bac0  af 86 f6 eb                                      bl #0x31d584
0057bac4  04 30 95 e5                                      ldr r3, [r5, #4]
0057bac8  08 00 8d e2                                      add r0, sp, #8
0057bacc  04 30 8d e5                                      str r3, [sp, #4]
0057bad0  00 00 53 e3                                      cmp r3, #0
0057bad4  00 20 93 15                                      ldrne r2, [r3]
0057bad8  01 20 82 12                                      addne r2, r2, #1
0057badc  00 20 83 15                                      strne r2, [r3]
0057bae0  04 20 94 e5                                      ldr r2, [r4, #4]
0057bae4  04 30 9d 15                                      ldrne r3, [sp, #4]
0057bae8  04 30 84 e5                                      str r3, [r4, #4]
0057baec  04 20 20 e5                                      str r2, [r0, #-4]!
0057baf0  3c 54 f6 eb                                      bl #0x310be8
0057baf4  08 30 95 e5                                      ldr r3, [r5, #8]
0057baf8  08 00 8d e2                                      add r0, sp, #8
0057bafc  00 30 8d e5                                      str r3, [sp]
0057bb00  00 00 53 e3                                      cmp r3, #0
0057bb04  00 20 93 15                                      ldrne r2, [r3]
0057bb08  01 20 82 12                                      addne r2, r2, #1
0057bb0c  00 20 83 15                                      strne r2, [r3]
0057bb10  00 30 9d 15                                      ldrne r3, [sp]
0057bb14  08 20 94 e5                                      ldr r2, [r4, #8]
0057bb18  08 30 84 e5                                      str r3, [r4, #8]
0057bb1c  08 20 20 e5                                      str r2, [r0, #-8]!
0057bb20  0d 00 a0 e1                                      mov r0, sp
0057bb24  d0 f9 ff eb                                      bl #0x57a26c
0057bb28  bc 30 d5 e1                                      ldrh r3, [r5, #0xc]
0057bb2c  04 00 a0 e1                                      mov r0, r4
0057bb30  bc 30 c4 e1                                      strh r3, [r4, #0xc]
0057bb34  be 30 d5 e1                                      ldrh r3, [r5, #0xe]
0057bb38  be 30 c4 e1                                      strh r3, [r4, #0xe]
0057bb3c  b0 51 d5 e1                                      ldrh r5, [r5, #0x10]
0057bb40  b0 51 c4 e1                                      strh r5, [r4, #0x10]
0057bb44  0c d0 8d e2                                      add sp, sp, #0xc
0057bb48  30 80 bd e8                                      pop {r4, r5, pc}
