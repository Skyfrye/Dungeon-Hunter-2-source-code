; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00647290, declared_size=60, range_size=60, mode=arm
; class-group: unsigned int* std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIjN6glitch4core10SAllocatorIjLNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPKjEEPjRjT_SC_
; demangled: unsigned int* std::vector<unsigned int, glitch::core::SAllocator<unsigned int, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<unsigned int const*>(unsigned int&, unsigned int const*, unsigned int const*)
; decoder-mode: arm
00647290  70 40 2d e9                                      push {r4, r5, r6, lr}
00647294  00 00 91 e5                                      ldr r0, [r1]
00647298  00 10 a0 e3                                      mov r1, #0
0064729c  02 40 a0 e1                                      mov r4, r2
006472a0  00 01 a0 e1                                      lsl r0, r0, #2
006472a4  03 60 a0 e1                                      mov r6, r3
006472a8  ae 24 f3 eb                                      bl #0x310568
006472ac  06 00 54 e1                                      cmp r4, r6
006472b0  00 50 a0 e1                                      mov r5, r0
006472b4  02 00 00 0a                                      beq #0x6472c4
006472b8  04 10 a0 e1                                      mov r1, r4
006472bc  06 20 64 e0                                      rsb r2, r4, r6
006472c0  68 1d f3 eb                                      bl #0x30e868
006472c4  05 00 a0 e1                                      mov r0, r5
006472c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
