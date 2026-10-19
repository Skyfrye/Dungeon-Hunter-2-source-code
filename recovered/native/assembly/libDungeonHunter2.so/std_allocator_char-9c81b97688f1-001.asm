; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031a64c, declared_size=64, range_size=64, mode=arm
; class-group: std::allocator<char>
; alias: _ZNSaIcE11_M_allocateEjRj
; demangled: std::allocator<char>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
0031a64c  10 40 2d e9                                      push {r4, lr}
0031a650  00 00 51 e2                                      subs r0, r1, #0
0031a654  08 d0 4d e2                                      sub sp, sp, #8
0031a658  02 40 a0 e1                                      mov r4, r2
0031a65c  06 00 00 0a                                      beq #0x31a67c
0031a660  80 00 50 e3                                      cmp r0, #0x80
0031a664  04 00 8d e5                                      str r0, [sp, #4]
0031a668  05 00 00 8a                                      bhi #0x31a684
0031a66c  04 00 8d e2                                      add r0, sp, #4
0031a670  12 ba 0f eb                                      bl #0x708ec0
0031a674  04 30 9d e5                                      ldr r3, [sp, #4]
0031a678  00 30 84 e5                                      str r3, [r4]
0031a67c  08 d0 8d e2                                      add sp, sp, #8
0031a680  10 80 bd e8                                      pop {r4, pc}
0031a684  72 d7 ff eb                                      bl #0x310454
0031a688  f9 ff ff ea                                      b #0x31a674
