; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329428, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<AchievementMsg*>
; alias: _ZNSaIP14AchievementMsgE8allocateEjPKv
; demangled: std::allocator<AchievementMsg*>::allocate(unsigned int, void const*)
; decoder-mode: arm
00329428  04 e0 2d e5                                      str lr, [sp, #-4]!
0032942c  07 01 71 e3                                      cmn r1, #0xc0000001
00329430  0c d0 4d e2                                      sub sp, sp, #0xc
00329434  0d 00 00 8a                                      bhi #0x329470
00329438  00 00 51 e3                                      cmp r1, #0
0032943c  01 00 a0 01                                      moveq r0, r1
00329440  01 00 00 1a                                      bne #0x32944c
00329444  0c d0 8d e2                                      add sp, sp, #0xc
00329448  00 80 bd e8                                      ldm sp!, {pc}
0032944c  01 01 a0 e1                                      lsl r0, r1, #2
00329450  80 00 50 e3                                      cmp r0, #0x80
00329454  04 00 8d e5                                      str r0, [sp, #4]
00329458  02 00 00 8a                                      bhi #0x329468
0032945c  04 00 8d e2                                      add r0, sp, #4
00329460  96 7e 0f eb                                      bl #0x708ec0
00329464  f6 ff ff ea                                      b #0x329444
00329468  f9 9b ff eb                                      bl #0x310454
0032946c  f4 ff ff ea                                      b #0x329444
00329470  0c 00 9f e5                                      ldr r0, [pc, #0xc]
00329474  00 00 8f e0                                      add r0, pc, r0
00329478  11 93 ff eb                                      bl #0x30e0c4
0032947c  01 00 a0 e3                                      mov r0, #1
00329480  70 92 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
00329484  fc 4f 59 00                                      .byte 0xfc, 0x4f, 0x59, 0x00
