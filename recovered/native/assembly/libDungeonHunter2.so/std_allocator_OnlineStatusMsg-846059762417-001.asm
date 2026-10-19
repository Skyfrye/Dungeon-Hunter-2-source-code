; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00376188, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<OnlineStatusMsg>
; alias: _ZNSaI15OnlineStatusMsgE8allocateEjPKv.clone.3
; demangled: std::allocator<OnlineStatusMsg>::allocate(unsigned int, void const*) [clone .clone.3]
; decoder-mode: arm
00376188  04 e0 2d e5                                      str lr, [sp, #-4]!
0037618c  0c d0 4d e2                                      sub sp, sp, #0xc
00376190  08 00 8d e2                                      add r0, sp, #8
00376194  70 30 a0 e3                                      mov r3, #0x70
00376198  04 30 20 e5                                      str r3, [r0, #-4]!
0037619c  47 4b 0e eb                                      bl #0x708ec0
003761a0  0c d0 8d e2                                      add sp, sp, #0xc
003761a4  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0049bd54, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<OnlineStatusMsg>
; alias: _ZNSaI15OnlineStatusMsgE8allocateEjPKv.clone.5
; demangled: std::allocator<OnlineStatusMsg>::allocate(unsigned int, void const*) [clone .clone.5]
; decoder-mode: arm
0049bd54  04 e0 2d e5                                      str lr, [sp, #-4]!
0049bd58  0c d0 4d e2                                      sub sp, sp, #0xc
0049bd5c  08 00 8d e2                                      add r0, sp, #8
0049bd60  70 30 a0 e3                                      mov r3, #0x70
0049bd64  04 30 20 e5                                      str r3, [r0, #-4]!
0049bd68  54 b4 09 eb                                      bl #0x708ec0
0049bd6c  0c d0 8d e2                                      add sp, sp, #0xc
0049bd70  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0049d2b0, declared_size=32, range_size=32, mode=arm
; class-group: std::allocator<OnlineStatusMsg>
; alias: _ZNSaI15OnlineStatusMsgE8allocateEjPKv.clone.3
; demangled: std::allocator<OnlineStatusMsg>::allocate(unsigned int, void const*) [clone .clone.3]
; decoder-mode: arm
0049d2b0  04 e0 2d e5                                      str lr, [sp, #-4]!
0049d2b4  0c d0 4d e2                                      sub sp, sp, #0xc
0049d2b8  08 00 8d e2                                      add r0, sp, #8
0049d2bc  70 30 a0 e3                                      mov r3, #0x70
0049d2c0  04 30 20 e5                                      str r3, [r0, #-4]!
0049d2c4  fd ae 09 eb                                      bl #0x708ec0
0049d2c8  0c d0 8d e2                                      add sp, sp, #0xc
0049d2cc  00 80 bd e8                                      ldm sp!, {pc}
