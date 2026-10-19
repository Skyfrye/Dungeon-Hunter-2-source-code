; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0057998c, declared_size=88, range_size=88, mode=arm
; class-group: glitch::scene::CBatchMesh::SSegmentInfo* std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene10CBatchMesh12SSegmentInfoENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPS3_EESB_RjT_SD_
; demangled: glitch::scene::CBatchMesh::SSegmentInfo* std::vector<glitch::scene::CBatchMesh::SSegmentInfo, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegmentInfo, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::scene::CBatchMesh::SSegmentInfo*>(unsigned int&, glitch::scene::CBatchMesh::SSegmentInfo*, glitch::scene::CBatchMesh::SSegmentInfo*)
; decoder-mode: arm
0057998c  70 40 2d e9                                      push {r4, r5, r6, lr}
00579990  00 00 91 e5                                      ldr r0, [r1]
00579994  02 40 a0 e1                                      mov r4, r2
00579998  03 50 a0 e1                                      mov r5, r3
0057999c  05 50 64 e0                                      rsb r5, r4, r5
005799a0  80 01 a0 e1                                      lsl r0, r0, #3
005799a4  00 10 a0 e3                                      mov r1, #0
005799a8  c5 51 a0 e1                                      asr r5, r5, #3
005799ac  ed 5a f6 eb                                      bl #0x310568
005799b0  00 00 55 e3                                      cmp r5, #0
005799b4  09 00 00 da                                      ble #0x5799e0
005799b8  00 10 a0 e3                                      mov r1, #0
005799bc  04 20 a0 e1                                      mov r2, r4
005799c0  01 c0 b2 e7                                      ldr ip, [r2, r1]!
005799c4  00 30 a0 e1                                      mov r3, r0
005799c8  01 50 55 e2                                      subs r5, r5, #1
005799cc  01 c0 a3 e7                                      str ip, [r3, r1]!
005799d0  04 20 92 e5                                      ldr r2, [r2, #4]
005799d4  08 10 81 e2                                      add r1, r1, #8
005799d8  04 20 83 e5                                      str r2, [r3, #4]
005799dc  f6 ff ff 1a                                      bne #0x5799bc
005799e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
