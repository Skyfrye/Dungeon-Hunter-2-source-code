; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0057adc0, declared_size=56, range_size=56, mode=arm
; class-group: unsigned int* std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >
; alias: _ZNSt6vectorIjN6glitch4core23SProcessBufferAllocatorIjEEE20_M_allocate_and_copyIPjEES6_RjT_S8_
; demangled: unsigned int* std::vector<unsigned int, glitch::core::SProcessBufferAllocator<unsigned int> >::_M_allocate_and_copy<unsigned int*>(unsigned int&, unsigned int*, unsigned int*)
; decoder-mode: arm
0057adc0  70 40 2d e9                                      push {r4, r5, r6, lr}
0057adc4  00 00 91 e5                                      ldr r0, [r1]
0057adc8  02 60 a0 e1                                      mov r6, r2
0057adcc  03 50 a0 e1                                      mov r5, r3
0057add0  00 01 a0 e1                                      lsl r0, r0, #2
0057add4  06 e6 fe eb                                      bl #0x5345f4
0057add8  05 00 56 e1                                      cmp r6, r5
0057addc  00 40 a0 e1                                      mov r4, r0
0057ade0  02 00 00 0a                                      beq #0x57adf0
0057ade4  06 10 a0 e1                                      mov r1, r6
0057ade8  05 20 66 e0                                      rsb r2, r6, r5
0057adec  9d 4e f6 eb                                      bl #0x30e868
0057adf0  04 00 a0 e1                                      mov r0, r4
0057adf4  70 80 bd e8                                      pop {r4, r5, r6, pc}
