; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00522c74, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<unsigned int*>
; alias: _ZNSaIPjE8allocateEjPKv
; demangled: std::allocator<unsigned int*>::allocate(unsigned int, void const*)
; decoder-mode: arm
00522c74  04 e0 2d e5                                      str lr, [sp, #-4]!
00522c78  07 01 71 e3                                      cmn r1, #0xc0000001
00522c7c  0c d0 4d e2                                      sub sp, sp, #0xc
00522c80  0d 00 00 8a                                      bhi #0x522cbc
00522c84  00 00 51 e3                                      cmp r1, #0
00522c88  01 00 a0 01                                      moveq r0, r1
00522c8c  01 00 00 1a                                      bne #0x522c98
00522c90  0c d0 8d e2                                      add sp, sp, #0xc
00522c94  00 80 bd e8                                      ldm sp!, {pc}
00522c98  01 01 a0 e1                                      lsl r0, r1, #2
00522c9c  80 00 50 e3                                      cmp r0, #0x80
00522ca0  04 00 8d e5                                      str r0, [sp, #4]
00522ca4  02 00 00 8a                                      bhi #0x522cb4
00522ca8  04 00 8d e2                                      add r0, sp, #4
00522cac  83 98 07 eb                                      bl #0x708ec0
00522cb0  f6 ff ff ea                                      b #0x522c90
00522cb4  e6 b5 f7 eb                                      bl #0x310454
00522cb8  f4 ff ff ea                                      b #0x522c90
00522cbc  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00522cc0  00 00 8f e0                                      add r0, pc, r0
00522cc4  fe ac f7 eb                                      bl #0x30e0c4
00522cc8  01 00 a0 e3                                      mov r0, #1
00522ccc  5d ac f7 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00522cd0  b0 b7 39 00                                      .byte 0xb0, 0xb7, 0x39, 0x00
