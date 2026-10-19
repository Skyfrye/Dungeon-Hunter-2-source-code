; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329570, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<OnlineStatusMsg*>
; alias: _ZNSaIP15OnlineStatusMsgE8allocateEjPKv
; demangled: std::allocator<OnlineStatusMsg*>::allocate(unsigned int, void const*)
; decoder-mode: arm
00329570  04 e0 2d e5                                      str lr, [sp, #-4]!
00329574  07 01 71 e3                                      cmn r1, #0xc0000001
00329578  0c d0 4d e2                                      sub sp, sp, #0xc
0032957c  0d 00 00 8a                                      bhi #0x3295b8
00329580  00 00 51 e3                                      cmp r1, #0
00329584  01 00 a0 01                                      moveq r0, r1
00329588  01 00 00 1a                                      bne #0x329594
0032958c  0c d0 8d e2                                      add sp, sp, #0xc
00329590  00 80 bd e8                                      ldm sp!, {pc}
00329594  01 01 a0 e1                                      lsl r0, r1, #2
00329598  80 00 50 e3                                      cmp r0, #0x80
0032959c  04 00 8d e5                                      str r0, [sp, #4]
003295a0  02 00 00 8a                                      bhi #0x3295b0
003295a4  04 00 8d e2                                      add r0, sp, #4
003295a8  44 7e 0f eb                                      bl #0x708ec0
003295ac  f6 ff ff ea                                      b #0x32958c
003295b0  a7 9b ff eb                                      bl #0x310454
003295b4  f4 ff ff ea                                      b #0x32958c
003295b8  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003295bc  00 00 8f e0                                      add r0, pc, r0
003295c0  bf 92 ff eb                                      bl #0x30e0c4
003295c4  01 00 a0 e3                                      mov r0, #1
003295c8  1e 92 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003295cc  b4 4e 59 00                                      .byte 0xb4, 0x4e, 0x59, 0x00
