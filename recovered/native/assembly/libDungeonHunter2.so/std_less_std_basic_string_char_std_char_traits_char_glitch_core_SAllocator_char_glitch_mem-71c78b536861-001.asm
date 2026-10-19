; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056c2f8, declared_size=80, range_size=80, mode=arm
; class-group: std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >
; alias: _ZNKSt4lessISbIcSt11char_traitsIcEN6glitch4core10SAllocatorIcLNS2_6memory13E_MEMORY_HINTE0EEEEEclERKS8_SB_
; demangled: std::less<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > >::operator()(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&) const
; decoder-mode: arm
0056c2f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0056c2fc  14 00 91 e5                                      ldr r0, [r1, #0x14]
0056c300  10 50 91 e5                                      ldr r5, [r1, #0x10]
0056c304  10 40 92 e5                                      ldr r4, [r2, #0x10]
0056c308  14 10 92 e5                                      ldr r1, [r2, #0x14]
0056c30c  05 50 60 e0                                      rsb r5, r0, r5
0056c310  04 40 61 e0                                      rsb r4, r1, r4
0056c314  05 00 54 e1                                      cmp r4, r5
0056c318  04 20 a0 b1                                      movlt r2, r4
0056c31c  05 20 a0 a1                                      movge r2, r5
0056c320  ae 88 f6 eb                                      bl #0x30e5e0
0056c324  00 00 50 e3                                      cmp r0, #0
0056c328  04 00 00 1a                                      bne #0x56c340
0056c32c  04 00 55 e1                                      cmp r5, r4
0056c330  00 00 e0 b3                                      mvnlt r0, #0
0056c334  01 00 00 ba                                      blt #0x56c340
0056c338  00 00 a0 d3                                      movle r0, #0
0056c33c  01 00 a0 c3                                      movgt r0, #1
0056c340  a0 0f a0 e1                                      lsr r0, r0, #0x1f
0056c344  70 80 bd e8                                      pop {r4, r5, r6, pc}
