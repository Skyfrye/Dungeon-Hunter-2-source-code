; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0057a0a4, declared_size=168, range_size=168, mode=arm
; class-group: std::vector<glitch::scene::CBatchMesh::SSegment*, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegment*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPN6glitch5scene10CBatchMesh8SSegmentENS0_4core10SAllocatorIS4_LNS0_6memory13E_MEMORY_HINTE0EEEE7reserveEj
; demangled: std::vector<glitch::scene::CBatchMesh::SSegment*, glitch::core::SAllocator<glitch::scene::CBatchMesh::SSegment*, (glitch::memory::E_MEMORY_HINT)0> >::reserve(unsigned int)
; decoder-mode: arm
0057a0a4  70 40 2d e9                                      push {r4, r5, r6, lr}
0057a0a8  00 40 a0 e1                                      mov r4, r0
0057a0ac  00 20 90 e5                                      ldr r2, [r0]
0057a0b0  08 00 90 e5                                      ldr r0, [r0, #8]
0057a0b4  08 d0 4d e2                                      sub sp, sp, #8
0057a0b8  04 10 8d e5                                      str r1, [sp, #4]
0057a0bc  00 00 62 e0                                      rsb r0, r2, r0
0057a0c0  40 01 51 e1                                      cmp r1, r0, asr #2
0057a0c4  12 00 00 9a                                      bls #0x57a114
0057a0c8  07 01 71 e3                                      cmn r1, #0xc0000001
0057a0cc  12 00 00 8a                                      bhi #0x57a11c
0057a0d0  04 30 94 e5                                      ldr r3, [r4, #4]
0057a0d4  00 00 52 e3                                      cmp r2, #0
0057a0d8  03 50 62 e0                                      rsb r5, r2, r3
0057a0dc  45 51 a0 e1                                      asr r5, r5, #2
0057a0e0  12 00 00 0a                                      beq #0x57a130
0057a0e4  04 00 a0 e1                                      mov r0, r4
0057a0e8  04 10 8d e2                                      add r1, sp, #4
0057a0ec  dd ff ff eb                                      bl #0x57a068
0057a0f0  00 60 a0 e1                                      mov r6, r0
0057a0f4  00 00 94 e5                                      ldr r0, [r4]
0057a0f8  d4 58 f6 eb                                      bl #0x310450
0057a0fc  04 30 9d e5                                      ldr r3, [sp, #4]
0057a100  05 51 86 e0                                      add r5, r6, r5, lsl #2
0057a104  04 50 84 e5                                      str r5, [r4, #4]
0057a108  03 31 86 e0                                      add r3, r6, r3, lsl #2
0057a10c  08 30 84 e5                                      str r3, [r4, #8]
0057a110  00 60 84 e5                                      str r6, [r4]
0057a114  08 d0 8d e2                                      add sp, sp, #8
0057a118  70 80 bd e8                                      pop {r4, r5, r6, pc}
0057a11c  24 00 9f e5                                      ldr r0, [pc, #0x24]
0057a120  00 00 8f e0                                      add r0, pc, r0
0057a124  45 3b 06 eb                                      bl #0x708e40
0057a128  00 20 94 e5                                      ldr r2, [r4]
0057a12c  e7 ff ff ea                                      b #0x57a0d0
0057a130  04 00 9d e5                                      ldr r0, [sp, #4]
0057a134  02 10 a0 e1                                      mov r1, r2
0057a138  00 01 a0 e1                                      lsl r0, r0, #2
0057a13c  09 59 f6 eb                                      bl #0x310568
0057a140  00 60 a0 e1                                      mov r6, r0
0057a144  ec ff ff ea                                      b #0x57a0fc
; mapping-symbol data/literal pool
0057a148  48 43 34 00                                      .byte 0x48, 0x43, 0x34, 0x00
