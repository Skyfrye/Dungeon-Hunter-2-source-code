; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a21e0, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<ObjectSearcher::TargetInfo*>
; alias: _ZNSaIPN14ObjectSearcher10TargetInfoEE8allocateEjPKv
; demangled: std::allocator<ObjectSearcher::TargetInfo*>::allocate(unsigned int, void const*)
; decoder-mode: arm
004a21e0  04 e0 2d e5                                      str lr, [sp, #-4]!
004a21e4  07 01 71 e3                                      cmn r1, #0xc0000001
004a21e8  0c d0 4d e2                                      sub sp, sp, #0xc
004a21ec  0d 00 00 8a                                      bhi #0x4a2228
004a21f0  00 00 51 e3                                      cmp r1, #0
004a21f4  01 00 a0 01                                      moveq r0, r1
004a21f8  01 00 00 1a                                      bne #0x4a2204
004a21fc  0c d0 8d e2                                      add sp, sp, #0xc
004a2200  00 80 bd e8                                      ldm sp!, {pc}
004a2204  01 01 a0 e1                                      lsl r0, r1, #2
004a2208  80 00 50 e3                                      cmp r0, #0x80
004a220c  04 00 8d e5                                      str r0, [sp, #4]
004a2210  02 00 00 8a                                      bhi #0x4a2220
004a2214  04 00 8d e2                                      add r0, sp, #4
004a2218  28 9b 09 eb                                      bl #0x708ec0
004a221c  f6 ff ff ea                                      b #0x4a21fc
004a2220  8b b8 f9 eb                                      bl #0x310454
004a2224  f4 ff ff ea                                      b #0x4a21fc
004a2228  0c 00 9f e5                                      ldr r0, [pc, #0xc]
004a222c  00 00 8f e0                                      add r0, pc, r0
004a2230  a3 af f9 eb                                      bl #0x30e0c4
004a2234  01 00 a0 e3                                      mov r0, #1
004a2238  02 af f9 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
004a223c  44 c2 41 00                                      .byte 0x44, 0xc2, 0x41, 0x00
