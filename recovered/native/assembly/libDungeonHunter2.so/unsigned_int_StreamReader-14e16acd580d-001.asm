; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00313a90, declared_size=184, range_size=184, mode=arm
; class-group: unsigned int StreamReader
; alias: _ZN12StreamReader6readAsIjEET_P11IStreamBase
; demangled: unsigned int StreamReader::readAs<unsigned int>(IStreamBase*)
; decoder-mode: arm
00313a90  04 e0 2d e5                                      str lr, [sp, #-4]!
00313a94  14 d0 4d e2                                      sub sp, sp, #0x14
00313a98  00 30 a0 e3                                      mov r3, #0
00313a9c  00 c0 90 e5                                      ldr ip, [r0]
00313aa0  0c 10 8d e2                                      add r1, sp, #0xc
00313aa4  04 20 a0 e3                                      mov r2, #4
00313aa8  0f e0 a0 e1                                      mov lr, pc
00313aac  18 f0 9c e5                                      ldr pc, [ip, #0x18]
00313ab0  78 30 9f e5                                      ldr r3, [pc, #0x78]
00313ab4  04 00 50 e3                                      cmp r0, #4
00313ab8  03 30 8f e0                                      add r3, pc, r3
00313abc  0b 00 00 0a                                      beq #0x313af0
00313ac0  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00313ac4  02 20 93 e7                                      ldr r2, [r3, r2]
00313ac8  00 20 92 e5                                      ldr r2, [r2]
00313acc  02 00 52 e3                                      cmp r2, #2
00313ad0  00 30 a0 03                                      moveq r3, #0
00313ad4  00 30 83 05                                      streq r3, [r3]
00313ad8  01 00 00 0a                                      beq #0x313ae4
00313adc  01 00 52 e3                                      cmp r2, #1
00313ae0  05 00 00 0a                                      beq #0x313afc
00313ae4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00313ae8  14 d0 8d e2                                      add sp, sp, #0x14
00313aec  00 80 bd e8                                      ldm sp!, {pc}
00313af0  00 00 51 e3                                      cmp r1, #0
00313af4  fa ff ff 0a                                      beq #0x313ae4
00313af8  f0 ff ff ea                                      b #0x313ac0
00313afc  34 00 9f e5                                      ldr r0, [pc, #0x34]
00313b00  34 10 9f e5                                      ldr r1, [pc, #0x34]
00313b04  34 20 9f e5                                      ldr r2, [pc, #0x34]
00313b08  00 00 93 e7                                      ldr r0, [r3, r0]
00313b0c  30 30 9f e5                                      ldr r3, [pc, #0x30]
00313b10  44 c0 a0 e3                                      mov ip, #0x44
00313b14  01 10 8f e0                                      add r1, pc, r1
00313b18  02 20 8f e0                                      add r2, pc, r2
00313b1c  03 30 8f e0                                      add r3, pc, r3
00313b20  a8 00 80 e2                                      add r0, r0, #0xa8
00313b24  00 c0 8d e5                                      str ip, [sp]
00313b28  35 e9 ff eb                                      bl #0x30e004
00313b2c  ec ff ff ea                                      b #0x313ae4
; mapping-symbol data/literal pool
00313b30  d8 0f 68 00 c0 39 00 00 c0 19 00 00 c4 a8 5a 00  .byte 0xd8, 0x0f, 0x68, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc4, 0xa8, 0x5a, 0x00
00313b40  e8 a9 5a 00 a4 a9 5a 00                          .byte 0xe8, 0xa9, 0x5a, 0x00, 0xa4, 0xa9, 0x5a, 0x00
