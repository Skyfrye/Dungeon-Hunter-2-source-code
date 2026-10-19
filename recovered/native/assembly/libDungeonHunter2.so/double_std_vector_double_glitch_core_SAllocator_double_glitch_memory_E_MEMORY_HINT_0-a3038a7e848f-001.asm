; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006d0c18, declared_size=60, range_size=60, mode=arm
; class-group: double* std::vector<double, glitch::core::SAllocator<double, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIdN6glitch4core10SAllocatorIdLNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPdEES8_RjT_SA_
; demangled: double* std::vector<double, glitch::core::SAllocator<double, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<double*>(unsigned int&, double*, double*)
; decoder-mode: arm
006d0c18  70 40 2d e9                                      push {r4, r5, r6, lr}
006d0c1c  00 00 91 e5                                      ldr r0, [r1]
006d0c20  00 10 a0 e3                                      mov r1, #0
006d0c24  02 40 a0 e1                                      mov r4, r2
006d0c28  80 01 a0 e1                                      lsl r0, r0, #3
006d0c2c  03 60 a0 e1                                      mov r6, r3
006d0c30  4c fe f0 eb                                      bl #0x310568
006d0c34  06 00 54 e1                                      cmp r4, r6
006d0c38  00 50 a0 e1                                      mov r5, r0
006d0c3c  02 00 00 0a                                      beq #0x6d0c4c
006d0c40  04 10 a0 e1                                      mov r1, r4
006d0c44  06 20 64 e0                                      rsb r2, r4, r6
006d0c48  06 f7 f0 eb                                      bl #0x30e868
006d0c4c  05 00 a0 e1                                      mov r0, r5
006d0c50  70 80 bd e8                                      pop {r4, r5, r6, pc}
