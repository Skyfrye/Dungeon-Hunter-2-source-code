; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00579774, declared_size=184, range_size=184, mode=arm
; class-group: glitch::scene::CBatchMesh::SBatch* std::priv
; alias: _ZNSt4priv7__ucopyIPN6glitch5scene10CBatchMesh6SBatchES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::scene::CBatchMesh::SBatch* std::priv::__ucopy<glitch::scene::CBatchMesh::SBatch*, glitch::scene::CBatchMesh::SBatch*, int>(glitch::scene::CBatchMesh::SBatch*, glitch::scene::CBatchMesh::SBatch*, glitch::scene::CBatchMesh::SBatch*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00579774  01 30 60 e0                                      rsb r3, r0, r1
00579778  43 31 a0 e1                                      asr r3, r3, #2
0057977c  30 00 2d e9                                      push {r4, r5}
00579780  83 10 83 e0                                      add r1, r3, r3, lsl #1
00579784  01 12 81 e0                                      add r1, r1, r1, lsl #4
00579788  01 14 81 e0                                      add r1, r1, r1, lsl #8
0057978c  01 18 81 e0                                      add r1, r1, r1, lsl #16
00579790  01 31 83 e0                                      add r3, r3, r1, lsl #2
00579794  00 00 53 e3                                      cmp r3, #0
00579798  02 00 a0 d1                                      movle r0, r2
0057979c  20 00 00 da                                      ble #0x579824
005797a0  03 40 a0 e1                                      mov r4, r3
005797a4  02 10 a0 e1                                      mov r1, r2
005797a8  00 00 00 ea                                      b #0x5797b0
005797ac  14 00 80 e2                                      add r0, r0, #0x14
005797b0  00 c0 90 e5                                      ldr ip, [r0]
005797b4  00 c0 81 e5                                      str ip, [r1]
005797b8  00 00 5c e3                                      cmp ip, #0
005797bc  04 50 9c 15                                      ldrne r5, [ip, #4]
005797c0  01 50 85 12                                      addne r5, r5, #1
005797c4  04 50 8c 15                                      strne r5, [ip, #4]
005797c8  04 c0 90 e5                                      ldr ip, [r0, #4]
005797cc  04 c0 81 e5                                      str ip, [r1, #4]
005797d0  00 00 5c e3                                      cmp ip, #0
005797d4  00 50 9c 15                                      ldrne r5, [ip]
005797d8  01 50 85 12                                      addne r5, r5, #1
005797dc  00 50 8c 15                                      strne r5, [ip]
005797e0  08 c0 90 e5                                      ldr ip, [r0, #8]
005797e4  08 c0 81 e5                                      str ip, [r1, #8]
005797e8  00 00 5c e3                                      cmp ip, #0
005797ec  00 50 9c 15                                      ldrne r5, [ip]
005797f0  01 50 85 12                                      addne r5, r5, #1
005797f4  00 50 8c 15                                      strne r5, [ip]
005797f8  bc c0 d0 e1                                      ldrh ip, [r0, #0xc]
005797fc  01 40 54 e2                                      subs r4, r4, #1
00579800  bc c0 c1 e1                                      strh ip, [r1, #0xc]
00579804  be c0 d0 e1                                      ldrh ip, [r0, #0xe]
00579808  be c0 c1 e1                                      strh ip, [r1, #0xe]
0057980c  b0 c1 d0 e1                                      ldrh ip, [r0, #0x10]
00579810  b0 c1 c1 e1                                      strh ip, [r1, #0x10]
00579814  14 10 81 e2                                      add r1, r1, #0x14
00579818  e3 ff ff 1a                                      bne #0x5797ac
0057981c  14 00 a0 e3                                      mov r0, #0x14
00579820  90 23 20 e0                                      mla r0, r0, r3, r2
00579824  30 00 bd e8                                      pop {r4, r5}
00579828  1e ff 2f e1                                      bx lr
