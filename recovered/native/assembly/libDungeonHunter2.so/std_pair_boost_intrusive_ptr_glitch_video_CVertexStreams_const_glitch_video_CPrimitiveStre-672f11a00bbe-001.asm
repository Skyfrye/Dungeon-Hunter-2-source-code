; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a25e0, declared_size=188, range_size=188, mode=arm
; class-group: std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream>* std::priv
; alias: _ZNSt4priv7__ucopyIPSt4pairIN5boost13intrusive_ptrIKN6glitch5video14CVertexStreamsEEENS5_16CPrimitiveStreamEESB_iEET0_T_SD_SC_RKSt26random_access_iterator_tagPT1_
; demangled: std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream>* std::priv::__ucopy<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream>*, std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream>*, int>(std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream>*, std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream>*, std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream>*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005a25e0  01 30 60 e0                                      rsb r3, r0, r1
005a25e4  43 31 a0 e1                                      asr r3, r3, #2
005a25e8  30 00 2d e9                                      push {r4, r5}
005a25ec  83 11 83 e0                                      add r1, r3, r3, lsl #3
005a25f0  01 13 81 e0                                      add r1, r1, r1, lsl #6
005a25f4  81 11 83 e0                                      add r1, r3, r1, lsl #3
005a25f8  81 17 81 e0                                      add r1, r1, r1, lsl #15
005a25fc  81 31 83 e0                                      add r3, r3, r1, lsl #3
005a2600  00 30 63 e2                                      rsb r3, r3, #0
005a2604  00 00 53 e3                                      cmp r3, #0
005a2608  02 00 a0 d1                                      movle r0, r2
005a260c  20 00 00 da                                      ble #0x5a2694
005a2610  1c 00 80 e2                                      add r0, r0, #0x1c
005a2614  1c 10 82 e2                                      add r1, r2, #0x1c
005a2618  03 40 a0 e1                                      mov r4, r3
005a261c  1c c0 10 e5                                      ldr ip, [r0, #-0x1c]
005a2620  1c c0 01 e5                                      str ip, [r1, #-0x1c]
005a2624  00 00 5c e3                                      cmp ip, #0
005a2628  00 50 9c 15                                      ldrne r5, [ip]
005a262c  01 50 85 12                                      addne r5, r5, #1
005a2630  00 50 8c 15                                      strne r5, [ip]
005a2634  18 c0 10 e5                                      ldr ip, [r0, #-0x18]
005a2638  18 c0 01 e5                                      str ip, [r1, #-0x18]
005a263c  00 00 5c e3                                      cmp ip, #0
005a2640  04 50 9c 15                                      ldrne r5, [ip, #4]
005a2644  01 50 85 12                                      addne r5, r5, #1
005a2648  04 50 8c 15                                      strne r5, [ip, #4]
005a264c  14 c0 10 e5                                      ldr ip, [r0, #-0x14]
005a2650  01 40 54 e2                                      subs r4, r4, #1
005a2654  14 c0 01 e5                                      str ip, [r1, #-0x14]
005a2658  10 c0 10 e5                                      ldr ip, [r0, #-0x10]
005a265c  10 c0 01 e5                                      str ip, [r1, #-0x10]
005a2660  0c c0 10 e5                                      ldr ip, [r0, #-0xc]
005a2664  0c c0 01 e5                                      str ip, [r1, #-0xc]
005a2668  08 c0 10 e5                                      ldr ip, [r0, #-8]
005a266c  08 c0 01 e5                                      str ip, [r1, #-8]
005a2670  b4 c0 50 e1                                      ldrh ip, [r0, #-4]
005a2674  b4 c0 41 e1                                      strh ip, [r1, #-4]
005a2678  b2 c0 50 e1                                      ldrh ip, [r0, #-2]
005a267c  1c 00 80 e2                                      add r0, r0, #0x1c
005a2680  b2 c0 41 e1                                      strh ip, [r1, #-2]
005a2684  1c 10 81 e2                                      add r1, r1, #0x1c
005a2688  e3 ff ff 1a                                      bne #0x5a261c
005a268c  1c 00 a0 e3                                      mov r0, #0x1c
005a2690  90 23 20 e0                                      mla r0, r0, r3, r2
005a2694  30 00 bd e8                                      pop {r4, r5}
005a2698  1e ff 2f e1                                      bx lr
