; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065a440, declared_size=396, range_size=396, mode=arm
; class-group: glitch::collada::CResFile*& std::map<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::collada::CResFile*, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt3mapISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEEPNS2_7collada8CResFileESt4lessIS8_ENS4_ISt4pairIKS8_SB_ELS6_0EEEEixIS8_EERSB_RKT_
; demangled: glitch::collada::CResFile*& std::map<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::collada::CResFile*, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >::operator[]<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
0065a440  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065a444  78 51 9f e5                                      ldr r5, [pc, #0x178]
0065a448  78 21 9f e5                                      ldr r2, [pc, #0x178]
0065a44c  34 d0 4d e2                                      sub sp, sp, #0x34
0065a450  05 50 8f e0                                      add r5, pc, r5
0065a454  02 30 95 e7                                      ldr r3, [r5, r2]
0065a458  04 20 8d e5                                      str r2, [sp, #4]
0065a45c  04 40 90 e5                                      ldr r4, [r0, #4]
0065a460  00 30 93 e5                                      ldr r3, [r3]
0065a464  00 90 a0 e1                                      mov sb, r0
0065a468  00 00 54 e3                                      cmp r4, #0
0065a46c  2c 30 8d e5                                      str r3, [sp, #0x2c]
0065a470  4e 00 00 0a                                      beq #0x65a5b0
0065a474  10 b0 91 e5                                      ldr fp, [r1, #0x10]
0065a478  14 a0 91 e5                                      ldr sl, [r1, #0x14]
0065a47c  00 80 a0 e1                                      mov r8, r0
0065a480  0b 70 6a e0                                      rsb r7, sl, fp
0065a484  24 30 94 e5                                      ldr r3, [r4, #0x24]
0065a488  20 60 94 e5                                      ldr r6, [r4, #0x20]
0065a48c  0a 10 a0 e1                                      mov r1, sl
0065a490  03 00 a0 e1                                      mov r0, r3
0065a494  06 60 63 e0                                      rsb r6, r3, r6
0065a498  06 00 57 e1                                      cmp r7, r6
0065a49c  07 20 a0 b1                                      movlt r2, r7
0065a4a0  06 20 a0 a1                                      movge r2, r6
0065a4a4  4d d0 f2 eb                                      bl #0x30e5e0
0065a4a8  00 00 50 e3                                      cmp r0, #0
0065a4ac  07 00 00 1a                                      bne #0x65a4d0
0065a4b0  07 00 56 e1                                      cmp r6, r7
0065a4b4  06 00 00 ba                                      blt #0x65a4d4
0065a4b8  08 30 94 e5                                      ldr r3, [r4, #8]
0065a4bc  00 00 53 e3                                      cmp r3, #0
0065a4c0  07 00 00 0a                                      beq #0x65a4e4
0065a4c4  04 80 a0 e1                                      mov r8, r4
0065a4c8  03 40 a0 e1                                      mov r4, r3
0065a4cc  ec ff ff ea                                      b #0x65a484
0065a4d0  f8 ff ff aa                                      bge #0x65a4b8
0065a4d4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0065a4d8  08 40 a0 e1                                      mov r4, r8
0065a4dc  00 00 53 e3                                      cmp r3, #0
0065a4e0  f7 ff ff 1a                                      bne #0x65a4c4
0065a4e4  04 00 59 e1                                      cmp sb, r4
0065a4e8  0e 00 00 0a                                      beq #0x65a528
0065a4ec  24 30 94 e5                                      ldr r3, [r4, #0x24]
0065a4f0  20 70 94 e5                                      ldr r7, [r4, #0x20]
0065a4f4  0b 60 6a e0                                      rsb r6, sl, fp
0065a4f8  03 10 a0 e1                                      mov r1, r3
0065a4fc  07 70 63 e0                                      rsb r7, r3, r7
0065a500  06 00 57 e1                                      cmp r7, r6
0065a504  07 20 a0 b1                                      movlt r2, r7
0065a508  06 20 a0 a1                                      movge r2, r6
0065a50c  0a 00 a0 e1                                      mov r0, sl
0065a510  32 d0 f2 eb                                      bl #0x30e5e0
0065a514  00 00 50 e3                                      cmp r0, #0
0065a518  04 00 a0 e1                                      mov r0, r4
0065a51c  21 00 00 1a                                      bne #0x65a5a8
0065a520  07 00 56 e1                                      cmp r6, r7
0065a524  16 00 00 aa                                      bge #0x65a584
0065a528  10 60 8d e2                                      add r6, sp, #0x10
0065a52c  0a 10 a0 e1                                      mov r1, sl
0065a530  0b 20 a0 e1                                      mov r2, fp
0065a534  06 00 a0 e1                                      mov r0, r6
0065a538  20 60 8d e5                                      str r6, [sp, #0x20]
0065a53c  24 60 8d e5                                      str r6, [sp, #0x24]
0065a540  ab 2e f3 eb                                      bl #0x325ff4
0065a544  0c 00 8d e2                                      add r0, sp, #0xc
0065a548  00 c0 a0 e3                                      mov ip, #0
0065a54c  09 10 a0 e1                                      mov r1, sb
0065a550  08 20 8d e2                                      add r2, sp, #8
0065a554  06 30 a0 e1                                      mov r3, r6
0065a558  08 40 8d e5                                      str r4, [sp, #8]
0065a55c  28 c0 8d e5                                      str ip, [sp, #0x28]
0065a560  75 fe ff eb                                      bl #0x659f3c
0065a564  24 00 9d e5                                      ldr r0, [sp, #0x24]
0065a568  0c 40 9d e5                                      ldr r4, [sp, #0xc]
0065a56c  06 00 50 e1                                      cmp r0, r6
0065a570  02 00 00 0a                                      beq #0x65a580
0065a574  00 00 50 e3                                      cmp r0, #0
0065a578  00 00 00 0a                                      beq #0x65a580
0065a57c  b3 d7 f2 eb                                      bl #0x310450
0065a580  04 00 a0 e1                                      mov r0, r4
0065a584  04 20 9d e5                                      ldr r2, [sp, #4]
0065a588  28 00 80 e2                                      add r0, r0, #0x28
0065a58c  02 30 95 e7                                      ldr r3, [r5, r2]
0065a590  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0065a594  00 30 93 e5                                      ldr r3, [r3]
0065a598  03 00 52 e1                                      cmp r2, r3
0065a59c  07 00 00 1a                                      bne #0x65a5c0
0065a5a0  34 d0 8d e2                                      add sp, sp, #0x34
0065a5a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065a5a8  de ff ff ba                                      blt #0x65a528
0065a5ac  f4 ff ff ea                                      b #0x65a584
0065a5b0  10 b0 91 e5                                      ldr fp, [r1, #0x10]
0065a5b4  14 a0 91 e5                                      ldr sl, [r1, #0x14]
0065a5b8  00 40 a0 e1                                      mov r4, r0
0065a5bc  c8 ff ff ea                                      b #0x65a4e4
0065a5c0  52 cf f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0065a5c4  40 a6 33 00 ac 40 00 00                          .byte 0x40, 0xa6, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0065a5cc, declared_size=380, range_size=380, mode=arm
; class-group: glitch::collada::CResFile*& std::map<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::collada::CResFile*, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt3mapISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEEPNS2_7collada8CResFileESt4lessIS8_ENS4_ISt4pairIKS8_SB_ELS6_0EEEEixIPKcEERSB_RKT_
; demangled: glitch::collada::CResFile*& std::map<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::collada::CResFile*, std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >, glitch::core::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const, glitch::collada::CResFile*>, (glitch::memory::E_MEMORY_HINT)0> >::operator[]<char const*>(char const* const&)
; decoder-mode: arm
0065a5cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0065a5d0  68 41 9f e5                                      ldr r4, [pc, #0x168]
0065a5d4  68 71 9f e5                                      ldr r7, [pc, #0x168]
0065a5d8  6c d0 4d e2                                      sub sp, sp, #0x6c
0065a5dc  04 40 8f e0                                      add r4, pc, r4
0065a5e0  07 30 94 e7                                      ldr r3, [r4, r7]
0065a5e4  00 80 a0 e1                                      mov r8, r0
0065a5e8  01 a0 a0 e1                                      mov sl, r1
0065a5ec  00 30 93 e5                                      ldr r3, [r3]
0065a5f0  64 30 8d e5                                      str r3, [sp, #0x64]
0065a5f4  5b fc ff eb                                      bl #0x659768
0065a5f8  08 00 50 e1                                      cmp r0, r8
0065a5fc  00 50 a0 e1                                      mov r5, r0
0065a600  23 00 00 0a                                      beq #0x65a694
0065a604  4c 30 8d e2                                      add r3, sp, #0x4c
0065a608  00 10 9a e5                                      ldr r1, [sl]
0065a60c  03 00 a0 e1                                      mov r0, r3
0065a610  14 20 8d e2                                      add r2, sp, #0x14
0065a614  04 30 8d e5                                      str r3, [sp, #4]
0065a618  87 2e f3 eb                                      bl #0x32603c
0065a61c  24 20 95 e5                                      ldr r2, [r5, #0x24]
0065a620  60 60 9d e5                                      ldr r6, [sp, #0x60]
0065a624  20 b0 95 e5                                      ldr fp, [r5, #0x20]
0065a628  5c 90 9d e5                                      ldr sb, [sp, #0x5c]
0065a62c  02 10 a0 e1                                      mov r1, r2
0065a630  0b b0 62 e0                                      rsb fp, r2, fp
0065a634  09 90 66 e0                                      rsb sb, r6, sb
0065a638  09 00 5b e1                                      cmp fp, sb
0065a63c  0b 20 a0 b1                                      movlt r2, fp
0065a640  09 20 a0 a1                                      movge r2, sb
0065a644  06 00 a0 e1                                      mov r0, r6
0065a648  e4 cf f2 eb                                      bl #0x30e5e0
0065a64c  00 00 50 e3                                      cmp r0, #0
0065a650  05 20 a0 e1                                      mov r2, r5
0065a654  04 30 9d e5                                      ldr r3, [sp, #4]
0065a658  a0 9f a0 11                                      lsrne sb, r0, #0x1f
0065a65c  02 00 00 1a                                      bne #0x65a66c
0065a660  0b 00 59 e1                                      cmp sb, fp
0065a664  00 90 a0 a3                                      movge sb, #0
0065a668  01 90 a0 b3                                      movlt sb, #1
0065a66c  03 00 56 e1                                      cmp r6, r3
0065a670  05 00 00 0a                                      beq #0x65a68c
0065a674  00 00 56 e3                                      cmp r6, #0
0065a678  03 00 00 0a                                      beq #0x65a68c
0065a67c  06 00 a0 e1                                      mov r0, r6
0065a680  04 20 8d e5                                      str r2, [sp, #4]
0065a684  71 d7 f2 eb                                      bl #0x310450
0065a688  04 20 9d e5                                      ldr r2, [sp, #4]
0065a68c  00 00 59 e3                                      cmp sb, #0
0065a690  21 00 00 0a                                      beq #0x65a71c
0065a694  34 90 8d e2                                      add sb, sp, #0x34
0065a698  18 60 8d e2                                      add r6, sp, #0x18
0065a69c  00 10 9a e5                                      ldr r1, [sl]
0065a6a0  10 20 8d e2                                      add r2, sp, #0x10
0065a6a4  09 00 a0 e1                                      mov r0, sb
0065a6a8  63 2e f3 eb                                      bl #0x32603c
0065a6ac  06 00 a0 e1                                      mov r0, r6
0065a6b0  48 10 9d e5                                      ldr r1, [sp, #0x48]
0065a6b4  44 20 9d e5                                      ldr r2, [sp, #0x44]
0065a6b8  28 60 8d e5                                      str r6, [sp, #0x28]
0065a6bc  2c 60 8d e5                                      str r6, [sp, #0x2c]
0065a6c0  4b 2e f3 eb                                      bl #0x325ff4
0065a6c4  0c 00 8d e2                                      add r0, sp, #0xc
0065a6c8  00 c0 a0 e3                                      mov ip, #0
0065a6cc  08 10 a0 e1                                      mov r1, r8
0065a6d0  08 20 8d e2                                      add r2, sp, #8
0065a6d4  06 30 a0 e1                                      mov r3, r6
0065a6d8  08 50 8d e5                                      str r5, [sp, #8]
0065a6dc  30 c0 8d e5                                      str ip, [sp, #0x30]
0065a6e0  15 fe ff eb                                      bl #0x659f3c
0065a6e4  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0065a6e8  0c 50 9d e5                                      ldr r5, [sp, #0xc]
0065a6ec  06 00 50 e1                                      cmp r0, r6
0065a6f0  02 00 00 0a                                      beq #0x65a700
0065a6f4  00 00 50 e3                                      cmp r0, #0
0065a6f8  00 00 00 0a                                      beq #0x65a700
0065a6fc  53 d7 f2 eb                                      bl #0x310450
0065a700  48 00 9d e5                                      ldr r0, [sp, #0x48]
0065a704  09 00 50 e1                                      cmp r0, sb
0065a708  02 00 00 0a                                      beq #0x65a718
0065a70c  00 00 50 e3                                      cmp r0, #0
0065a710  00 00 00 0a                                      beq #0x65a718
0065a714  4d d7 f2 eb                                      bl #0x310450
0065a718  05 20 a0 e1                                      mov r2, r5
0065a71c  07 30 94 e7                                      ldr r3, [r4, r7]
0065a720  64 10 9d e5                                      ldr r1, [sp, #0x64]
0065a724  28 00 82 e2                                      add r0, r2, #0x28
0065a728  00 30 93 e5                                      ldr r3, [r3]
0065a72c  03 00 51 e1                                      cmp r1, r3
0065a730  01 00 00 1a                                      bne #0x65a73c
0065a734  6c d0 8d e2                                      add sp, sp, #0x6c
0065a738  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0065a73c  f3 ce f2 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0065a740  b4 a4 33 00 ac 40 00 00                          .byte 0xb4, 0xa4, 0x33, 0x00, 0xac, 0x40, 0x00, 0x00
