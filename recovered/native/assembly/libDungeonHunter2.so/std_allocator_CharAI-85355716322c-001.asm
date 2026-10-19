; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003cd240, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<CharAI**>
; alias: _ZNSaIPP6CharAIE8allocateEjPKv
; demangled: std::allocator<CharAI**>::allocate(unsigned int, void const*)
; decoder-mode: arm
003cd240  04 e0 2d e5                                      str lr, [sp, #-4]!
003cd244  07 01 71 e3                                      cmn r1, #0xc0000001
003cd248  0c d0 4d e2                                      sub sp, sp, #0xc
003cd24c  0d 00 00 8a                                      bhi #0x3cd288
003cd250  00 00 51 e3                                      cmp r1, #0
003cd254  01 00 a0 01                                      moveq r0, r1
003cd258  01 00 00 1a                                      bne #0x3cd264
003cd25c  0c d0 8d e2                                      add sp, sp, #0xc
003cd260  00 80 bd e8                                      ldm sp!, {pc}
003cd264  01 01 a0 e1                                      lsl r0, r1, #2
003cd268  80 00 50 e3                                      cmp r0, #0x80
003cd26c  04 00 8d e5                                      str r0, [sp, #4]
003cd270  02 00 00 8a                                      bhi #0x3cd280
003cd274  04 00 8d e2                                      add r0, sp, #4
003cd278  10 ef 0c eb                                      bl #0x708ec0
003cd27c  f6 ff ff ea                                      b #0x3cd25c
003cd280  73 0c fd eb                                      bl #0x310454
003cd284  f4 ff ff ea                                      b #0x3cd25c
003cd288  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003cd28c  00 00 8f e0                                      add r0, pc, r0
003cd290  8b 03 fd eb                                      bl #0x30e0c4
003cd294  01 00 a0 e3                                      mov r0, #1
003cd298  ea 02 fd eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003cd29c  e4 11 4f 00                                      .byte 0xe4, 0x11, 0x4f, 0x00
