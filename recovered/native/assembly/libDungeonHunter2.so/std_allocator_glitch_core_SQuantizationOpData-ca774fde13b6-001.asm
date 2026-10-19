; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006a2a88, declared_size=136, range_size=136, mode=arm
; class-group: std::allocator<glitch::core::SQuantizationOpData>
; alias: _ZNSaIN6glitch4core19SQuantizationOpDataEE11_M_allocateEjRj
; demangled: std::allocator<glitch::core::SQuantizationOpData>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
006a2a88  10 40 2d e9                                      push {r4, lr}
006a2a8c  cc 3c 0c e3                                      movw r3, #0xcccc
006a2a90  03 36 83 e1                                      orr r3, r3, r3, lsl #12
006a2a94  03 00 51 e1                                      cmp r1, r3
006a2a98  08 d0 4d e2                                      sub sp, sp, #8
006a2a9c  02 40 a0 e1                                      mov r4, r2
006a2aa0  14 00 00 8a                                      bhi #0x6a2af8
006a2aa4  00 00 51 e3                                      cmp r1, #0
006a2aa8  01 00 a0 01                                      moveq r0, r1
006a2aac  01 00 00 1a                                      bne #0x6a2ab8
006a2ab0  08 d0 8d e2                                      add sp, sp, #8
006a2ab4  10 80 bd e8                                      pop {r4, pc}
006a2ab8  14 00 a0 e3                                      mov r0, #0x14
006a2abc  90 01 00 e0                                      mul r0, r0, r1
006a2ac0  80 00 50 e3                                      cmp r0, #0x80
006a2ac4  04 00 8d e5                                      str r0, [sp, #4]
006a2ac8  08 00 00 8a                                      bhi #0x6a2af0
006a2acc  04 00 8d e2                                      add r0, sp, #4
006a2ad0  fa 98 01 eb                                      bl #0x708ec0
006a2ad4  04 20 9d e5                                      ldr r2, [sp, #4]
006a2ad8  cd 3c 0c e3                                      movw r3, #0xcccd
006a2adc  cc 3c 4c e3                                      movt r3, #0xcccc
006a2ae0  93 12 83 e0                                      umull r1, r3, r3, r2
006a2ae4  23 32 a0 e1                                      lsr r3, r3, #4
006a2ae8  00 30 84 e5                                      str r3, [r4]
006a2aec  ef ff ff ea                                      b #0x6a2ab0
006a2af0  65 af f1 eb                                      bl #0x30e88c
006a2af4  f6 ff ff ea                                      b #0x6a2ad4
006a2af8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
006a2afc  00 00 8f e0                                      add r0, pc, r0
006a2b00  6f ad f1 eb                                      bl #0x30e0c4
006a2b04  01 00 a0 e3                                      mov r0, #1
006a2b08  ce ac f1 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
006a2b0c  74 b9 21 00                                      .byte 0x74, 0xb9, 0x21, 0x00
