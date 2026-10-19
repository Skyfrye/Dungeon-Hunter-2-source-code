; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0057a068, declared_size=60, range_size=60, mode=arm
; class-group: glitch::scene::CBatchMesh::SSegment** std::vector<glitch::scene::CBatchMesh::SSegment*, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegment*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch5scene10CBatchMesh8SSegmentENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPS4_EESC_RjT_SE_
; demangled: glitch::scene::CBatchMesh::SSegment** std::vector<glitch::scene::CBatchMesh::SSegment*, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegment*, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<glitch::scene::CBatchMesh::SSegment**>(unsigned int&, glitch::scene::CBatchMesh::SSegment**, glitch::scene::CBatchMesh::SSegment**)
; decoder-mode: arm
0057a068  70 40 2d e9                                      push {r4, r5, r6, lr}
0057a06c  00 00 91 e5                                      ldr r0, [r1]
0057a070  00 10 a0 e3                                      mov r1, #0
0057a074  02 40 a0 e1                                      mov r4, r2
0057a078  00 01 a0 e1                                      lsl r0, r0, #2
0057a07c  03 60 a0 e1                                      mov r6, r3
0057a080  38 59 f6 eb                                      bl #0x310568
0057a084  06 00 54 e1                                      cmp r4, r6
0057a088  00 50 a0 e1                                      mov r5, r0
0057a08c  02 00 00 0a                                      beq #0x57a09c
0057a090  04 10 a0 e1                                      mov r1, r4
0057a094  06 20 64 e0                                      rsb r2, r4, r6
0057a098  f2 51 f6 eb                                      bl #0x30e868
0057a09c  05 00 a0 e1                                      mov r0, r5
0057a0a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
