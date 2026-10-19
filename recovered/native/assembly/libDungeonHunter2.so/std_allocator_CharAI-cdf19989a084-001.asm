; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003cd6e8, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<CharAI*>
; alias: _ZNSaIP6CharAIE8allocateEjPKv.clone.18
; demangled: std::allocator<CharAI*>::allocate(unsigned int, void const*) [clone .clone.18]
; decoder-mode: arm
003cd6e8  04 e0 2d e5                                      str lr, [sp, #-4]!
003cd6ec  0c d0 4d e2                                      sub sp, sp, #0xc
003cd6f0  08 00 8d e2                                      add r0, sp, #8
003cd6f4  80 30 a0 e3                                      mov r3, #0x80
003cd6f8  04 30 20 e5                                      str r3, [r0, #-4]!
003cd6fc  ef ed 0c eb                                      bl #0x708ec0
003cd700  0c d0 8d e2                                      add sp, sp, #0xc
003cd704  00 80 bd e8                                      ldm sp!, {pc}
