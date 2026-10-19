; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00894bac, declared_size=80, range_size=80, mode=arm
; class-group: vox::StringComp
; alias: _ZNK3vox10StringCompclERKSbIcSt11char_traitsIcENS_10SAllocatorIcLNS_10VoxMemHintE0EEEES8_
; demangled: vox::StringComp::operator()(std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const&, std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const&) const
; decoder-mode: arm
00894bac  70 40 2d e9                                      push {r4, r5, r6, lr}
00894bb0  14 00 91 e5                                      ldr r0, [r1, #0x14]
00894bb4  10 50 91 e5                                      ldr r5, [r1, #0x10]
00894bb8  10 40 92 e5                                      ldr r4, [r2, #0x10]
00894bbc  14 10 92 e5                                      ldr r1, [r2, #0x14]
00894bc0  05 50 60 e0                                      rsb r5, r0, r5
00894bc4  04 40 61 e0                                      rsb r4, r1, r4
00894bc8  05 00 54 e1                                      cmp r4, r5
00894bcc  04 20 a0 b1                                      movlt r2, r4
00894bd0  05 20 a0 a1                                      movge r2, r5
00894bd4  81 e6 e9 eb                                      bl #0x30e5e0
00894bd8  00 00 50 e3                                      cmp r0, #0
00894bdc  04 00 00 1a                                      bne #0x894bf4
00894be0  04 00 55 e1                                      cmp r5, r4
00894be4  00 00 e0 b3                                      mvnlt r0, #0
00894be8  01 00 00 ba                                      blt #0x894bf4
00894bec  00 00 a0 d3                                      movle r0, #0
00894bf0  01 00 a0 c3                                      movgt r0, #1
00894bf4  a0 0f a0 e1                                      lsr r0, r0, #0x1f
00894bf8  70 80 bd e8                                      pop {r4, r5, r6, pc}
