; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065fc88, declared_size=60, range_size=60, mode=arm
; class-group: void** std::vector<void*, glitch::core::SAllocator<void*, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIPvN6glitch4core10SAllocatorIS0_LNS1_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPS0_EES9_RjT_SB_
; demangled: void** std::vector<void*, glitch::core::SAllocator<void*, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<void**>(unsigned int&, void**, void**)
; decoder-mode: arm
0065fc88  70 40 2d e9                                      push {r4, r5, r6, lr}
0065fc8c  00 00 91 e5                                      ldr r0, [r1]
0065fc90  00 10 a0 e3                                      mov r1, #0
0065fc94  02 40 a0 e1                                      mov r4, r2
0065fc98  00 01 a0 e1                                      lsl r0, r0, #2
0065fc9c  03 60 a0 e1                                      mov r6, r3
0065fca0  30 c2 f2 eb                                      bl #0x310568
0065fca4  06 00 54 e1                                      cmp r4, r6
0065fca8  00 50 a0 e1                                      mov r5, r0
0065fcac  02 00 00 0a                                      beq #0x65fcbc
0065fcb0  04 10 a0 e1                                      mov r1, r4
0065fcb4  06 20 64 e0                                      rsb r2, r4, r6
0065fcb8  ea ba f2 eb                                      bl #0x30e868
0065fcbc  05 00 a0 e1                                      mov r0, r5
0065fcc0  70 80 bd e8                                      pop {r4, r5, r6, pc}
