; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006db38c, declared_size=52, range_size=52, mode=arm
; class-group: std::map<char const*, glitch::video::E_VERTEX_ATTRIBUTE, glitch::core::SStringLess, glitch::core::SAllocator<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt3mapIPKcN6glitch5video18E_VERTEX_ATTRIBUTEENS2_4core11SStringLessENS5_10SAllocatorISt4pairIKS1_S4_ELNS2_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::map<char const*, glitch::video::E_VERTEX_ATTRIBUTE, glitch::core::SStringLess, glitch::core::SAllocator<std::pair<char const* const, glitch::video::E_VERTEX_ATTRIBUTE>, (glitch::memory::E_MEMORY_HINT)0> >::~map()
; decoder-mode: arm
006db38c  10 40 2d e9                                      push {r4, lr}
006db390  10 30 90 e5                                      ldr r3, [r0, #0x10]
006db394  00 40 a0 e1                                      mov r4, r0
006db398  00 00 53 e3                                      cmp r3, #0
006db39c  05 00 00 0a                                      beq #0x6db3b8
006db3a0  04 10 90 e5                                      ldr r1, [r0, #4]
006db3a4  eb ff ff eb                                      bl #0x6db358
006db3a8  00 30 a0 e3                                      mov r3, #0
006db3ac  10 30 84 e5                                      str r3, [r4, #0x10]
006db3b0  18 00 84 e9                                      stmib r4, {r3, r4}
006db3b4  0c 40 84 e5                                      str r4, [r4, #0xc]
006db3b8  04 00 a0 e1                                      mov r0, r4
006db3bc  10 80 bd e8                                      pop {r4, pc}
