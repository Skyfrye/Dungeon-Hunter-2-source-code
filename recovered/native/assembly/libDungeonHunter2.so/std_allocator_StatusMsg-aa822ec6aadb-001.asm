; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329510, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<StatusMsg*>
; alias: _ZNSaIP9StatusMsgE8allocateEjPKv
; demangled: std::allocator<StatusMsg*>::allocate(unsigned int, void const*)
; decoder-mode: arm
00329510  04 e0 2d e5                                      str lr, [sp, #-4]!
00329514  07 01 71 e3                                      cmn r1, #0xc0000001
00329518  0c d0 4d e2                                      sub sp, sp, #0xc
0032951c  0d 00 00 8a                                      bhi #0x329558
00329520  00 00 51 e3                                      cmp r1, #0
00329524  01 00 a0 01                                      moveq r0, r1
00329528  01 00 00 1a                                      bne #0x329534
0032952c  0c d0 8d e2                                      add sp, sp, #0xc
00329530  00 80 bd e8                                      ldm sp!, {pc}
00329534  01 01 a0 e1                                      lsl r0, r1, #2
00329538  80 00 50 e3                                      cmp r0, #0x80
0032953c  04 00 8d e5                                      str r0, [sp, #4]
00329540  02 00 00 8a                                      bhi #0x329550
00329544  04 00 8d e2                                      add r0, sp, #4
00329548  5c 7e 0f eb                                      bl #0x708ec0
0032954c  f6 ff ff ea                                      b #0x32952c
00329550  bf 9b ff eb                                      bl #0x310454
00329554  f4 ff ff ea                                      b #0x32952c
00329558  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0032955c  00 00 8f e0                                      add r0, pc, r0
00329560  d7 92 ff eb                                      bl #0x30e0c4
00329564  01 00 a0 e3                                      mov r0, #1
00329568  36 92 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
0032956c  14 4f 59 00                                      .byte 0x14, 0x4f, 0x59, 0x00
