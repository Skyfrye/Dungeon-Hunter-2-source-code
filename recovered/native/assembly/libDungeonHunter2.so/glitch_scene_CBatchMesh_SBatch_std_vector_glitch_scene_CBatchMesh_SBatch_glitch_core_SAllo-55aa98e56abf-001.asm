; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005799e4, declared_size=80, range_size=80, mode=arm
; class-group: glitch::scene::CBatchMesh::SBatch* std::vector<glitch::scene::CBatchMesh::SBatch, glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CBatchMesh6SBatchENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPS3_EESB_RjT_SD_
; demangled: glitch::scene::CBatchMesh::SBatch* std::vector<glitch::scene::CBatchMesh::SBatch, glitch::core::SAllocator<glitch::scene::CBatchMesh::SBatch, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::scene::CBatchMesh::SBatch*>(unsigned int&, glitch::scene::CBatchMesh::SBatch*, glitch::scene::CBatchMesh::SBatch*)
; decoder-mode: arm
005799e4  70 40 2d e9                                      push {r4, r5, r6, lr}
005799e8  00 00 91 e5                                      ldr r0, [r1]
005799ec  14 c0 a0 e3                                      mov ip, #0x14
005799f0  10 d0 4d e2                                      sub sp, sp, #0x10
005799f4  00 10 a0 e3                                      mov r1, #0
005799f8  9c 00 00 e0                                      mul r0, ip, r0
005799fc  02 50 a0 e1                                      mov r5, r2
00579a00  03 60 a0 e1                                      mov r6, r3
00579a04  d7 5a f6 eb                                      bl #0x310568
00579a08  00 40 a0 e1                                      mov r4, r0
00579a0c  00 c0 a0 e3                                      mov ip, #0
00579a10  06 10 a0 e1                                      mov r1, r6
00579a14  05 00 a0 e1                                      mov r0, r5
00579a18  04 20 a0 e1                                      mov r2, r4
00579a1c  0c 30 8d e2                                      add r3, sp, #0xc
00579a20  00 c0 8d e5                                      str ip, [sp]
00579a24  52 ff ff eb                                      bl #0x579774
00579a28  04 00 a0 e1                                      mov r0, r4
00579a2c  10 d0 8d e2                                      add sp, sp, #0x10
00579a30  70 80 bd e8                                      pop {r4, r5, r6, pc}
