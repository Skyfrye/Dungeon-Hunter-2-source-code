; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003365a4, declared_size=184, range_size=184, mode=arm
; class-group: unsigned char StreamReader
; alias: _ZN12StreamReader6readAsIhEET_P11IStreamBase
; demangled: unsigned char StreamReader::readAs<unsigned char>(IStreamBase*)
; decoder-mode: arm
003365a4  04 e0 2d e5                                      str lr, [sp, #-4]!
003365a8  14 d0 4d e2                                      sub sp, sp, #0x14
003365ac  00 30 a0 e3                                      mov r3, #0
003365b0  00 c0 90 e5                                      ldr ip, [r0]
003365b4  0f 10 8d e2                                      add r1, sp, #0xf
003365b8  01 20 a0 e3                                      mov r2, #1
003365bc  0f e0 a0 e1                                      mov lr, pc
003365c0  18 f0 9c e5                                      ldr pc, [ip, #0x18]
003365c4  78 30 9f e5                                      ldr r3, [pc, #0x78]
003365c8  01 00 50 e3                                      cmp r0, #1
003365cc  03 30 8f e0                                      add r3, pc, r3
003365d0  0b 00 00 0a                                      beq #0x336604
003365d4  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003365d8  02 20 93 e7                                      ldr r2, [r3, r2]
003365dc  00 20 92 e5                                      ldr r2, [r2]
003365e0  02 00 52 e3                                      cmp r2, #2
003365e4  00 30 a0 03                                      moveq r3, #0
003365e8  00 30 83 05                                      streq r3, [r3]
003365ec  01 00 00 0a                                      beq #0x3365f8
003365f0  01 00 52 e3                                      cmp r2, #1
003365f4  05 00 00 0a                                      beq #0x336610
003365f8  0f 00 dd e5                                      ldrb r0, [sp, #0xf]
003365fc  14 d0 8d e2                                      add sp, sp, #0x14
00336600  00 80 bd e8                                      ldm sp!, {pc}
00336604  00 00 51 e3                                      cmp r1, #0
00336608  fa ff ff 0a                                      beq #0x3365f8
0033660c  f0 ff ff ea                                      b #0x3365d4
00336610  34 00 9f e5                                      ldr r0, [pc, #0x34]
00336614  34 10 9f e5                                      ldr r1, [pc, #0x34]
00336618  34 20 9f e5                                      ldr r2, [pc, #0x34]
0033661c  00 00 93 e7                                      ldr r0, [r3, r0]
00336620  30 30 9f e5                                      ldr r3, [pc, #0x30]
00336624  44 c0 a0 e3                                      mov ip, #0x44
00336628  01 10 8f e0                                      add r1, pc, r1
0033662c  02 20 8f e0                                      add r2, pc, r2
00336630  03 30 8f e0                                      add r3, pc, r3
00336634  a8 00 80 e2                                      add r0, r0, #0xa8
00336638  00 c0 8d e5                                      str ip, [sp]
0033663c  70 5e ff eb                                      bl #0x30e004
00336640  ec ff ff ea                                      b #0x3365f8
; mapping-symbol data/literal pool
00336644  c4 e4 65 00 c0 39 00 00 c0 19 00 00 b0 7d 58 00  .byte 0xc4, 0xe4, 0x65, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xb0, 0x7d, 0x58, 0x00
00336654  d4 7e 58 00 10 97 58 00                          .byte 0xd4, 0x7e, 0x58, 0x00, 0x10, 0x97, 0x58, 0x00
