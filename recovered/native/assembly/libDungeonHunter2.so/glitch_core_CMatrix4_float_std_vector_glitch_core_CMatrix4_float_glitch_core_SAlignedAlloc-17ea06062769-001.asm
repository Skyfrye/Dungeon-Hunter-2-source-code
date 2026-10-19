; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006f6f88, declared_size=124, range_size=124, mode=arm
; class-group: glitch::core::CMatrix4<float>* std::vector<glitch::core::CMatrix4<float>, glitch::core::SAlignedAllocator<glitch::core::CMatrix4<float>, (unsigned char)4> >
; alias: _ZNSt6vectorIN6glitch4core8CMatrix4IfEENS1_17SAlignedAllocatorIS3_Lh4EEEE20_M_allocate_and_copyIPKS3_EEPS3_RjT_SC_
; demangled: glitch::core::CMatrix4<float>* std::vector<glitch::core::CMatrix4<float>, glitch::core::SAlignedAllocator<glitch::core::CMatrix4<float>, (unsigned char)4> >::_M_allocate_and_copy<glitch::core::CMatrix4<float> const*>(unsigned int&, glitch::core::CMatrix4<float> const*, glitch::core::CMatrix4<float> const*)
; decoder-mode: arm
006f6f88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006f6f8c  00 10 91 e5                                      ldr r1, [r1]
006f6f90  02 40 a0 e1                                      mov r4, r2
006f6f94  44 20 a0 e3                                      mov r2, #0x44
006f6f98  92 01 01 e0                                      mul r1, r2, r1
006f6f9c  03 50 a0 e1                                      mov r5, r3
006f6fa0  07 00 81 e2                                      add r0, r1, #7
006f6fa4  00 10 a0 e3                                      mov r1, #0
006f6fa8  6e 65 f0 eb                                      bl #0x310568
006f6fac  05 50 64 e0                                      rsb r5, r4, r5
006f6fb0  45 31 a0 e1                                      asr r3, r5, #2
006f6fb4  07 70 80 e2                                      add r7, r0, #7
006f6fb8  03 52 a0 e1                                      lsl r5, r3, #4
006f6fbc  05 50 63 e0                                      rsb r5, r3, r5
006f6fc0  05 54 85 e0                                      add r5, r5, r5, lsl #8
006f6fc4  03 70 c7 e3                                      bic r7, r7, #3
006f6fc8  05 58 85 e0                                      add r5, r5, r5, lsl #16
006f6fcc  04 00 07 e5                                      str r0, [r7, #-4]
006f6fd0  05 52 83 e0                                      add r5, r3, r5, lsl #4
006f6fd4  00 00 55 e3                                      cmp r5, #0
006f6fd8  07 00 00 da                                      ble #0x6f6ffc
006f6fdc  07 60 a0 e1                                      mov r6, r7
006f6fe0  06 00 a0 e1                                      mov r0, r6
006f6fe4  04 10 a0 e1                                      mov r1, r4
006f6fe8  de ff ff eb                                      bl #0x6f6f68
006f6fec  01 50 55 e2                                      subs r5, r5, #1
006f6ff0  44 40 84 e2                                      add r4, r4, #0x44
006f6ff4  44 60 86 e2                                      add r6, r6, #0x44
006f6ff8  f8 ff ff 1a                                      bne #0x6f6fe0
006f6ffc  07 00 a0 e1                                      mov r0, r7
006f7000  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
