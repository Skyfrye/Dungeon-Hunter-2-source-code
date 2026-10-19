; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00484c38, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<rnd::Tile**>
; alias: _ZNSaIPPN3rnd4TileEE8allocateEjPKv
; demangled: std::allocator<rnd::Tile**>::allocate(unsigned int, void const*)
; decoder-mode: arm
00484c38  04 e0 2d e5                                      str lr, [sp, #-4]!
00484c3c  07 01 71 e3                                      cmn r1, #0xc0000001
00484c40  0c d0 4d e2                                      sub sp, sp, #0xc
00484c44  0d 00 00 8a                                      bhi #0x484c80
00484c48  00 00 51 e3                                      cmp r1, #0
00484c4c  01 00 a0 01                                      moveq r0, r1
00484c50  01 00 00 1a                                      bne #0x484c5c
00484c54  0c d0 8d e2                                      add sp, sp, #0xc
00484c58  00 80 bd e8                                      ldm sp!, {pc}
00484c5c  01 01 a0 e1                                      lsl r0, r1, #2
00484c60  80 00 50 e3                                      cmp r0, #0x80
00484c64  04 00 8d e5                                      str r0, [sp, #4]
00484c68  02 00 00 8a                                      bhi #0x484c78
00484c6c  04 00 8d e2                                      add r0, sp, #4
00484c70  92 10 0a eb                                      bl #0x708ec0
00484c74  f6 ff ff ea                                      b #0x484c54
00484c78  f5 2d fa eb                                      bl #0x310454
00484c7c  f4 ff ff ea                                      b #0x484c54
00484c80  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00484c84  00 00 8f e0                                      add r0, pc, r0
00484c88  0d 25 fa eb                                      bl #0x30e0c4
00484c8c  01 00 a0 e3                                      mov r0, #1
00484c90  6c 24 fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00484c94  ec 97 43 00                                      .byte 0xec, 0x97, 0x43, 0x00
