; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004be274, declared_size=364, range_size=364, mode=arm
; class-group: std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> >& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >
; alias: _ZNSt3mapISsSt6vectorIN12PyDataArrays6_FuncsESaIS2_EESt4lessISsESaISt4pairIKSsS4_EEEixIPKcEERS4_RKT_
; demangled: std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> >& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> >, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, std::vector<PyDataArrays::_Funcs, std::allocator<PyDataArrays::_Funcs> > > > >::operator[]<char const*>(char const* const&)
; decoder-mode: arm
004be274  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004be278  58 41 9f e5                                      ldr r4, [pc, #0x158]
004be27c  58 71 9f e5                                      ldr r7, [pc, #0x158]
004be280  84 d0 4d e2                                      sub sp, sp, #0x84
004be284  04 40 8f e0                                      add r4, pc, r4
004be288  07 30 94 e7                                      ldr r3, [r4, r7]
004be28c  00 80 a0 e1                                      mov r8, r0
004be290  01 60 a0 e1                                      mov r6, r1
004be294  00 30 93 e5                                      ldr r3, [r3]
004be298  7c 30 8d e5                                      str r3, [sp, #0x7c]
004be29c  82 fa ff eb                                      bl #0x4bccac
004be2a0  08 00 50 e1                                      cmp r0, r8
004be2a4  00 50 a0 e1                                      mov r5, r0
004be2a8  23 00 00 0a                                      beq #0x4be33c
004be2ac  64 a0 8d e2                                      add sl, sp, #0x64
004be2b0  00 10 96 e5                                      ldr r1, [r6]
004be2b4  24 20 8d e2                                      add r2, sp, #0x24
004be2b8  0a 00 a0 e1                                      mov r0, sl
004be2bc  8a 57 f9 eb                                      bl #0x3140ec
004be2c0  78 30 9d e5                                      ldr r3, [sp, #0x78]
004be2c4  24 10 95 e5                                      ldr r1, [r5, #0x24]
004be2c8  20 b0 95 e5                                      ldr fp, [r5, #0x20]
004be2cc  74 90 9d e5                                      ldr sb, [sp, #0x74]
004be2d0  03 00 a0 e1                                      mov r0, r3
004be2d4  0b b0 61 e0                                      rsb fp, r1, fp
004be2d8  09 90 63 e0                                      rsb sb, r3, sb
004be2dc  09 00 5b e1                                      cmp fp, sb
004be2e0  0b 20 a0 b1                                      movlt r2, fp
004be2e4  09 20 a0 a1                                      movge r2, sb
004be2e8  bc 40 f9 eb                                      bl #0x30e5e0
004be2ec  00 00 50 e3                                      cmp r0, #0
004be2f0  05 30 a0 e1                                      mov r3, r5
004be2f4  0d 00 00 1a                                      bne #0x4be330
004be2f8  0b 00 59 e1                                      cmp sb, fp
004be2fc  0c 00 00 ba                                      blt #0x4be334
004be300  0a 00 a0 e1                                      mov r0, sl
004be304  04 30 8d e5                                      str r3, [sp, #4]
004be308  d1 67 f9 eb                                      bl #0x318254
004be30c  04 30 9d e5                                      ldr r3, [sp, #4]
004be310  07 10 94 e7                                      ldr r1, [r4, r7]
004be314  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
004be318  28 00 83 e2                                      add r0, r3, #0x28
004be31c  00 30 91 e5                                      ldr r3, [r1]
004be320  03 00 52 e1                                      cmp r2, r3
004be324  2a 00 00 1a                                      bne #0x4be3d4
004be328  84 d0 8d e2                                      add sp, sp, #0x84
004be32c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004be330  f2 ff ff aa                                      bge #0x4be300
004be334  0a 00 a0 e1                                      mov r0, sl
004be338  c5 67 f9 eb                                      bl #0x318254
004be33c  4c b0 8d e2                                      add fp, sp, #0x4c
004be340  00 10 96 e5                                      ldr r1, [r6]
004be344  20 20 8d e2                                      add r2, sp, #0x20
004be348  28 60 8d e2                                      add r6, sp, #0x28
004be34c  0b 00 a0 e1                                      mov r0, fp
004be350  65 57 f9 eb                                      bl #0x3140ec
004be354  18 a0 86 e2                                      add sl, r6, #0x18
004be358  00 30 a0 e3                                      mov r3, #0
004be35c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
004be360  06 00 a0 e1                                      mov r0, r6
004be364  60 10 9d e5                                      ldr r1, [sp, #0x60]
004be368  0c 90 8d e2                                      add sb, sp, #0xc
004be36c  14 30 8d e5                                      str r3, [sp, #0x14]
004be370  0c 30 8d e5                                      str r3, [sp, #0xc]
004be374  10 30 8d e5                                      str r3, [sp, #0x10]
004be378  38 60 8d e5                                      str r6, [sp, #0x38]
004be37c  3c 60 8d e5                                      str r6, [sp, #0x3c]
004be380  d8 4c f9 eb                                      bl #0x3116e8
004be384  09 10 a0 e1                                      mov r1, sb
004be388  0a 00 a0 e1                                      mov r0, sl
004be38c  70 c6 ff eb                                      bl #0x4afd54
004be390  06 30 a0 e1                                      mov r3, r6
004be394  08 10 a0 e1                                      mov r1, r8
004be398  18 20 8d e2                                      add r2, sp, #0x18
004be39c  1c 00 8d e2                                      add r0, sp, #0x1c
004be3a0  18 50 8d e5                                      str r5, [sp, #0x18]
004be3a4  71 fe ff eb                                      bl #0x4bdd70
004be3a8  0a 00 a0 e1                                      mov r0, sl
004be3ac  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
004be3b0  ff c4 ff eb                                      bl #0x4af7b4
004be3b4  06 00 a0 e1                                      mov r0, r6
004be3b8  a5 67 f9 eb                                      bl #0x318254
004be3bc  09 00 a0 e1                                      mov r0, sb
004be3c0  fb c4 ff eb                                      bl #0x4af7b4
004be3c4  0b 00 a0 e1                                      mov r0, fp
004be3c8  a1 67 f9 eb                                      bl #0x318254
004be3cc  05 30 a0 e1                                      mov r3, r5
004be3d0  ce ff ff ea                                      b #0x4be310
004be3d4  cd 3f f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004be3d8  0c 68 4d 00 ac 40 00 00                          .byte 0x0c, 0x68, 0x4d, 0x00, 0xac, 0x40, 0x00, 0x00
