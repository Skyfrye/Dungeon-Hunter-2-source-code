; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00484c98, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >*>
; alias: _ZNSaIPSt5dequeIPN3rnd4TileESaIS2_EEE8allocateEjPKv
; demangled: std::allocator<std::deque<rnd::Tile*, std::allocator<rnd::Tile*> >*>::allocate(unsigned int, void const*)
; decoder-mode: arm
00484c98  04 e0 2d e5                                      str lr, [sp, #-4]!
00484c9c  07 01 71 e3                                      cmn r1, #0xc0000001
00484ca0  0c d0 4d e2                                      sub sp, sp, #0xc
00484ca4  0d 00 00 8a                                      bhi #0x484ce0
00484ca8  00 00 51 e3                                      cmp r1, #0
00484cac  01 00 a0 01                                      moveq r0, r1
00484cb0  01 00 00 1a                                      bne #0x484cbc
00484cb4  0c d0 8d e2                                      add sp, sp, #0xc
00484cb8  00 80 bd e8                                      ldm sp!, {pc}
00484cbc  01 01 a0 e1                                      lsl r0, r1, #2
00484cc0  80 00 50 e3                                      cmp r0, #0x80
00484cc4  04 00 8d e5                                      str r0, [sp, #4]
00484cc8  02 00 00 8a                                      bhi #0x484cd8
00484ccc  04 00 8d e2                                      add r0, sp, #4
00484cd0  7a 10 0a eb                                      bl #0x708ec0
00484cd4  f6 ff ff ea                                      b #0x484cb4
00484cd8  dd 2d fa eb                                      bl #0x310454
00484cdc  f4 ff ff ea                                      b #0x484cb4
00484ce0  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00484ce4  00 00 8f e0                                      add r0, pc, r0
00484ce8  f5 24 fa eb                                      bl #0x30e0c4
00484cec  01 00 a0 e3                                      mov r0, #1
00484cf0  54 24 fa eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00484cf4  8c 97 43 00                                      .byte 0x8c, 0x97, 0x43, 0x00
