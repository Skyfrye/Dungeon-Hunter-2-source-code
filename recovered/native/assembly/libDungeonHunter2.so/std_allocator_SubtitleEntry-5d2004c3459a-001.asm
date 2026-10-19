; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003394c0, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<SubtitleEntry*>
; alias: _ZNSaIP13SubtitleEntryE8allocateEjPKv.clone.4
; demangled: std::allocator<SubtitleEntry*>::allocate(unsigned int, void const*) [clone .clone.4]
; decoder-mode: arm
003394c0  04 e0 2d e5                                      str lr, [sp, #-4]!
003394c4  0c d0 4d e2                                      sub sp, sp, #0xc
003394c8  08 00 8d e2                                      add r0, sp, #8
003394cc  80 30 a0 e3                                      mov r3, #0x80
003394d0  04 30 20 e5                                      str r3, [r0, #-4]!
003394d4  79 3e 0f eb                                      bl #0x708ec0
003394d8  0c d0 8d e2                                      add sp, sp, #0xc
003394dc  00 80 bd e8                                      ldm sp!, {pc}
