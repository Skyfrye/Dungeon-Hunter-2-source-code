; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003be0d0, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<StatusMsg>
; alias: _ZNSaI9StatusMsgE8allocateEjPKv.clone.8
; demangled: std::allocator<StatusMsg>::allocate(unsigned int, void const*) [clone .clone.8]
; decoder-mode: arm
003be0d0  04 e0 2d e5                                      str lr, [sp, #-4]!
003be0d4  0c d0 4d e2                                      sub sp, sp, #0xc
003be0d8  08 00 8d e2                                      add r0, sp, #8
003be0dc  70 30 a0 e3                                      mov r3, #0x70
003be0e0  04 30 20 e5                                      str r3, [r0, #-4]!
003be0e4  75 2b 0d eb                                      bl #0x708ec0
003be0e8  0c d0 8d e2                                      add sp, sp, #0xc
003be0ec  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x003ecfd8, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<StatusMsg>
; alias: _ZNSaI9StatusMsgE8allocateEjPKv.clone.4
; demangled: std::allocator<StatusMsg>::allocate(unsigned int, void const*) [clone .clone.4]
; decoder-mode: arm
003ecfd8  04 e0 2d e5                                      str lr, [sp, #-4]!
003ecfdc  0c d0 4d e2                                      sub sp, sp, #0xc
003ecfe0  08 00 8d e2                                      add r0, sp, #8
003ecfe4  70 30 a0 e3                                      mov r3, #0x70
003ecfe8  04 30 20 e5                                      str r3, [r0, #-4]!
003ecfec  b3 6f 0c eb                                      bl #0x708ec0
003ecff0  0c d0 8d e2                                      add sp, sp, #0xc
003ecff4  00 80 bd e8                                      ldm sp!, {pc}
