; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003e209c, declared_size=268, range_size=268, mode=arm
; class-group: CharProperties::BuffDecl& std::map<int, CharProperties::BuffDecl, std::less<int>, std::allocator<std::pair<int const, CharProperties::BuffDecl> > >
; alias: _ZNSt3mapIiN14CharProperties8BuffDeclESt4lessIiESaISt4pairIKiS1_EEEixIiEERS1_RKT_
; demangled: CharProperties::BuffDecl& std::map<int, CharProperties::BuffDecl, std::less<int>, std::allocator<std::pair<int const, CharProperties::BuffDecl> > >::operator[]<int>(int const&)
; decoder-mode: arm
003e209c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003e20a0  f8 50 9f e5                                      ldr r5, [pc, #0xf8]
003e20a4  f8 60 9f e5                                      ldr r6, [pc, #0xf8]
003e20a8  04 40 90 e5                                      ldr r4, [r0, #4]
003e20ac  05 50 8f e0                                      add r5, pc, r5
003e20b0  06 30 95 e7                                      ldr r3, [r5, r6]
003e20b4  a0 d0 4d e2                                      sub sp, sp, #0xa0
003e20b8  00 00 54 e3                                      cmp r4, #0
003e20bc  00 30 93 e5                                      ldr r3, [r3]
003e20c0  00 a0 a0 e1                                      mov sl, r0
003e20c4  01 80 a0 e1                                      mov r8, r1
003e20c8  9c 30 8d e5                                      str r3, [sp, #0x9c]
003e20cc  00 40 a0 01                                      moveq r4, r0
003e20d0  0b 00 00 0a                                      beq #0x3e2104
003e20d4  00 10 91 e5                                      ldr r1, [r1]
003e20d8  00 20 a0 e1                                      mov r2, r0
003e20dc  01 00 00 ea                                      b #0x3e20e8
003e20e0  04 20 a0 e1                                      mov r2, r4
003e20e4  03 40 a0 e1                                      mov r4, r3
003e20e8  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e20ec  03 00 51 e1                                      cmp r1, r3
003e20f0  0c 30 94 c5                                      ldrgt r3, [r4, #0xc]
003e20f4  08 30 94 d5                                      ldrle r3, [r4, #8]
003e20f8  02 40 a0 c1                                      movgt r4, r2
003e20fc  00 00 53 e3                                      cmp r3, #0
003e2100  f6 ff ff 1a                                      bne #0x3e20e0
003e2104  04 00 5a e1                                      cmp sl, r4
003e2108  0c 00 00 0a                                      beq #0x3e2140
003e210c  00 20 98 e5                                      ldr r2, [r8]
003e2110  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e2114  04 00 a0 e1                                      mov r0, r4
003e2118  03 00 52 e1                                      cmp r2, r3
003e211c  07 00 00 ba                                      blt #0x3e2140
003e2120  06 30 95 e7                                      ldr r3, [r5, r6]
003e2124  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
003e2128  14 00 80 e2                                      add r0, r0, #0x14
003e212c  00 30 93 e5                                      ldr r3, [r3]
003e2130  03 00 52 e1                                      cmp r2, r3
003e2134  18 00 00 1a                                      bne #0x3e219c
003e2138  a0 d0 8d e2                                      add sp, sp, #0xa0
003e213c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003e2140  54 70 8d e2                                      add r7, sp, #0x54
003e2144  07 00 a0 e1                                      mov r0, r7
003e2148  2e fe ff eb                                      bl #0x3e1a08
003e214c  00 30 98 e5                                      ldr r3, [r8]
003e2150  a0 90 8d e2                                      add sb, sp, #0xa0
003e2154  07 10 a0 e1                                      mov r1, r7
003e2158  98 30 29 e5                                      str r3, [sb, #-0x98]!
003e215c  04 80 89 e2                                      add r8, sb, #4
003e2160  08 00 a0 e1                                      mov r0, r8
003e2164  15 fe ff eb                                      bl #0x3e19c0
003e2168  0a 10 a0 e1                                      mov r1, sl
003e216c  09 30 a0 e1                                      mov r3, sb
003e2170  0d 20 a0 e1                                      mov r2, sp
003e2174  04 00 8d e2                                      add r0, sp, #4
003e2178  00 40 8d e5                                      str r4, [sp]
003e217c  e9 fe ff eb                                      bl #0x3e1d28
003e2180  04 40 9d e5                                      ldr r4, [sp, #4]
003e2184  08 00 a0 e1                                      mov r0, r8
003e2188  36 fa ff eb                                      bl #0x3e0a68
003e218c  07 00 a0 e1                                      mov r0, r7
003e2190  34 fa ff eb                                      bl #0x3e0a68
003e2194  04 00 a0 e1                                      mov r0, r4
003e2198  e0 ff ff ea                                      b #0x3e2120
003e219c  5b b0 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003e21a0  e4 29 5b 00 ac 40 00 00                          .byte 0xe4, 0x29, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00
