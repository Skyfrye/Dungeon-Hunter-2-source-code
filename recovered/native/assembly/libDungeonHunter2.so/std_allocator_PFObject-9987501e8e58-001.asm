; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00526d78, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<PFObject*>
; alias: _ZNSaIP8PFObjectE8allocateEjPKv.clone.5
; demangled: std::allocator<PFObject*>::allocate(unsigned int, void const*) [clone .clone.5]
; decoder-mode: arm
00526d78  04 e0 2d e5                                      str lr, [sp, #-4]!
00526d7c  0c d0 4d e2                                      sub sp, sp, #0xc
00526d80  08 00 8d e2                                      add r0, sp, #8
00526d84  80 30 a0 e3                                      mov r3, #0x80
00526d88  04 30 20 e5                                      str r3, [r0, #-4]!
00526d8c  4b 88 07 eb                                      bl #0x708ec0
00526d90  0c d0 8d e2                                      add sp, sp, #0xc
00526d94  00 80 bd e8                                      ldm sp!, {pc}
