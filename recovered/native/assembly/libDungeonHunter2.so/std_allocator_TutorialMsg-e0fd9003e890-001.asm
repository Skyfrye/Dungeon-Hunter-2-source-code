; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003295d0, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<TutorialMsg*>
; alias: _ZNSaIP11TutorialMsgE8allocateEjPKv
; demangled: std::allocator<TutorialMsg*>::allocate(unsigned int, void const*)
; decoder-mode: arm
003295d0  04 e0 2d e5                                      str lr, [sp, #-4]!
003295d4  07 01 71 e3                                      cmn r1, #0xc0000001
003295d8  0c d0 4d e2                                      sub sp, sp, #0xc
003295dc  0d 00 00 8a                                      bhi #0x329618
003295e0  00 00 51 e3                                      cmp r1, #0
003295e4  01 00 a0 01                                      moveq r0, r1
003295e8  01 00 00 1a                                      bne #0x3295f4
003295ec  0c d0 8d e2                                      add sp, sp, #0xc
003295f0  00 80 bd e8                                      ldm sp!, {pc}
003295f4  01 01 a0 e1                                      lsl r0, r1, #2
003295f8  80 00 50 e3                                      cmp r0, #0x80
003295fc  04 00 8d e5                                      str r0, [sp, #4]
00329600  02 00 00 8a                                      bhi #0x329610
00329604  04 00 8d e2                                      add r0, sp, #4
00329608  2c 7e 0f eb                                      bl #0x708ec0
0032960c  f6 ff ff ea                                      b #0x3295ec
00329610  8f 9b ff eb                                      bl #0x310454
00329614  f4 ff ff ea                                      b #0x3295ec
00329618  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0032961c  00 00 8f e0                                      add r0, pc, r0
00329620  a7 92 ff eb                                      bl #0x30e0c4
00329624  01 00 a0 e3                                      mov r0, #1
00329628  06 92 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0032962c  54 4e 59 00                                      .byte 0x54, 0x4e, 0x59, 0x00
