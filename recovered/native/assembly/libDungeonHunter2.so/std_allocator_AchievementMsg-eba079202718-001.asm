; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003805ac, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<AchievementMsg>
; alias: _ZNSaI14AchievementMsgE8allocateEjPKv.clone.14
; demangled: std::allocator<AchievementMsg>::allocate(unsigned int, void const*) [clone .clone.14]
; decoder-mode: arm
003805ac  04 e0 2d e5                                      str lr, [sp, #-4]!
003805b0  0c d0 4d e2                                      sub sp, sp, #0xc
003805b4  08 00 8d e2                                      add r0, sp, #8
003805b8  78 30 a0 e3                                      mov r3, #0x78
003805bc  04 30 20 e5                                      str r3, [r0, #-4]!
003805c0  3e 22 0e eb                                      bl #0x708ec0
003805c4  0c d0 8d e2                                      add sp, sp, #0xc
003805c8  00 80 bd e8                                      ldm sp!, {pc}
