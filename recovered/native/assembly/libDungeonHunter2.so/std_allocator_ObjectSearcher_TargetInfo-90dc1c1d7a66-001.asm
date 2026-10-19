; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a1e0c, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<ObjectSearcher::TargetInfo>
; alias: _ZNSaIN14ObjectSearcher10TargetInfoEE8allocateEjPKv.clone.7
; demangled: std::allocator<ObjectSearcher::TargetInfo>::allocate(unsigned int, void const*) [clone .clone.7]
; decoder-mode: arm
004a1e0c  04 e0 2d e5                                      str lr, [sp, #-4]!
004a1e10  0c d0 4d e2                                      sub sp, sp, #0xc
004a1e14  08 00 8d e2                                      add r0, sp, #8
004a1e18  78 30 a0 e3                                      mov r3, #0x78
004a1e1c  04 30 20 e5                                      str r3, [r0, #-4]!
004a1e20  26 9c 09 eb                                      bl #0x708ec0
004a1e24  0c d0 8d e2                                      add sp, sp, #0xc
004a1e28  00 80 bd e8                                      ldm sp!, {pc}
