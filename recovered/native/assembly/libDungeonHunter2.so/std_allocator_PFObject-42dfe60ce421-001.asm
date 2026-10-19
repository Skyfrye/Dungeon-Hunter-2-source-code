; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00526d18, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<PFObject**>
; alias: _ZNSaIPP8PFObjectE8allocateEjPKv
; demangled: std::allocator<PFObject**>::allocate(unsigned int, void const*)
; decoder-mode: arm
00526d18  04 e0 2d e5                                      str lr, [sp, #-4]!
00526d1c  07 01 71 e3                                      cmn r1, #0xc0000001
00526d20  0c d0 4d e2                                      sub sp, sp, #0xc
00526d24  0d 00 00 8a                                      bhi #0x526d60
00526d28  00 00 51 e3                                      cmp r1, #0
00526d2c  01 00 a0 01                                      moveq r0, r1
00526d30  01 00 00 1a                                      bne #0x526d3c
00526d34  0c d0 8d e2                                      add sp, sp, #0xc
00526d38  00 80 bd e8                                      ldm sp!, {pc}
00526d3c  01 01 a0 e1                                      lsl r0, r1, #2
00526d40  80 00 50 e3                                      cmp r0, #0x80
00526d44  04 00 8d e5                                      str r0, [sp, #4]
00526d48  02 00 00 8a                                      bhi #0x526d58
00526d4c  04 00 8d e2                                      add r0, sp, #4
00526d50  5a 88 07 eb                                      bl #0x708ec0
00526d54  f6 ff ff ea                                      b #0x526d34
00526d58  bd a5 f7 eb                                      bl #0x310454
00526d5c  f4 ff ff ea                                      b #0x526d34
00526d60  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00526d64  00 00 8f e0                                      add r0, pc, r0
00526d68  d5 9c f7 eb                                      bl #0x30e0c4
00526d6c  01 00 a0 e3                                      mov r0, #1
00526d70  34 9c f7 eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00526d74  0c 77 39 00                                      .byte 0x0c, 0x77, 0x39, 0x00
