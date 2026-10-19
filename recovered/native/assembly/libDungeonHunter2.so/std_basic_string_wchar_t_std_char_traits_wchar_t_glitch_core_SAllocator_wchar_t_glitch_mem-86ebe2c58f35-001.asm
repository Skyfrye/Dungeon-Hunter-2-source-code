; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00562f28, declared_size=80, range_size=80, mode=arm
; class-group: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >* std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISbIwSt11char_traitsIwEN6glitch4core10SAllocatorIwLNS2_6memory13E_MEMORY_HINTE0EEEENS4_IS8_LS6_0EEEE20_M_allocate_and_copyIPKS8_EEPS8_RjT_SG_
; demangled: std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >* std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const*>(unsigned int&, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const*, std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> > const*)
; decoder-mode: arm
00562f28  70 40 2d e9                                      push {r4, r5, r6, lr}
00562f2c  00 00 91 e5                                      ldr r0, [r1]
00562f30  48 c0 a0 e3                                      mov ip, #0x48
00562f34  10 d0 4d e2                                      sub sp, sp, #0x10
00562f38  00 10 a0 e3                                      mov r1, #0
00562f3c  9c 00 00 e0                                      mul r0, ip, r0
00562f40  02 50 a0 e1                                      mov r5, r2
00562f44  03 60 a0 e1                                      mov r6, r3
00562f48  86 b5 f6 eb                                      bl #0x310568
00562f4c  00 40 a0 e1                                      mov r4, r0
00562f50  00 c0 a0 e3                                      mov ip, #0
00562f54  06 10 a0 e1                                      mov r1, r6
00562f58  05 00 a0 e1                                      mov r0, r5
00562f5c  04 20 a0 e1                                      mov r2, r4
00562f60  0c 30 8d e2                                      add r3, sp, #0xc
00562f64  00 c0 8d e5                                      str ip, [sp]
00562f68  a3 ff ff eb                                      bl #0x562dfc
00562f6c  04 00 a0 e1                                      mov r0, r4
00562f70  10 d0 8d e2                                      add sp, sp, #0x10
00562f74  70 80 bd e8                                      pop {r4, r5, r6, pc}
