; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0045b654, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<CharMenuTutorialMsg>
; alias: _ZNSaI19CharMenuTutorialMsgE8allocateEjPKv.clone.3
; demangled: std::allocator<CharMenuTutorialMsg>::allocate(unsigned int, void const*) [clone .clone.3]
; decoder-mode: arm
0045b654  04 e0 2d e5                                      str lr, [sp, #-4]!
0045b658  0c d0 4d e2                                      sub sp, sp, #0xc
0045b65c  08 00 8d e2                                      add r0, sp, #8
0045b660  68 30 a0 e3                                      mov r3, #0x68
0045b664  04 30 20 e5                                      str r3, [r0, #-4]!
0045b668  14 b6 0a eb                                      bl #0x708ec0
0045b66c  0c d0 8d e2                                      add sp, sp, #0xc
0045b670  00 80 bd e8                                      ldm sp!, {pc}
