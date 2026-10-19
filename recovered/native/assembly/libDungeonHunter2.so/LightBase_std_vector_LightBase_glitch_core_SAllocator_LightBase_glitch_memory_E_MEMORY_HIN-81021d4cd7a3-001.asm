; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00352118, declared_size=60, range_size=60, mode=arm
; class-group: LightBase** std::vector<LightBase*, glitch::core::SAllocator<LightBase*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIP9LightBaseN6glitch4core10SAllocatorIS1_LNS2_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPKS1_EEPS1_RjT_SE_
; demangled: LightBase** std::vector<LightBase*, glitch::core::SAllocator<LightBase*, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<LightBase* const*>(unsigned int&, LightBase* const*, LightBase* const*)
; decoder-mode: arm
00352118  70 40 2d e9                                      push {r4, r5, r6, lr}
0035211c  00 00 91 e5                                      ldr r0, [r1]
00352120  00 10 a0 e3                                      mov r1, #0
00352124  02 40 a0 e1                                      mov r4, r2
00352128  00 01 a0 e1                                      lsl r0, r0, #2
0035212c  03 60 a0 e1                                      mov r6, r3
00352130  0c f9 fe eb                                      bl #0x310568
00352134  06 00 54 e1                                      cmp r4, r6
00352138  00 50 a0 e1                                      mov r5, r0
0035213c  02 00 00 0a                                      beq #0x35214c
00352140  04 10 a0 e1                                      mov r1, r4
00352144  06 20 64 e0                                      rsb r2, r4, r6
00352148  c6 f1 fe eb                                      bl #0x30e868
0035214c  05 00 a0 e1                                      mov r0, r5
00352150  70 80 bd e8                                      pop {r4, r5, r6, pc}
