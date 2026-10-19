; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003364ec, declared_size=184, range_size=184, mode=arm
; class-group: int StreamReader
; alias: _ZN12StreamReader6readAsIiEET_P11IStreamBase
; demangled: int StreamReader::readAs<int>(IStreamBase*)
; decoder-mode: arm
003364ec  04 e0 2d e5                                      str lr, [sp, #-4]!
003364f0  14 d0 4d e2                                      sub sp, sp, #0x14
003364f4  00 30 a0 e3                                      mov r3, #0
003364f8  00 c0 90 e5                                      ldr ip, [r0]
003364fc  0c 10 8d e2                                      add r1, sp, #0xc
00336500  04 20 a0 e3                                      mov r2, #4
00336504  0f e0 a0 e1                                      mov lr, pc
00336508  18 f0 9c e5                                      ldr pc, [ip, #0x18]
0033650c  78 30 9f e5                                      ldr r3, [pc, #0x78]
00336510  04 00 50 e3                                      cmp r0, #4
00336514  03 30 8f e0                                      add r3, pc, r3
00336518  0b 00 00 0a                                      beq #0x33654c
0033651c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00336520  02 20 93 e7                                      ldr r2, [r3, r2]
00336524  00 20 92 e5                                      ldr r2, [r2]
00336528  02 00 52 e3                                      cmp r2, #2
0033652c  00 30 a0 03                                      moveq r3, #0
00336530  00 30 83 05                                      streq r3, [r3]
00336534  01 00 00 0a                                      beq #0x336540
00336538  01 00 52 e3                                      cmp r2, #1
0033653c  05 00 00 0a                                      beq #0x336558
00336540  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00336544  14 d0 8d e2                                      add sp, sp, #0x14
00336548  00 80 bd e8                                      ldm sp!, {pc}
0033654c  00 00 51 e3                                      cmp r1, #0
00336550  fa ff ff 0a                                      beq #0x336540
00336554  f0 ff ff ea                                      b #0x33651c
00336558  34 00 9f e5                                      ldr r0, [pc, #0x34]
0033655c  34 10 9f e5                                      ldr r1, [pc, #0x34]
00336560  34 20 9f e5                                      ldr r2, [pc, #0x34]
00336564  00 00 93 e7                                      ldr r0, [r3, r0]
00336568  30 30 9f e5                                      ldr r3, [pc, #0x30]
0033656c  44 c0 a0 e3                                      mov ip, #0x44
00336570  01 10 8f e0                                      add r1, pc, r1
00336574  02 20 8f e0                                      add r2, pc, r2
00336578  03 30 8f e0                                      add r3, pc, r3
0033657c  a8 00 80 e2                                      add r0, r0, #0xa8
00336580  00 c0 8d e5                                      str ip, [sp]
00336584  9e 5e ff eb                                      bl #0x30e004
00336588  ec ff ff ea                                      b #0x336540
; mapping-symbol data/literal pool
0033658c  7c e5 65 00 c0 39 00 00 c0 19 00 00 68 7e 58 00  .byte 0x7c, 0xe5, 0x65, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x68, 0x7e, 0x58, 0x00
0033659c  8c 7f 58 00 c8 97 58 00                          .byte 0x8c, 0x7f, 0x58, 0x00, 0xc8, 0x97, 0x58, 0x00
