; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a4f18, declared_size=108, range_size=108, mode=arm
; class-group: boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZN5boost16unordered_detail27hash_table_data_unique_keysIN6glitch4core10SAllocatorINS3_6detail22SSharedStringHeapEntryELNS2_6memory13E_MEMORY_HINTE0EEEE14delete_bucketsEv
; demangled: boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry, (glitch::memory::E_MEMORY_HINT)0> >::delete_buckets()
; decoder-mode: arm
006a4f18  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006a4f1c  00 80 a0 e1                                      mov r8, r0
006a4f20  04 00 90 e5                                      ldr r0, [r0, #4]
006a4f24  00 00 50 e3                                      cmp r0, #0
006a4f28  14 00 00 0a                                      beq #0x6a4f80
006a4f2c  08 60 98 e5                                      ldr r6, [r8, #8]
006a4f30  0c 50 98 e5                                      ldr r5, [r8, #0xc]
006a4f34  06 61 80 e0                                      add r6, r0, r6, lsl #2
006a4f38  06 00 55 e1                                      cmp r5, r6
006a4f3c  0d 00 00 0a                                      beq #0x6a4f78
006a4f40  00 70 a0 e3                                      mov r7, #0
006a4f44  00 40 95 e5                                      ldr r4, [r5]
006a4f48  00 70 85 e5                                      str r7, [r5]
006a4f4c  00 00 54 e3                                      cmp r4, #0
006a4f50  04 00 00 0a                                      beq #0x6a4f68
006a4f54  04 00 a0 e1                                      mov r0, r4
006a4f58  04 40 10 e4                                      ldr r4, [r0], #-4
006a4f5c  3b ad f1 eb                                      bl #0x310450
006a4f60  00 00 54 e3                                      cmp r4, #0
006a4f64  fa ff ff 1a                                      bne #0x6a4f54
006a4f68  04 50 85 e2                                      add r5, r5, #4
006a4f6c  06 00 55 e1                                      cmp r5, r6
006a4f70  f3 ff ff 1a                                      bne #0x6a4f44
006a4f74  04 00 98 e5                                      ldr r0, [r8, #4]
006a4f78  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
006a4f7c  33 ad f1 ea                                      b #0x310450
006a4f80  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006a4f84, declared_size=84, range_size=84, mode=arm
; class-group: boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZN5boost16unordered_detail27hash_table_data_unique_keysIN6glitch4core10SAllocatorINS3_6detail22SSharedStringHeapEntryELNS2_6memory13E_MEMORY_HINTE0EEEE14create_bucketsEv
; demangled: boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry, (glitch::memory::E_MEMORY_HINT)0> >::create_buckets()
; decoder-mode: arm
006a4f84  70 40 2d e9                                      push {r4, r5, r6, lr}
006a4f88  08 50 90 e5                                      ldr r5, [r0, #8]
006a4f8c  00 40 a0 e1                                      mov r4, r0
006a4f90  00 10 a0 e3                                      mov r1, #0
006a4f94  01 60 85 e2                                      add r6, r5, #1
006a4f98  06 61 a0 e1                                      lsl r6, r6, #2
006a4f9c  06 00 a0 e1                                      mov r0, r6
006a4fa0  70 ad f1 eb                                      bl #0x310568
006a4fa4  06 60 80 e0                                      add r6, r0, r6
006a4fa8  06 00 50 e1                                      cmp r0, r6
006a4fac  04 00 00 0a                                      beq #0x6a4fc4
006a4fb0  00 30 a0 e1                                      mov r3, r0
006a4fb4  00 20 a0 e3                                      mov r2, #0
006a4fb8  04 20 83 e4                                      str r2, [r3], #4
006a4fbc  03 00 56 e1                                      cmp r6, r3
006a4fc0  fc ff ff 1a                                      bne #0x6a4fb8
006a4fc4  05 31 80 e0                                      add r3, r0, r5, lsl #2
006a4fc8  0c 30 84 e5                                      str r3, [r4, #0xc]
006a4fcc  05 31 80 e7                                      str r3, [r0, r5, lsl #2]
006a4fd0  04 00 84 e5                                      str r0, [r4, #4]
006a4fd4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006a4fd8, declared_size=156, range_size=156, mode=arm
; class-group: boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZN5boost16unordered_detail27hash_table_data_unique_keysIN6glitch4core10SAllocatorINS3_6detail22SSharedStringHeapEntryELNS2_6memory13E_MEMORY_HINTE0EEEEC1ERKSA_j
; demangled: boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry, (glitch::memory::E_MEMORY_HINT)0> >::hash_table_data_unique_keys(boost::unordered_detail::hash_table_data_unique_keys<glitch::core::SAllocator<glitch::core::detail::SSharedStringHeapEntry, (glitch::memory::E_MEMORY_HINT)0> > const&, unsigned int)
; decoder-mode: arm
006a4fd8  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
006a4fdc  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
006a4fe0  70 40 2d e9                                      push {r4, r5, r6, lr}
006a4fe4  03 30 8f e0                                      add r3, pc, r3
006a4fe8  01 c0 93 e7                                      ldr ip, [r3, r1]
006a4fec  00 40 a0 e1                                      mov r4, r0
006a4ff0  00 00 a0 e3                                      mov r0, #0
006a4ff4  04 00 84 e5                                      str r0, [r4, #4]
006a4ff8  28 50 a0 e3                                      mov r5, #0x28
006a4ffc  c5 00 a0 e1                                      asr r0, r5, #1
006a5000  03 00 00 ea                                      b #0x6a5014
006a5004  00 00 50 e3                                      cmp r0, #0
006a5008  00 50 a0 e1                                      mov r5, r0
006a500c  c0 00 a0 e1                                      asr r0, r0, #1
006a5010  08 00 00 da                                      ble #0x6a5038
006a5014  00 e1 9c e7                                      ldr lr, [ip, r0, lsl #2]
006a5018  00 61 8c e0                                      add r6, ip, r0, lsl #2
006a501c  0e 00 52 e1                                      cmp r2, lr
006a5020  f7 ff ff 9a                                      bls #0x6a5004
006a5024  01 50 45 e2                                      sub r5, r5, #1
006a5028  05 50 60 e0                                      rsb r5, r0, r5
006a502c  00 00 55 e3                                      cmp r5, #0
006a5030  04 c0 86 e2                                      add ip, r6, #4
006a5034  f0 ff ff ca                                      bgt #0x6a4ffc
006a5038  01 30 93 e7                                      ldr r3, [r3, r1]
006a503c  04 00 a0 e1                                      mov r0, r4
006a5040  a0 20 83 e2                                      add r2, r3, #0xa0
006a5044  02 00 5c e1                                      cmp ip, r2
006a5048  9c c0 83 02                                      addeq ip, r3, #0x9c
006a504c  00 20 9c e5                                      ldr r2, [ip]
006a5050  00 30 a0 e3                                      mov r3, #0
006a5054  10 30 84 e5                                      str r3, [r4, #0x10]
006a5058  08 20 84 e5                                      str r2, [r4, #8]
006a505c  0c 30 84 e5                                      str r3, [r4, #0xc]
006a5060  c7 ff ff eb                                      bl #0x6a4f84
006a5064  04 00 a0 e1                                      mov r0, r4
006a5068  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
006a506c  ac fa 2e 00 90 20 00 00                          .byte 0xac, 0xfa, 0x2e, 0x00, 0x90, 0x20, 0x00, 0x00
