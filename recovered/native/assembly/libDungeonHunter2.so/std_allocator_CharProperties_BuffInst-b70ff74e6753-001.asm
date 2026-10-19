; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e17f8, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<CharProperties::BuffInst*>
; alias: _ZNSaIPN14CharProperties8BuffInstEE8allocateEjPKv.clone.4
; demangled: std::allocator<CharProperties::BuffInst*>::allocate(unsigned int, void const*) [clone .clone.4]
; decoder-mode: arm
003e17f8  04 e0 2d e5                                      str lr, [sp, #-4]!
003e17fc  0c d0 4d e2                                      sub sp, sp, #0xc
003e1800  08 00 8d e2                                      add r0, sp, #8
003e1804  80 30 a0 e3                                      mov r3, #0x80
003e1808  04 30 20 e5                                      str r3, [r0, #-4]!
003e180c  ab 9d 0c eb                                      bl #0x708ec0
003e1810  0c d0 8d e2                                      add sp, sp, #0xc
003e1814  00 80 bd e8                                      ldm sp!, {pc}
