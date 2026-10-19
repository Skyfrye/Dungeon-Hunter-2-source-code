; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004c5274, declared_size=408, range_size=408, mode=arm
; class-group: std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >
; alias: _ZNSt3mapISsS_ISsiSt4lessISsESaISt4pairIKSsiEEES1_SaIS2_IS3_S6_EEEixIA256_cEERS6_RKT_
; demangled: std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > > > > >::operator[]<char [256]>(char const (&) [256])
; decoder-mode: arm
004c5274  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004c5278  84 41 9f e5                                      ldr r4, [pc, #0x184]
004c527c  84 91 9f e5                                      ldr sb, [pc, #0x184]
004c5280  9c d0 4d e2                                      sub sp, sp, #0x9c
004c5284  04 40 8f e0                                      add r4, pc, r4
004c5288  09 30 94 e7                                      ldr r3, [r4, sb]
004c528c  00 b0 a0 e1                                      mov fp, r0
004c5290  01 60 a0 e1                                      mov r6, r1
004c5294  00 30 93 e5                                      ldr r3, [r3]
004c5298  94 30 8d e5                                      str r3, [sp, #0x94]
004c529c  bf fc ff eb                                      bl #0x4c45a0
004c52a0  0b 00 50 e1                                      cmp r0, fp
004c52a4  00 50 a0 e1                                      mov r5, r0
004c52a8  23 00 00 0a                                      beq #0x4c533c
004c52ac  7c 70 8d e2                                      add r7, sp, #0x7c
004c52b0  06 10 a0 e1                                      mov r1, r6
004c52b4  30 20 8d e2                                      add r2, sp, #0x30
004c52b8  07 00 a0 e1                                      mov r0, r7
004c52bc  8a 3b f9 eb                                      bl #0x3140ec
004c52c0  90 30 9d e5                                      ldr r3, [sp, #0x90]
004c52c4  24 10 95 e5                                      ldr r1, [r5, #0x24]
004c52c8  20 80 95 e5                                      ldr r8, [r5, #0x20]
004c52cc  8c a0 9d e5                                      ldr sl, [sp, #0x8c]
004c52d0  03 00 a0 e1                                      mov r0, r3
004c52d4  08 80 61 e0                                      rsb r8, r1, r8
004c52d8  0a a0 63 e0                                      rsb sl, r3, sl
004c52dc  0a 00 58 e1                                      cmp r8, sl
004c52e0  08 20 a0 b1                                      movlt r2, r8
004c52e4  0a 20 a0 a1                                      movge r2, sl
004c52e8  bc 24 f9 eb                                      bl #0x30e5e0
004c52ec  00 00 50 e3                                      cmp r0, #0
004c52f0  05 30 a0 e1                                      mov r3, r5
004c52f4  0d 00 00 1a                                      bne #0x4c5330
004c52f8  08 00 5a e1                                      cmp sl, r8
004c52fc  0c 00 00 ba                                      blt #0x4c5334
004c5300  07 00 a0 e1                                      mov r0, r7
004c5304  04 30 8d e5                                      str r3, [sp, #4]
004c5308  d1 4b f9 eb                                      bl #0x318254
004c530c  04 30 9d e5                                      ldr r3, [sp, #4]
004c5310  09 10 94 e7                                      ldr r1, [r4, sb]
004c5314  94 20 9d e5                                      ldr r2, [sp, #0x94]
004c5318  28 00 83 e2                                      add r0, r3, #0x28
004c531c  00 30 91 e5                                      ldr r3, [r1]
004c5320  03 00 52 e1                                      cmp r2, r3
004c5324  35 00 00 1a                                      bne #0x4c5400
004c5328  9c d0 8d e2                                      add sp, sp, #0x9c
004c532c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004c5330  f2 ff ff aa                                      bge #0x4c5300
004c5334  07 00 a0 e1                                      mov r0, r7
004c5338  c5 4b f9 eb                                      bl #0x318254
004c533c  64 a0 8d e2                                      add sl, sp, #0x64
004c5340  98 70 8d e2                                      add r7, sp, #0x98
004c5344  00 80 a0 e3                                      mov r8, #0
004c5348  06 10 a0 e1                                      mov r1, r6
004c534c  2c 20 8d e2                                      add r2, sp, #0x2c
004c5350  34 60 8d e2                                      add r6, sp, #0x34
004c5354  0a 00 a0 e1                                      mov r0, sl
004c5358  63 3b f9 eb                                      bl #0x3140ec
004c535c  8c 80 67 e5                                      strb r8, [r7, #-0x8c]!
004c5360  74 20 9d e5                                      ldr r2, [sp, #0x74]
004c5364  06 00 a0 e1                                      mov r0, r6
004c5368  78 10 9d e5                                      ldr r1, [sp, #0x78]
004c536c  10 80 8d e5                                      str r8, [sp, #0x10]
004c5370  14 70 8d e5                                      str r7, [sp, #0x14]
004c5374  18 70 8d e5                                      str r7, [sp, #0x18]
004c5378  1c 80 8d e5                                      str r8, [sp, #0x1c]
004c537c  44 60 8d e5                                      str r6, [sp, #0x44]
004c5380  48 60 8d e5                                      str r6, [sp, #0x48]
004c5384  d7 30 f9 eb                                      bl #0x3116e8
004c5388  07 10 a0 e1                                      mov r1, r7
004c538c  18 00 86 e2                                      add r0, r6, #0x18
004c5390  11 fc ff eb                                      bl #0x4c43dc
004c5394  06 30 a0 e1                                      mov r3, r6
004c5398  0b 10 a0 e1                                      mov r1, fp
004c539c  28 00 8d e2                                      add r0, sp, #0x28
004c53a0  24 20 8d e2                                      add r2, sp, #0x24
004c53a4  24 50 8d e5                                      str r5, [sp, #0x24]
004c53a8  70 fe ff eb                                      bl #0x4c4d70
004c53ac  06 00 a0 e1                                      mov r0, r6
004c53b0  28 50 9d e5                                      ldr r5, [sp, #0x28]
004c53b4  81 fb ff eb                                      bl #0x4c41c0
004c53b8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
004c53bc  08 00 53 e1                                      cmp r3, r8
004c53c0  03 00 00 1a                                      bne #0x4c53d4
004c53c4  0a 00 a0 e1                                      mov r0, sl
004c53c8  a1 4b f9 eb                                      bl #0x318254
004c53cc  05 30 a0 e1                                      mov r3, r5
004c53d0  ce ff ff ea                                      b #0x4c5310
004c53d4  07 00 a0 e1                                      mov r0, r7
004c53d8  10 10 9d e5                                      ldr r1, [sp, #0x10]
004c53dc  d7 b1 fc eb                                      bl #0x3f1b40
004c53e0  0a 00 a0 e1                                      mov r0, sl
004c53e4  18 70 8d e5                                      str r7, [sp, #0x18]
004c53e8  1c 80 8d e5                                      str r8, [sp, #0x1c]
004c53ec  14 70 8d e5                                      str r7, [sp, #0x14]
004c53f0  10 80 8d e5                                      str r8, [sp, #0x10]
004c53f4  96 4b f9 eb                                      bl #0x318254
004c53f8  05 30 a0 e1                                      mov r3, r5
004c53fc  c3 ff ff ea                                      b #0x4c5310
004c5400  c2 23 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004c5404  0c f8 4c 00 ac 40 00 00                          .byte 0x0c, 0xf8, 0x4c, 0x00, 0xac, 0x40, 0x00, 0x00
