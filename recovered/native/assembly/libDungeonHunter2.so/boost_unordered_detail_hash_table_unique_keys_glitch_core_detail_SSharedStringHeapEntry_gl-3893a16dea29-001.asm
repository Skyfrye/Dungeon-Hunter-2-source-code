; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a4d04, declared_size=152, range_size=152, mode=arm
; class-group: boost::unordered_detail::hash_table_unique_keys<glitch::core::detail::SSharedStringHeapEntry, glitch::core::detail::SSharedStringHeapEntry, glitch::core::detail::(anonymous namespace)::CSharedStringHeap::SHash, glitch::core::detail::(anonymous namespace)::CSharedStringHeap::SEqual, glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNK5boost16unordered_detail22hash_table_unique_keysIN6glitch4core6detail22SSharedStringHeapEntryES5_NS4_12_GLOBAL__N_117CSharedStringHeap5SHashENS7_6SEqualENS3_10SAllocatorIS5_LNS2_6memory13E_MEMORY_HINTE0EEEE13find_iteratorEPNS0_27hash_table_data_unique_keysISD_E6bucketERKS5_
; demangled: boost::unordered_detail::hash_table_unique_keys<glitch::core::detail::SSharedStringHeapEntry, glitch::core::detail::SSharedStringHeapEntry, glitch::core::detail::(anonymous namespace)::CSharedStringHeap::SHash, glitch::core::detail::(anonymous namespace)::CSharedStringHeap::SEqual, glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry, (glitch::memory::E_MEMORY_HINT)0> >::find_iterator(boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry, (glitch::memory::E_MEMORY_HINT)0> >::bucket*, glitch::core::detail::SSharedStringHeapEntry const&) const
; decoder-mode: arm
006a4d04  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a4d08  00 40 91 e5                                      ldr r4, [r1]
006a4d0c  00 00 54 e3                                      cmp r4, #0
006a4d10  0f 00 00 0a                                      beq #0x6a4d54
006a4d14  00 70 92 e5                                      ldr r7, [r2]
006a4d18  07 60 a0 e1                                      mov r6, r7
006a4d1c  04 50 b6 e5                                      ldr r5, [r6, #4]!
006a4d20  00 00 55 e3                                      cmp r5, #0
006a4d24  11 00 00 1a                                      bne #0x6a4d70
006a4d28  04 30 14 e5                                      ldr r3, [r4, #-4]
006a4d2c  00 00 97 e5                                      ldr r0, [r7]
006a4d30  04 20 93 e5                                      ldr r2, [r3, #4]
006a4d34  04 10 83 e2                                      add r1, r3, #4
006a4d38  00 00 52 e3                                      cmp r2, #0
006a4d3c  10 00 00 0a                                      beq #0x6a4d84
006a4d40  75 a5 f1 eb                                      bl #0x30e31c
006a4d44  01 00 70 e2                                      rsbs r0, r0, #1
006a4d48  00 00 a0 33                                      movlo r0, #0
006a4d4c  00 00 50 e3                                      cmp r0, #0
006a4d50  01 00 00 0a                                      beq #0x6a4d5c
006a4d54  04 00 a0 e1                                      mov r0, r4
006a4d58  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006a4d5c  00 40 94 e5                                      ldr r4, [r4]
006a4d60  00 00 54 e3                                      cmp r4, #0
006a4d64  fa ff ff 0a                                      beq #0x6a4d54
006a4d68  00 00 55 e3                                      cmp r5, #0
006a4d6c  ed ff ff 0a                                      beq #0x6a4d28
006a4d70  04 30 14 e5                                      ldr r3, [r4, #-4]
006a4d74  06 00 a0 e1                                      mov r0, r6
006a4d78  04 20 93 e5                                      ldr r2, [r3, #4]
006a4d7c  00 00 52 e3                                      cmp r2, #0
006a4d80  01 00 00 1a                                      bne #0x6a4d8c
006a4d84  00 10 93 e5                                      ldr r1, [r3]
006a4d88  ec ff ff ea                                      b #0x6a4d40
006a4d8c  03 00 57 e1                                      cmp r7, r3
006a4d90  00 00 a0 13                                      movne r0, #0
006a4d94  01 00 a0 03                                      moveq r0, #1
006a4d98  eb ff ff ea                                      b #0x6a4d4c
