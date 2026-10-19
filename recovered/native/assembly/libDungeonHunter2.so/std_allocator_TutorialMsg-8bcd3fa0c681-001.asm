; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0045b614, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<TutorialMsg>
; alias: _ZNSaI11TutorialMsgE8allocateEjPKv.clone.10
; demangled: std::allocator<TutorialMsg>::allocate(unsigned int, void const*) [clone .clone.10]
; decoder-mode: arm
0045b614  04 e0 2d e5                                      str lr, [sp, #-4]!
0045b618  0c d0 4d e2                                      sub sp, sp, #0xc
0045b61c  08 00 8d e2                                      add r0, sp, #8
0045b620  80 30 a0 e3                                      mov r3, #0x80
0045b624  04 30 20 e5                                      str r3, [r0, #-4]!
0045b628  24 b6 0a eb                                      bl #0x708ec0
0045b62c  0c d0 8d e2                                      add sp, sp, #0xc
0045b630  00 80 bd e8                                      ldm sp!, {pc}
