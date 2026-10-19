; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006b6a88, declared_size=112, range_size=112, mode=arm
; class-group: std::allocator<glitch::io::SStreamItrWriter>
; alias: _ZNSaIN6glitch2io16SStreamItrWriterEE11_M_allocateEjRj
; demangled: std::allocator<glitch::io::SStreamItrWriter>::_M_allocate(unsigned int, unsigned int&)
; decoder-mode: arm
006b6a88  10 40 2d e9                                      push {r4, lr}
006b6a8c  7e 03 71 e3                                      cmn r1, #0xf8000001
006b6a90  08 d0 4d e2                                      sub sp, sp, #8
006b6a94  02 40 a0 e1                                      mov r4, r2
006b6a98  10 00 00 8a                                      bhi #0x6b6ae0
006b6a9c  00 00 51 e3                                      cmp r1, #0
006b6aa0  01 00 a0 01                                      moveq r0, r1
006b6aa4  01 00 00 1a                                      bne #0x6b6ab0
006b6aa8  08 d0 8d e2                                      add sp, sp, #8
006b6aac  10 80 bd e8                                      pop {r4, pc}
006b6ab0  81 02 a0 e1                                      lsl r0, r1, #5
006b6ab4  80 00 50 e3                                      cmp r0, #0x80
006b6ab8  04 00 8d e5                                      str r0, [sp, #4]
006b6abc  05 00 00 8a                                      bhi #0x6b6ad8
006b6ac0  04 00 8d e2                                      add r0, sp, #4
006b6ac4  fd 48 01 eb                                      bl #0x708ec0
006b6ac8  04 30 9d e5                                      ldr r3, [sp, #4]
006b6acc  a3 32 a0 e1                                      lsr r3, r3, #5
006b6ad0  00 30 84 e5                                      str r3, [r4]
006b6ad4  f3 ff ff ea                                      b #0x6b6aa8
006b6ad8  6b 5f f1 eb                                      bl #0x30e88c
006b6adc  f9 ff ff ea                                      b #0x6b6ac8
006b6ae0  0c 00 9f e5                                      ldr r0, [pc, #0xc]
006b6ae4  00 00 8f e0                                      add r0, pc, r0
006b6ae8  75 5d f1 eb                                      bl #0x30e0c4
006b6aec  01 00 a0 e3                                      mov r0, #1
006b6af0  d4 5c f1 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
006b6af4  8c 79 20 00                                      .byte 0x8c, 0x79, 0x20, 0x00
