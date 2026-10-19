; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00339578, declared_size=96, range_size=96, mode=arm
; class-group: std::allocator<SubtitleEntry**>
; alias: _ZNSaIPP13SubtitleEntryE8allocateEjPKv
; demangled: std::allocator<SubtitleEntry**>::allocate(unsigned int, void const*)
; decoder-mode: arm
00339578  04 e0 2d e5                                      str lr, [sp, #-4]!
0033957c  07 01 71 e3                                      cmn r1, #0xc0000001
00339580  0c d0 4d e2                                      sub sp, sp, #0xc
00339584  0d 00 00 8a                                      bhi #0x3395c0
00339588  00 00 51 e3                                      cmp r1, #0
0033958c  01 00 a0 01                                      moveq r0, r1
00339590  01 00 00 1a                                      bne #0x33959c
00339594  0c d0 8d e2                                      add sp, sp, #0xc
00339598  00 80 bd e8                                      ldm sp!, {pc}
0033959c  01 01 a0 e1                                      lsl r0, r1, #2
003395a0  80 00 50 e3                                      cmp r0, #0x80
003395a4  04 00 8d e5                                      str r0, [sp, #4]
003395a8  02 00 00 8a                                      bhi #0x3395b8
003395ac  04 00 8d e2                                      add r0, sp, #4
003395b0  42 3e 0f eb                                      bl #0x708ec0
003395b4  f6 ff ff ea                                      b #0x339594
003395b8  a5 5b ff eb                                      bl #0x310454
003395bc  f4 ff ff ea                                      b #0x339594
003395c0  0c 00 9f e5                                      ldr r0, [pc, #0xc]
003395c4  00 00 8f e0                                      add r0, pc, r0
003395c8  bd 52 ff eb                                      bl #0x30e0c4
003395cc  01 00 a0 e3                                      mov r0, #1
003395d0  1c 52 ff eb                                      bl #0x30de48
; mapping-symbol data/literal pool
003395d4  ac 4e 58 00                                      .byte 0xac, 0x4e, 0x58, 0x00
