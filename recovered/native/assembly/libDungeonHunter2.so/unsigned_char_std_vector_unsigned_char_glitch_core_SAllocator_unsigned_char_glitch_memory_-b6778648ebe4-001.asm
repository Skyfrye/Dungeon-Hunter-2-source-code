; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00579e6c, declared_size=56, range_size=56, mode=arm
; class-group: unsigned char* std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIhN6glitch4core10SAllocatorIhLNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPhEES8_RjT_SA_
; demangled: unsigned char* std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<unsigned char*>(unsigned int&, unsigned char*, unsigned char*)
; decoder-mode: arm
00579e6c  70 40 2d e9                                      push {r4, r5, r6, lr}
00579e70  00 00 91 e5                                      ldr r0, [r1]
00579e74  00 10 a0 e3                                      mov r1, #0
00579e78  02 40 a0 e1                                      mov r4, r2
00579e7c  03 60 a0 e1                                      mov r6, r3
00579e80  b8 59 f6 eb                                      bl #0x310568
00579e84  06 00 54 e1                                      cmp r4, r6
00579e88  00 50 a0 e1                                      mov r5, r0
00579e8c  02 00 00 0a                                      beq #0x579e9c
00579e90  04 10 a0 e1                                      mov r1, r4
00579e94  06 20 64 e0                                      rsb r2, r4, r6
00579e98  72 52 f6 eb                                      bl #0x30e868
00579e9c  05 00 a0 e1                                      mov r0, r5
00579ea0  70 80 bd e8                                      pop {r4, r5, r6, pc}
