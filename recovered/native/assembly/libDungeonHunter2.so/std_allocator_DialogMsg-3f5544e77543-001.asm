; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00329368, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<DialogMsg*>
; alias: _ZNSaIP9DialogMsgE8allocateEjPKv
; demangled: std::allocator<DialogMsg*>::allocate(unsigned int, void const*)
; decoder-mode: arm
00329368  04 e0 2d e5                                      str lr, [sp, #-4]!
0032936c  07 01 71 e3                                      cmn r1, #0xc0000001
00329370  0c d0 4d e2                                      sub sp, sp, #0xc
00329374  0d 00 00 8a                                      bhi #0x3293b0
00329378  00 00 51 e3                                      cmp r1, #0
0032937c  01 00 a0 01                                      moveq r0, r1
00329380  01 00 00 1a                                      bne #0x32938c
00329384  0c d0 8d e2                                      add sp, sp, #0xc
00329388  00 80 bd e8                                      ldm sp!, {pc}
0032938c  01 01 a0 e1                                      lsl r0, r1, #2
00329390  80 00 50 e3                                      cmp r0, #0x80
00329394  04 00 8d e5                                      str r0, [sp, #4]
00329398  02 00 00 8a                                      bhi #0x3293a8
0032939c  04 00 8d e2                                      add r0, sp, #4
003293a0  c6 7e 0f eb                                      bl #0x708ec0
003293a4  f6 ff ff ea                                      b #0x329384
003293a8  29 9c ff eb                                      bl #0x310454
003293ac  f4 ff ff ea                                      b #0x329384
003293b0  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003293b4  00 00 8f e0                                      add r0, pc, r0
003293b8  41 93 ff eb                                      bl #0x30e0c4
003293bc  01 00 a0 e3                                      mov r0, #1
003293c0  a0 92 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003293c4  bc 50 59 00                                      .byte 0xbc, 0x50, 0x59, 0x00
