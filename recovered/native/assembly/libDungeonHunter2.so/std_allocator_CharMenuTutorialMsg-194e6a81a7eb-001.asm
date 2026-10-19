; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003293c8, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<CharMenuTutorialMsg*>
; alias: _ZNSaIP19CharMenuTutorialMsgE8allocateEjPKv
; demangled: std::allocator<CharMenuTutorialMsg*>::allocate(unsigned int, void const*)
; decoder-mode: arm
003293c8  04 e0 2d e5                                      str lr, [sp, #-4]!
003293cc  07 01 71 e3                                      cmn r1, #0xc0000001
003293d0  0c d0 4d e2                                      sub sp, sp, #0xc
003293d4  0d 00 00 8a                                      bhi #0x329410
003293d8  00 00 51 e3                                      cmp r1, #0
003293dc  01 00 a0 01                                      moveq r0, r1
003293e0  01 00 00 1a                                      bne #0x3293ec
003293e4  0c d0 8d e2                                      add sp, sp, #0xc
003293e8  00 80 bd e8                                      ldm sp!, {pc}
003293ec  01 01 a0 e1                                      lsl r0, r1, #2
003293f0  80 00 50 e3                                      cmp r0, #0x80
003293f4  04 00 8d e5                                      str r0, [sp, #4]
003293f8  02 00 00 8a                                      bhi #0x329408
003293fc  04 00 8d e2                                      add r0, sp, #4
00329400  ae 7e 0f eb                                      bl #0x708ec0
00329404  f6 ff ff ea                                      b #0x3293e4
00329408  11 9c ff eb                                      bl #0x310454
0032940c  f4 ff ff ea                                      b #0x3293e4
00329410  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00329414  00 00 8f e0                                      add r0, pc, r0
00329418  29 93 ff eb                                      bl #0x30e0c4
0032941c  01 00 a0 e3                                      mov r0, #1
00329420  88 92 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00329424  5c 50 59 00                                      .byte 0x5c, 0x50, 0x59, 0x00
