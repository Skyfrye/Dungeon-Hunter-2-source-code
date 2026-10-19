; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037dac4, declared_size=384, range_size=384, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >& std::map<unsigned int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >
; alias: _ZNSt3mapIjSsSt4lessIjESaISt4pairIKjSsEEEixIjEERSsRKT_
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >& std::map<unsigned int, std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, std::basic_string<char, std::char_traits<char>, std::allocator<char> > > > >::operator[]<unsigned int>(unsigned int const&)
; decoder-mode: arm
0037dac4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0037dac8  6c 51 9f e5                                      ldr r5, [pc, #0x16c]
0037dacc  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
0037dad0  04 40 90 e5                                      ldr r4, [r0, #4]
0037dad4  05 50 8f e0                                      add r5, pc, r5
0037dad8  06 30 95 e7                                      ldr r3, [r5, r6]
0037dadc  40 d0 4d e2                                      sub sp, sp, #0x40
0037dae0  00 00 54 e3                                      cmp r4, #0
0037dae4  00 30 93 e5                                      ldr r3, [r3]
0037dae8  00 80 a0 e1                                      mov r8, r0
0037daec  01 70 a0 e1                                      mov r7, r1
0037daf0  3c 30 8d e5                                      str r3, [sp, #0x3c]
0037daf4  00 40 a0 01                                      moveq r4, r0
0037daf8  0b 00 00 0a                                      beq #0x37db2c
0037dafc  00 10 91 e5                                      ldr r1, [r1]
0037db00  00 20 a0 e1                                      mov r2, r0
0037db04  01 00 00 ea                                      b #0x37db10
0037db08  04 20 a0 e1                                      mov r2, r4
0037db0c  03 40 a0 e1                                      mov r4, r3
0037db10  10 30 94 e5                                      ldr r3, [r4, #0x10]
0037db14  01 00 53 e1                                      cmp r3, r1
0037db18  0c 30 94 35                                      ldrlo r3, [r4, #0xc]
0037db1c  08 30 94 25                                      ldrhs r3, [r4, #8]
0037db20  02 40 a0 31                                      movlo r4, r2
0037db24  00 00 53 e3                                      cmp r3, #0
0037db28  f6 ff ff 1a                                      bne #0x37db08
0037db2c  04 00 58 e1                                      cmp r8, r4
0037db30  04 00 00 0a                                      beq #0x37db48
0037db34  00 20 97 e5                                      ldr r2, [r7]
0037db38  10 30 94 e5                                      ldr r3, [r4, #0x10]
0037db3c  04 00 a0 e1                                      mov r0, r4
0037db40  03 00 52 e1                                      cmp r2, r3
0037db44  2e 00 00 2a                                      bhs #0x37dc04
0037db48  24 90 8d e2                                      add sb, sp, #0x24
0037db4c  09 00 a0 e1                                      mov r0, sb
0037db50  10 10 a0 e3                                      mov r1, #0x10
0037db54  34 90 8d e5                                      str sb, [sp, #0x34]
0037db58  38 90 8d e5                                      str sb, [sp, #0x38]
0037db5c  c6 4e fe eb                                      bl #0x31167c
0037db60  34 30 9d e5                                      ldr r3, [sp, #0x34]
0037db64  00 20 a0 e3                                      mov r2, #0
0037db68  40 a0 8d e2                                      add sl, sp, #0x40
0037db6c  00 20 c3 e5                                      strb r2, [r3]
0037db70  00 30 97 e5                                      ldr r3, [r7]
0037db74  38 10 9d e5                                      ldr r1, [sp, #0x38]
0037db78  34 20 9d e5                                      ldr r2, [sp, #0x34]
0037db7c  38 30 2a e5                                      str r3, [sl, #-0x38]!
0037db80  04 70 8a e2                                      add r7, sl, #4
0037db84  07 00 a0 e1                                      mov r0, r7
0037db88  1c 70 8d e5                                      str r7, [sp, #0x1c]
0037db8c  20 70 8d e5                                      str r7, [sp, #0x20]
0037db90  d4 4e fe eb                                      bl #0x3116e8
0037db94  04 00 8d e2                                      add r0, sp, #4
0037db98  08 10 a0 e1                                      mov r1, r8
0037db9c  0a 30 a0 e1                                      mov r3, sl
0037dba0  0d 20 a0 e1                                      mov r2, sp
0037dba4  00 40 8d e5                                      str r4, [sp]
0037dba8  0b fd ff eb                                      bl #0x37cfdc
0037dbac  20 00 9d e5                                      ldr r0, [sp, #0x20]
0037dbb0  04 40 9d e5                                      ldr r4, [sp, #4]
0037dbb4  07 00 50 e1                                      cmp r0, r7
0037dbb8  06 00 00 0a                                      beq #0x37dbd8
0037dbbc  00 00 50 e3                                      cmp r0, #0
0037dbc0  04 00 00 0a                                      beq #0x37dbd8
0037dbc4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0037dbc8  01 10 60 e0                                      rsb r1, r0, r1
0037dbcc  80 00 51 e3                                      cmp r1, #0x80
0037dbd0  16 00 00 8a                                      bhi #0x37dc30
0037dbd4  c9 2c 0e eb                                      bl #0x708f00
0037dbd8  38 00 9d e5                                      ldr r0, [sp, #0x38]
0037dbdc  09 00 50 e1                                      cmp r0, sb
0037dbe0  06 00 00 0a                                      beq #0x37dc00
0037dbe4  00 00 50 e3                                      cmp r0, #0
0037dbe8  04 00 00 0a                                      beq #0x37dc00
0037dbec  24 10 9d e5                                      ldr r1, [sp, #0x24]
0037dbf0  01 10 60 e0                                      rsb r1, r0, r1
0037dbf4  80 00 51 e3                                      cmp r1, #0x80
0037dbf8  09 00 00 8a                                      bhi #0x37dc24
0037dbfc  bf 2c 0e eb                                      bl #0x708f00
0037dc00  04 00 a0 e1                                      mov r0, r4
0037dc04  06 30 95 e7                                      ldr r3, [r5, r6]
0037dc08  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0037dc0c  14 00 80 e2                                      add r0, r0, #0x14
0037dc10  00 30 93 e5                                      ldr r3, [r3]
0037dc14  03 00 52 e1                                      cmp r2, r3
0037dc18  06 00 00 1a                                      bne #0x37dc38
0037dc1c  40 d0 8d e2                                      add sp, sp, #0x40
0037dc20  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0037dc24  05 4a fe eb                                      bl #0x310440
0037dc28  04 00 a0 e1                                      mov r0, r4
0037dc2c  f4 ff ff ea                                      b #0x37dc04
0037dc30  02 4a fe eb                                      bl #0x310440
0037dc34  e7 ff ff ea                                      b #0x37dbd8
0037dc38  b4 41 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037dc3c  bc 6f 61 00 ac 40 00 00                          .byte 0xbc, 0x6f, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00
