; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008715d8, declared_size=80, range_size=80, mode=arm
; class-group: vox::StringCompare
; alias: _ZNK3vox13StringCompareclERKSbIcSt11char_traitsIcENS_10SAllocatorIcLNS_10VoxMemHintE0EEEES8_
; demangled: vox::StringCompare::operator()(std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const&, std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const&) const
; decoder-mode: arm
008715d8  70 40 2d e9                                      push {r4, r5, r6, lr}
008715dc  14 00 91 e5                                      ldr r0, [r1, #0x14]
008715e0  10 50 91 e5                                      ldr r5, [r1, #0x10]
008715e4  10 40 92 e5                                      ldr r4, [r2, #0x10]
008715e8  14 10 92 e5                                      ldr r1, [r2, #0x14]
008715ec  05 50 60 e0                                      rsb r5, r0, r5
008715f0  04 40 61 e0                                      rsb r4, r1, r4
008715f4  05 00 54 e1                                      cmp r4, r5
008715f8  04 20 a0 b1                                      movlt r2, r4
008715fc  05 20 a0 a1                                      movge r2, r5
00871600  f6 73 ea eb                                      bl #0x30e5e0
00871604  00 00 50 e3                                      cmp r0, #0
00871608  04 00 00 1a                                      bne #0x871620
0087160c  04 00 55 e1                                      cmp r5, r4
00871610  00 00 e0 b3                                      mvnlt r0, #0
00871614  01 00 00 ba                                      blt #0x871620
00871618  00 00 a0 d3                                      movle r0, #0
0087161c  01 00 a0 c3                                      movgt r0, #1
00871620  a0 0f a0 e1                                      lsr r0, r0, #0x1f
00871624  70 80 bd e8                                      pop {r4, r5, r6, pc}
