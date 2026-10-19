; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0080ca98, declared_size=292, range_size=292, mode=arm
; class-group: std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >& std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >
; alias: _ZNSt3mapIiSt3setItSt4lessItESaItEES1_IiESaISt4pairIKiS4_EEEixIiEERS4_RKT_
; demangled: std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >& std::map<int, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> >, std::less<int>, std::allocator<std::pair<int const, std::set<unsigned short, std::less<unsigned short>, std::allocator<unsigned short> > > > >::operator[]<int>(int const&)
; decoder-mode: arm
0080ca98  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0080ca9c  04 40 90 e5                                      ldr r4, [r0, #4]
0080caa0  44 d0 4d e2                                      sub sp, sp, #0x44
0080caa4  00 80 a0 e1                                      mov r8, r0
0080caa8  00 00 54 e3                                      cmp r4, #0
0080caac  3f 00 00 0a                                      beq #0x80cbb0
0080cab0  00 10 91 e5                                      ldr r1, [r1]
0080cab4  00 20 a0 e1                                      mov r2, r0
0080cab8  00 00 00 ea                                      b #0x80cac0
0080cabc  03 40 a0 e1                                      mov r4, r3
0080cac0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0080cac4  03 00 51 e1                                      cmp r1, r3
0080cac8  0c 30 94 c5                                      ldrgt r3, [r4, #0xc]
0080cacc  08 30 94 d5                                      ldrle r3, [r4, #8]
0080cad0  02 40 a0 c1                                      movgt r4, r2
0080cad4  04 20 a0 e1                                      mov r2, r4
0080cad8  00 00 53 e3                                      cmp r3, #0
0080cadc  f6 ff ff 1a                                      bne #0x80cabc
0080cae0  04 00 58 e1                                      cmp r8, r4
0080cae4  03 00 00 0a                                      beq #0x80caf8
0080cae8  10 30 94 e5                                      ldr r3, [r4, #0x10]
0080caec  04 00 a0 e1                                      mov r0, r4
0080caf0  03 00 51 e1                                      cmp r1, r3
0080caf4  1a 00 00 aa                                      bge #0x80cb64
0080caf8  40 a0 8d e2                                      add sl, sp, #0x40
0080cafc  3c 10 2a e5                                      str r1, [sl, #-0x3c]!
0080cb00  40 50 8d e2                                      add r5, sp, #0x40
0080cb04  00 60 a0 e3                                      mov r6, #0
0080cb08  20 60 65 e5                                      strb r6, [r5, #-0x20]!
0080cb0c  04 70 8a e2                                      add r7, sl, #4
0080cb10  05 10 a0 e1                                      mov r1, r5
0080cb14  07 00 a0 e1                                      mov r0, r7
0080cb18  24 60 8d e5                                      str r6, [sp, #0x24]
0080cb1c  28 50 8d e5                                      str r5, [sp, #0x28]
0080cb20  2c 50 8d e5                                      str r5, [sp, #0x2c]
0080cb24  30 60 8d e5                                      str r6, [sp, #0x30]
0080cb28  1b fc ff eb                                      bl #0x80bb9c
0080cb2c  0a 30 a0 e1                                      mov r3, sl
0080cb30  08 10 a0 e1                                      mov r1, r8
0080cb34  3c 00 8d e2                                      add r0, sp, #0x3c
0080cb38  38 20 8d e2                                      add r2, sp, #0x38
0080cb3c  38 40 8d e5                                      str r4, [sp, #0x38]
0080cb40  de fc ff eb                                      bl #0x80bec0
0080cb44  18 30 9d e5                                      ldr r3, [sp, #0x18]
0080cb48  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
0080cb4c  06 00 53 e1                                      cmp r3, r6
0080cb50  0b 00 00 1a                                      bne #0x80cb84
0080cb54  30 30 9d e5                                      ldr r3, [sp, #0x30]
0080cb58  00 00 53 e3                                      cmp r3, #0
0080cb5c  03 00 00 1a                                      bne #0x80cb70
0080cb60  04 00 a0 e1                                      mov r0, r4
0080cb64  14 00 80 e2                                      add r0, r0, #0x14
0080cb68  44 d0 8d e2                                      add sp, sp, #0x44
0080cb6c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0080cb70  05 00 a0 e1                                      mov r0, r5
0080cb74  24 10 9d e5                                      ldr r1, [sp, #0x24]
0080cb78  05 f8 ff eb                                      bl #0x80ab94
0080cb7c  04 00 a0 e1                                      mov r0, r4
0080cb80  f7 ff ff ea                                      b #0x80cb64
0080cb84  07 00 a0 e1                                      mov r0, r7
0080cb88  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0080cb8c  00 f8 ff eb                                      bl #0x80ab94
0080cb90  30 30 9d e5                                      ldr r3, [sp, #0x30]
0080cb94  14 70 8d e5                                      str r7, [sp, #0x14]
0080cb98  18 60 8d e5                                      str r6, [sp, #0x18]
0080cb9c  00 00 53 e3                                      cmp r3, #0
0080cba0  10 70 8d e5                                      str r7, [sp, #0x10]
0080cba4  0c 60 8d e5                                      str r6, [sp, #0xc]
0080cba8  ec ff ff 0a                                      beq #0x80cb60
0080cbac  ef ff ff ea                                      b #0x80cb70
0080cbb0  00 10 91 e5                                      ldr r1, [r1]
0080cbb4  00 40 a0 e1                                      mov r4, r0
0080cbb8  c8 ff ff ea                                      b #0x80cae0
