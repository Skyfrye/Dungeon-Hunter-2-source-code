; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0065fe50, declared_size=60, range_size=60, mode=arm
; class-group: int* std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIiN6glitch4core10SAllocatorIiLNS0_6memory13E_MEMORY_HINTE0EEEE20_M_allocate_and_copyIPiEES8_RjT_SA_
; demangled: int* std::vector<int, glitch::core::SAllocator<int, (glitch::memory::E_MEMORY_HINT)0> >::_M_allocate_and_copy<int*>(unsigned int&, int*, int*)
; decoder-mode: arm
0065fe50  70 40 2d e9                                      push {r4, r5, r6, lr}
0065fe54  00 00 91 e5                                      ldr r0, [r1]
0065fe58  00 10 a0 e3                                      mov r1, #0
0065fe5c  02 40 a0 e1                                      mov r4, r2
0065fe60  00 01 a0 e1                                      lsl r0, r0, #2
0065fe64  03 60 a0 e1                                      mov r6, r3
0065fe68  be c1 f2 eb                                      bl #0x310568
0065fe6c  06 00 54 e1                                      cmp r4, r6
0065fe70  00 50 a0 e1                                      mov r5, r0
0065fe74  02 00 00 0a                                      beq #0x65fe84
0065fe78  04 10 a0 e1                                      mov r1, r4
0065fe7c  06 20 64 e0                                      rsb r2, r4, r6
0065fe80  78 ba f2 eb                                      bl #0x30e868
0065fe84  05 00 a0 e1                                      mov r0, r5
0065fe88  70 80 bd e8                                      pop {r4, r5, r6, pc}
