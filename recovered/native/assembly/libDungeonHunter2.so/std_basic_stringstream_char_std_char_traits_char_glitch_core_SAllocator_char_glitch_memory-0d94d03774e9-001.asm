; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005bab00, declared_size=384, range_size=384, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt18basic_stringstreamIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEEC1Ei.clone.5
; demangled: std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::basic_stringstream(int) [clone .clone.5]
; decoder-mode: arm
005bab00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005bab04  48 80 80 e2                                      add r8, r0, #0x48
005bab08  00 40 a0 e1                                      mov r4, r0
005bab0c  54 61 9f e5                                      ldr r6, [pc, #0x154]
005bab10  08 00 a0 e1                                      mov r0, r8
005bab14  09 39 05 eb                                      bl #0x708f40
005bab18  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
005bab1c  06 60 8f e0                                      add r6, pc, r6
005bab20  48 31 9f e5                                      ldr r3, [pc, #0x148]
005bab24  02 70 96 e7                                      ldr r7, [r6, r2]
005bab28  00 50 a0 e3                                      mov r5, #0
005bab2c  03 30 96 e7                                      ldr r3, [r6, r3]
005bab30  08 10 97 e5                                      ldr r1, [r7, #8]
005bab34  0c 20 97 e5                                      ldr r2, [r7, #0xc]
005bab38  08 30 83 e2                                      add r3, r3, #8
005bab3c  48 30 84 e5                                      str r3, [r4, #0x48]
005bab40  44 50 c8 e5                                      strb r5, [r8, #0x44]
005bab44  48 50 88 e5                                      str r5, [r8, #0x48]
005bab48  4c 50 88 e5                                      str r5, [r8, #0x4c]
005bab4c  00 10 84 e5                                      str r1, [r4]
005bab50  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
005bab54  05 10 a0 e1                                      mov r1, r5
005bab58  03 20 84 e7                                      str r2, [r4, r3]
005bab5c  00 30 94 e5                                      ldr r3, [r4]
005bab60  04 50 84 e5                                      str r5, [r4, #4]
005bab64  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
005bab68  00 00 84 e0                                      add r0, r4, r0
005bab6c  4c a1 f5 eb                                      bl #0x3230a4
005bab70  10 20 97 e5                                      ldr r2, [r7, #0x10]
005bab74  04 30 a0 e1                                      mov r3, r4
005bab78  14 00 97 e5                                      ldr r0, [r7, #0x14]
005bab7c  08 20 a3 e5                                      str r2, [r3, #8]!
005bab80  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
005bab84  05 10 a0 e1                                      mov r1, r5
005bab88  02 00 83 e7                                      str r0, [r3, r2]
005bab8c  08 20 94 e5                                      ldr r2, [r4, #8]
005bab90  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
005bab94  00 00 83 e0                                      add r0, r3, r0
005bab98  41 a1 f5 eb                                      bl #0x3230a4
005bab9c  04 30 97 e5                                      ldr r3, [r7, #4]
005baba0  18 00 97 e5                                      ldr r0, [r7, #0x18]
005baba4  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
005baba8  00 30 84 e5                                      str r3, [r4]
005babac  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005babb0  05 10 a0 e1                                      mov r1, r5
005babb4  03 00 84 e7                                      str r0, [r4, r3]
005babb8  00 30 94 e5                                      ldr r3, [r4]
005babbc  08 20 84 e5                                      str r2, [r4, #8]
005babc0  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
005babc4  00 00 84 e0                                      add r0, r4, r0
005babc8  35 a1 f5 eb                                      bl #0x3230a4
005babcc  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
005babd0  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
005babd4  10 50 84 e5                                      str r5, [r4, #0x10]
005babd8  03 30 96 e7                                      ldr r3, [r6, r3]
005babdc  02 20 96 e7                                      ldr r2, [r6, r2]
005babe0  14 50 84 e5                                      str r5, [r4, #0x14]
005babe4  20 10 83 e2                                      add r1, r3, #0x20
005babe8  08 20 82 e2                                      add r2, r2, #8
005babec  0c 00 83 e2                                      add r0, r3, #0xc
005babf0  34 30 83 e2                                      add r3, r3, #0x34
005babf4  00 00 84 e5                                      str r0, [r4]
005babf8  48 30 84 e5                                      str r3, [r4, #0x48]
005babfc  08 10 84 e5                                      str r1, [r4, #8]
005bac00  0c 20 84 e5                                      str r2, [r4, #0xc]
005bac04  18 50 84 e5                                      str r5, [r4, #0x18]
005bac08  1c 50 84 e5                                      str r5, [r4, #0x1c]
005bac0c  20 50 84 e5                                      str r5, [r4, #0x20]
005bac10  24 50 84 e5                                      str r5, [r4, #0x24]
005bac14  28 00 84 e2                                      add r0, r4, #0x28
005bac18  8c 38 05 eb                                      bl #0x708e50
005bac1c  58 20 9f e5                                      ldr r2, [pc, #0x58]
005bac20  30 30 84 e2                                      add r3, r4, #0x30
005bac24  18 10 a0 e3                                      mov r1, #0x18
005bac28  02 20 96 e7                                      ldr r2, [r6, r2]
005bac2c  2c 10 84 e5                                      str r1, [r4, #0x2c]
005bac30  03 00 a0 e1                                      mov r0, r3
005bac34  08 20 82 e2                                      add r2, r2, #8
005bac38  0c 20 84 e5                                      str r2, [r4, #0xc]
005bac3c  40 30 84 e5                                      str r3, [r4, #0x40]
005bac40  44 30 84 e5                                      str r3, [r4, #0x44]
005bac44  10 10 a0 e3                                      mov r1, #0x10
005bac48  56 97 f5 eb                                      bl #0x3209a8
005bac4c  40 30 94 e5                                      ldr r3, [r4, #0x40]
005bac50  08 00 a0 e1                                      mov r0, r8
005bac54  0c 10 84 e2                                      add r1, r4, #0xc
005bac58  00 50 c3 e5                                      strb r5, [r3]
005bac5c  10 a1 f5 eb                                      bl #0x3230a4
005bac60  04 00 a0 e1                                      mov r0, r4
005bac64  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005bac68  74 9f 3d 00 68 1a 00 00 30 37 00 00 d0 08 00 00  .byte 0x74, 0x9f, 0x3d, 0x00, 0x68, 0x1a, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00, 0xd0, 0x08, 0x00, 0x00
005bac78  b4 07 00 00 80 47 00 00                          .byte 0xb4, 0x07, 0x00, 0x00, 0x80, 0x47, 0x00, 0x00

; FUNCTION 0x005bc724, declared_size=8, range_size=8, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZThn8_NSt18basic_stringstreamIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: non-virtual thunk to std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::~basic_stringstream()
; decoder-mode: arm
005bc724  08 00 40 e2                                      sub r0, r0, #8
005bc728  ff ff ff ea                                      b #0x5bc72c

; FUNCTION 0x005bc72c, declared_size=180, range_size=180, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt18basic_stringstreamIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::~basic_stringstream()
; decoder-mode: arm
005bc72c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005bc730  98 50 9f e5                                      ldr r5, [pc, #0x98]
005bc734  98 30 9f e5                                      ldr r3, [pc, #0x98]
005bc738  00 40 a0 e1                                      mov r4, r0
005bc73c  05 50 8f e0                                      add r5, pc, r5
005bc740  03 30 95 e7                                      ldr r3, [r5, r3]
005bc744  00 60 a0 e1                                      mov r6, r0
005bc748  0c 00 80 e2                                      add r0, r0, #0xc
005bc74c  20 20 83 e2                                      add r2, r3, #0x20
005bc750  0c 10 83 e2                                      add r1, r3, #0xc
005bc754  34 30 83 e2                                      add r3, r3, #0x34
005bc758  48 10 86 e4                                      str r1, [r6], #0x48
005bc75c  48 30 84 e5                                      str r3, [r4, #0x48]
005bc760  08 20 84 e5                                      str r2, [r4, #8]
005bc764  cd ff ff eb                                      bl #0x5bc6a0
005bc768  68 30 9f e5                                      ldr r3, [pc, #0x68]
005bc76c  06 00 a0 e1                                      mov r0, r6
005bc770  64 20 9f e5                                      ldr r2, [pc, #0x64]
005bc774  03 30 95 e7                                      ldr r3, [r5, r3]
005bc778  08 70 84 e2                                      add r7, r4, #8
005bc77c  02 20 95 e7                                      ldr r2, [r5, r2]
005bc780  04 10 93 e5                                      ldr r1, [r3, #4]
005bc784  10 c0 93 e5                                      ldr ip, [r3, #0x10]
005bc788  18 60 93 e5                                      ldr r6, [r3, #0x18]
005bc78c  00 10 84 e5                                      str r1, [r4]
005bc790  0c e0 11 e5                                      ldr lr, [r1, #-0xc]
005bc794  14 50 93 e5                                      ldr r5, [r3, #0x14]
005bc798  08 10 93 e5                                      ldr r1, [r3, #8]
005bc79c  0e 60 84 e7                                      str r6, [r4, lr]
005bc7a0  08 c0 84 e5                                      str ip, [r4, #8]
005bc7a4  0c e0 1c e5                                      ldr lr, [ip, #-0xc]
005bc7a8  0c c0 93 e5                                      ldr ip, [r3, #0xc]
005bc7ac  08 20 82 e2                                      add r2, r2, #8
005bc7b0  0e 50 87 e7                                      str r5, [r7, lr]
005bc7b4  00 10 84 e5                                      str r1, [r4]
005bc7b8  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
005bc7bc  03 c0 84 e7                                      str ip, [r4, r3]
005bc7c0  48 20 84 e5                                      str r2, [r4, #0x48]
005bc7c4  a9 31 05 eb                                      bl #0x708e70
005bc7c8  04 00 a0 e1                                      mov r0, r4
005bc7cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005bc7d0  54 83 3d 00 d0 08 00 00 68 1a 00 00 30 37 00 00  .byte 0x54, 0x83, 0x3d, 0x00, 0xd0, 0x08, 0x00, 0x00, 0x68, 0x1a, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00

; FUNCTION 0x005bc7e0, declared_size=16, range_size=16, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZTv0_n12_NSt18basic_stringstreamIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: virtual thunk to std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::~basic_stringstream()
; decoder-mode: arm
005bc7e0  00 30 90 e5                                      ldr r3, [r0]
005bc7e4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005bc7e8  03 00 80 e0                                      add r0, r0, r3
005bc7ec  ce ff ff ea                                      b #0x5bc72c

; FUNCTION 0x005bc7f0, declared_size=8, range_size=8, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZThn8_NSt18basic_stringstreamIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEED0Ev
; demangled: non-virtual thunk to std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::~basic_stringstream()
; decoder-mode: arm
005bc7f0  08 00 40 e2                                      sub r0, r0, #8
005bc7f4  ff ff ff ea                                      b #0x5bc7f8

; FUNCTION 0x005bc7f8, declared_size=28, range_size=28, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt18basic_stringstreamIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEED0Ev
; demangled: std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::~basic_stringstream()
; decoder-mode: arm
005bc7f8  10 40 2d e9                                      push {r4, lr}
005bc7fc  00 40 a0 e1                                      mov r4, r0
005bc800  c9 ff ff eb                                      bl #0x5bc72c
005bc804  04 00 a0 e1                                      mov r0, r4
005bc808  a8 46 f5 eb                                      bl #0x30e2b0
005bc80c  04 00 a0 e1                                      mov r0, r4
005bc810  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005bc814, declared_size=16, range_size=16, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZTv0_n12_NSt18basic_stringstreamIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEED0Ev
; demangled: virtual thunk to std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::~basic_stringstream()
; decoder-mode: arm
005bc814  00 30 90 e5                                      ldr r3, [r0]
005bc818  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005bc81c  03 00 80 e0                                      add r0, r0, r3
005bc820  f4 ff ff ea                                      b #0x5bc7f8

; FUNCTION 0x005cb55c, declared_size=384, range_size=384, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt18basic_stringstreamIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEEC1Ei.clone.6
; demangled: std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::basic_stringstream(int) [clone .clone.6]
; decoder-mode: arm
005cb55c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005cb560  48 80 80 e2                                      add r8, r0, #0x48
005cb564  00 40 a0 e1                                      mov r4, r0
005cb568  54 61 9f e5                                      ldr r6, [pc, #0x154]
005cb56c  08 00 a0 e1                                      mov r0, r8
005cb570  72 f6 04 eb                                      bl #0x708f40
005cb574  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
005cb578  06 60 8f e0                                      add r6, pc, r6
005cb57c  48 31 9f e5                                      ldr r3, [pc, #0x148]
005cb580  02 70 96 e7                                      ldr r7, [r6, r2]
005cb584  00 50 a0 e3                                      mov r5, #0
005cb588  03 30 96 e7                                      ldr r3, [r6, r3]
005cb58c  08 10 97 e5                                      ldr r1, [r7, #8]
005cb590  0c 20 97 e5                                      ldr r2, [r7, #0xc]
005cb594  08 30 83 e2                                      add r3, r3, #8
005cb598  48 30 84 e5                                      str r3, [r4, #0x48]
005cb59c  44 50 c8 e5                                      strb r5, [r8, #0x44]
005cb5a0  48 50 88 e5                                      str r5, [r8, #0x48]
005cb5a4  4c 50 88 e5                                      str r5, [r8, #0x4c]
005cb5a8  00 10 84 e5                                      str r1, [r4]
005cb5ac  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
005cb5b0  05 10 a0 e1                                      mov r1, r5
005cb5b4  03 20 84 e7                                      str r2, [r4, r3]
005cb5b8  00 30 94 e5                                      ldr r3, [r4]
005cb5bc  04 50 84 e5                                      str r5, [r4, #4]
005cb5c0  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
005cb5c4  00 00 84 e0                                      add r0, r4, r0
005cb5c8  b5 5e f5 eb                                      bl #0x3230a4
005cb5cc  10 20 97 e5                                      ldr r2, [r7, #0x10]
005cb5d0  04 30 a0 e1                                      mov r3, r4
005cb5d4  14 00 97 e5                                      ldr r0, [r7, #0x14]
005cb5d8  08 20 a3 e5                                      str r2, [r3, #8]!
005cb5dc  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
005cb5e0  05 10 a0 e1                                      mov r1, r5
005cb5e4  02 00 83 e7                                      str r0, [r3, r2]
005cb5e8  08 20 94 e5                                      ldr r2, [r4, #8]
005cb5ec  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
005cb5f0  00 00 83 e0                                      add r0, r3, r0
005cb5f4  aa 5e f5 eb                                      bl #0x3230a4
005cb5f8  04 30 97 e5                                      ldr r3, [r7, #4]
005cb5fc  18 00 97 e5                                      ldr r0, [r7, #0x18]
005cb600  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
005cb604  00 30 84 e5                                      str r3, [r4]
005cb608  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005cb60c  05 10 a0 e1                                      mov r1, r5
005cb610  03 00 84 e7                                      str r0, [r4, r3]
005cb614  00 30 94 e5                                      ldr r3, [r4]
005cb618  08 20 84 e5                                      str r2, [r4, #8]
005cb61c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
005cb620  00 00 84 e0                                      add r0, r4, r0
005cb624  9e 5e f5 eb                                      bl #0x3230a4
005cb628  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
005cb62c  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
005cb630  10 50 84 e5                                      str r5, [r4, #0x10]
005cb634  03 30 96 e7                                      ldr r3, [r6, r3]
005cb638  02 20 96 e7                                      ldr r2, [r6, r2]
005cb63c  14 50 84 e5                                      str r5, [r4, #0x14]
005cb640  20 10 83 e2                                      add r1, r3, #0x20
005cb644  08 20 82 e2                                      add r2, r2, #8
005cb648  0c 00 83 e2                                      add r0, r3, #0xc
005cb64c  34 30 83 e2                                      add r3, r3, #0x34
005cb650  00 00 84 e5                                      str r0, [r4]
005cb654  48 30 84 e5                                      str r3, [r4, #0x48]
005cb658  08 10 84 e5                                      str r1, [r4, #8]
005cb65c  0c 20 84 e5                                      str r2, [r4, #0xc]
005cb660  18 50 84 e5                                      str r5, [r4, #0x18]
005cb664  1c 50 84 e5                                      str r5, [r4, #0x1c]
005cb668  20 50 84 e5                                      str r5, [r4, #0x20]
005cb66c  24 50 84 e5                                      str r5, [r4, #0x24]
005cb670  28 00 84 e2                                      add r0, r4, #0x28
005cb674  f5 f5 04 eb                                      bl #0x708e50
005cb678  58 20 9f e5                                      ldr r2, [pc, #0x58]
005cb67c  30 30 84 e2                                      add r3, r4, #0x30
005cb680  18 10 a0 e3                                      mov r1, #0x18
005cb684  02 20 96 e7                                      ldr r2, [r6, r2]
005cb688  2c 10 84 e5                                      str r1, [r4, #0x2c]
005cb68c  03 00 a0 e1                                      mov r0, r3
005cb690  08 20 82 e2                                      add r2, r2, #8
005cb694  0c 20 84 e5                                      str r2, [r4, #0xc]
005cb698  40 30 84 e5                                      str r3, [r4, #0x40]
005cb69c  44 30 84 e5                                      str r3, [r4, #0x44]
005cb6a0  10 10 a0 e3                                      mov r1, #0x10
005cb6a4  bf 54 f5 eb                                      bl #0x3209a8
005cb6a8  40 30 94 e5                                      ldr r3, [r4, #0x40]
005cb6ac  08 00 a0 e1                                      mov r0, r8
005cb6b0  0c 10 84 e2                                      add r1, r4, #0xc
005cb6b4  00 50 c3 e5                                      strb r5, [r3]
005cb6b8  79 5e f5 eb                                      bl #0x3230a4
005cb6bc  04 00 a0 e1                                      mov r0, r4
005cb6c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005cb6c4  18 95 3c 00 68 1a 00 00 30 37 00 00 d0 08 00 00  .byte 0x18, 0x95, 0x3c, 0x00, 0x68, 0x1a, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00, 0xd0, 0x08, 0x00, 0x00
005cb6d4  b4 07 00 00 80 47 00 00                          .byte 0xb4, 0x07, 0x00, 0x00, 0x80, 0x47, 0x00, 0x00

; FUNCTION 0x005d4588, declared_size=384, range_size=384, mode=arm
; class-group: std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt18basic_stringstreamIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEEC1Ei.clone.4
; demangled: std::basic_stringstream<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >::basic_stringstream(int) [clone .clone.4]
; decoder-mode: arm
005d4588  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005d458c  48 80 80 e2                                      add r8, r0, #0x48
005d4590  00 40 a0 e1                                      mov r4, r0
005d4594  54 61 9f e5                                      ldr r6, [pc, #0x154]
005d4598  08 00 a0 e1                                      mov r0, r8
005d459c  67 d2 04 eb                                      bl #0x708f40
005d45a0  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
005d45a4  06 60 8f e0                                      add r6, pc, r6
005d45a8  48 31 9f e5                                      ldr r3, [pc, #0x148]
005d45ac  02 70 96 e7                                      ldr r7, [r6, r2]
005d45b0  00 50 a0 e3                                      mov r5, #0
005d45b4  03 30 96 e7                                      ldr r3, [r6, r3]
005d45b8  08 10 97 e5                                      ldr r1, [r7, #8]
005d45bc  0c 20 97 e5                                      ldr r2, [r7, #0xc]
005d45c0  08 30 83 e2                                      add r3, r3, #8
005d45c4  48 30 84 e5                                      str r3, [r4, #0x48]
005d45c8  44 50 c8 e5                                      strb r5, [r8, #0x44]
005d45cc  48 50 88 e5                                      str r5, [r8, #0x48]
005d45d0  4c 50 88 e5                                      str r5, [r8, #0x4c]
005d45d4  00 10 84 e5                                      str r1, [r4]
005d45d8  0c 30 11 e5                                      ldr r3, [r1, #-0xc]
005d45dc  05 10 a0 e1                                      mov r1, r5
005d45e0  03 20 84 e7                                      str r2, [r4, r3]
005d45e4  00 30 94 e5                                      ldr r3, [r4]
005d45e8  04 50 84 e5                                      str r5, [r4, #4]
005d45ec  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
005d45f0  00 00 84 e0                                      add r0, r4, r0
005d45f4  aa 3a f5 eb                                      bl #0x3230a4
005d45f8  10 20 97 e5                                      ldr r2, [r7, #0x10]
005d45fc  04 30 a0 e1                                      mov r3, r4
005d4600  14 00 97 e5                                      ldr r0, [r7, #0x14]
005d4604  08 20 a3 e5                                      str r2, [r3, #8]!
005d4608  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
005d460c  05 10 a0 e1                                      mov r1, r5
005d4610  02 00 83 e7                                      str r0, [r3, r2]
005d4614  08 20 94 e5                                      ldr r2, [r4, #8]
005d4618  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
005d461c  00 00 83 e0                                      add r0, r3, r0
005d4620  9f 3a f5 eb                                      bl #0x3230a4
005d4624  04 30 97 e5                                      ldr r3, [r7, #4]
005d4628  18 00 97 e5                                      ldr r0, [r7, #0x18]
005d462c  1c 20 97 e5                                      ldr r2, [r7, #0x1c]
005d4630  00 30 84 e5                                      str r3, [r4]
005d4634  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
005d4638  05 10 a0 e1                                      mov r1, r5
005d463c  03 00 84 e7                                      str r0, [r4, r3]
005d4640  00 30 94 e5                                      ldr r3, [r4]
005d4644  08 20 84 e5                                      str r2, [r4, #8]
005d4648  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
005d464c  00 00 84 e0                                      add r0, r4, r0
005d4650  93 3a f5 eb                                      bl #0x3230a4
005d4654  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
005d4658  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
005d465c  10 50 84 e5                                      str r5, [r4, #0x10]
005d4660  03 30 96 e7                                      ldr r3, [r6, r3]
005d4664  02 20 96 e7                                      ldr r2, [r6, r2]
005d4668  14 50 84 e5                                      str r5, [r4, #0x14]
005d466c  20 10 83 e2                                      add r1, r3, #0x20
005d4670  08 20 82 e2                                      add r2, r2, #8
005d4674  0c 00 83 e2                                      add r0, r3, #0xc
005d4678  34 30 83 e2                                      add r3, r3, #0x34
005d467c  00 00 84 e5                                      str r0, [r4]
005d4680  48 30 84 e5                                      str r3, [r4, #0x48]
005d4684  08 10 84 e5                                      str r1, [r4, #8]
005d4688  0c 20 84 e5                                      str r2, [r4, #0xc]
005d468c  18 50 84 e5                                      str r5, [r4, #0x18]
005d4690  1c 50 84 e5                                      str r5, [r4, #0x1c]
005d4694  20 50 84 e5                                      str r5, [r4, #0x20]
005d4698  24 50 84 e5                                      str r5, [r4, #0x24]
005d469c  28 00 84 e2                                      add r0, r4, #0x28
005d46a0  ea d1 04 eb                                      bl #0x708e50
005d46a4  58 20 9f e5                                      ldr r2, [pc, #0x58]
005d46a8  30 30 84 e2                                      add r3, r4, #0x30
005d46ac  18 10 a0 e3                                      mov r1, #0x18
005d46b0  02 20 96 e7                                      ldr r2, [r6, r2]
005d46b4  2c 10 84 e5                                      str r1, [r4, #0x2c]
005d46b8  03 00 a0 e1                                      mov r0, r3
005d46bc  08 20 82 e2                                      add r2, r2, #8
005d46c0  0c 20 84 e5                                      str r2, [r4, #0xc]
005d46c4  40 30 84 e5                                      str r3, [r4, #0x40]
005d46c8  44 30 84 e5                                      str r3, [r4, #0x44]
005d46cc  10 10 a0 e3                                      mov r1, #0x10
005d46d0  b4 30 f5 eb                                      bl #0x3209a8
005d46d4  40 30 94 e5                                      ldr r3, [r4, #0x40]
005d46d8  08 00 a0 e1                                      mov r0, r8
005d46dc  0c 10 84 e2                                      add r1, r4, #0xc
005d46e0  00 50 c3 e5                                      strb r5, [r3]
005d46e4  6e 3a f5 eb                                      bl #0x3230a4
005d46e8  04 00 a0 e1                                      mov r0, r4
005d46ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
005d46f0  ec 04 3c 00 68 1a 00 00 30 37 00 00 d0 08 00 00  .byte 0xec, 0x04, 0x3c, 0x00, 0x68, 0x1a, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00, 0xd0, 0x08, 0x00, 0x00
005d4700  b4 07 00 00 80 47 00 00                          .byte 0xb4, 0x07, 0x00, 0x00, 0x80, 0x47, 0x00, 0x00
