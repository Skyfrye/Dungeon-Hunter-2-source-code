; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088b778, declared_size=80, range_size=80, mode=arm
; class-group: vox::stringcomp
; alias: _ZNK3vox10stringcompclERKSbIcSt11char_traitsIcENS_10SAllocatorIcLNS_10VoxMemHintE0EEEES8_
; demangled: vox::stringcomp::operator()(std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const&, std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const&) const
; decoder-mode: arm
0088b778  70 40 2d e9                                      push {r4, r5, r6, lr}
0088b77c  14 00 91 e5                                      ldr r0, [r1, #0x14]
0088b780  10 50 91 e5                                      ldr r5, [r1, #0x10]
0088b784  10 40 92 e5                                      ldr r4, [r2, #0x10]
0088b788  14 10 92 e5                                      ldr r1, [r2, #0x14]
0088b78c  05 50 60 e0                                      rsb r5, r0, r5
0088b790  04 40 61 e0                                      rsb r4, r1, r4
0088b794  05 00 54 e1                                      cmp r4, r5
0088b798  04 20 a0 b1                                      movlt r2, r4
0088b79c  05 20 a0 a1                                      movge r2, r5
0088b7a0  8e 0b ea eb                                      bl #0x30e5e0
0088b7a4  00 00 50 e3                                      cmp r0, #0
0088b7a8  04 00 00 1a                                      bne #0x88b7c0
0088b7ac  04 00 55 e1                                      cmp r5, r4
0088b7b0  00 00 e0 b3                                      mvnlt r0, #0
0088b7b4  01 00 00 ba                                      blt #0x88b7c0
0088b7b8  00 00 a0 d3                                      movle r0, #0
0088b7bc  01 00 a0 c3                                      movgt r0, #1
0088b7c0  a0 0f a0 e1                                      lsr r0, r0, #0x1f
0088b7c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
