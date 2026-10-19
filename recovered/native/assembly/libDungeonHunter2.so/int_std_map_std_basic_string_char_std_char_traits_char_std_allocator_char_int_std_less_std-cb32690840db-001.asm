; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00415044, declared_size=404, range_size=404, mode=arm
; class-group: int& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >
; alias: _ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEEixIPKcEERiRKT_
; demangled: int& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >::operator[]<char const*>(char const* const&)
; decoder-mode: arm
00415044  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00415048  80 41 9f e5                                      ldr r4, [pc, #0x180]
0041504c  80 71 9f e5                                      ldr r7, [pc, #0x180]
00415050  6c d0 4d e2                                      sub sp, sp, #0x6c
00415054  04 40 8f e0                                      add r4, pc, r4
00415058  07 30 94 e7                                      ldr r3, [r4, r7]
0041505c  00 80 a0 e1                                      mov r8, r0
00415060  01 60 a0 e1                                      mov r6, r1
00415064  00 30 93 e5                                      ldr r3, [r3]
00415068  64 30 8d e5                                      str r3, [sp, #0x64]
0041506c  8e fd ff eb                                      bl #0x4146ac
00415070  08 00 50 e1                                      cmp r0, r8
00415074  00 50 a0 e1                                      mov r5, r0
00415078  23 00 00 0a                                      beq #0x41510c
0041507c  4c a0 8d e2                                      add sl, sp, #0x4c
00415080  00 10 96 e5                                      ldr r1, [r6]
00415084  14 20 8d e2                                      add r2, sp, #0x14
00415088  0a 00 a0 e1                                      mov r0, sl
0041508c  16 fc fb eb                                      bl #0x3140ec
00415090  60 30 9d e5                                      ldr r3, [sp, #0x60]
00415094  24 10 95 e5                                      ldr r1, [r5, #0x24]
00415098  20 b0 95 e5                                      ldr fp, [r5, #0x20]
0041509c  5c 90 9d e5                                      ldr sb, [sp, #0x5c]
004150a0  03 00 a0 e1                                      mov r0, r3
004150a4  0b b0 61 e0                                      rsb fp, r1, fp
004150a8  09 90 63 e0                                      rsb sb, r3, sb
004150ac  09 00 5b e1                                      cmp fp, sb
004150b0  0b 20 a0 b1                                      movlt r2, fp
004150b4  09 20 a0 a1                                      movge r2, sb
004150b8  48 e5 fb eb                                      bl #0x30e5e0
004150bc  00 00 50 e3                                      cmp r0, #0
004150c0  05 30 a0 e1                                      mov r3, r5
004150c4  0d 00 00 1a                                      bne #0x415100
004150c8  0b 00 59 e1                                      cmp sb, fp
004150cc  0c 00 00 ba                                      blt #0x415104
004150d0  0a 00 a0 e1                                      mov r0, sl
004150d4  04 30 8d e5                                      str r3, [sp, #4]
004150d8  5d 0c fc eb                                      bl #0x318254
004150dc  04 30 9d e5                                      ldr r3, [sp, #4]
004150e0  07 10 94 e7                                      ldr r1, [r4, r7]
004150e4  64 20 9d e5                                      ldr r2, [sp, #0x64]
004150e8  28 00 83 e2                                      add r0, r3, #0x28
004150ec  00 30 91 e5                                      ldr r3, [r1]
004150f0  03 00 52 e1                                      cmp r2, r3
004150f4  34 00 00 1a                                      bne #0x4151cc
004150f8  6c d0 8d e2                                      add sp, sp, #0x6c
004150fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00415100  f2 ff ff aa                                      bge #0x4150d0
00415104  0a 00 a0 e1                                      mov r0, sl
00415108  51 0c fc eb                                      bl #0x318254
0041510c  34 a0 8d e2                                      add sl, sp, #0x34
00415110  00 10 96 e5                                      ldr r1, [r6]
00415114  10 20 8d e2                                      add r2, sp, #0x10
00415118  18 60 8d e2                                      add r6, sp, #0x18
0041511c  0a 00 a0 e1                                      mov r0, sl
00415120  f1 fb fb eb                                      bl #0x3140ec
00415124  06 00 a0 e1                                      mov r0, r6
00415128  48 10 9d e5                                      ldr r1, [sp, #0x48]
0041512c  44 20 9d e5                                      ldr r2, [sp, #0x44]
00415130  28 60 8d e5                                      str r6, [sp, #0x28]
00415134  2c 60 8d e5                                      str r6, [sp, #0x2c]
00415138  6a f1 fb eb                                      bl #0x3116e8
0041513c  0c 00 8d e2                                      add r0, sp, #0xc
00415140  00 c0 a0 e3                                      mov ip, #0
00415144  08 10 a0 e1                                      mov r1, r8
00415148  08 20 8d e2                                      add r2, sp, #8
0041514c  06 30 a0 e1                                      mov r3, r6
00415150  08 50 8d e5                                      str r5, [sp, #8]
00415154  30 c0 8d e5                                      str ip, [sp, #0x30]
00415158  78 fe ff eb                                      bl #0x414b40
0041515c  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00415160  0c 50 9d e5                                      ldr r5, [sp, #0xc]
00415164  06 00 50 e1                                      cmp r0, r6
00415168  06 00 00 0a                                      beq #0x415188
0041516c  00 00 50 e3                                      cmp r0, #0
00415170  04 00 00 0a                                      beq #0x415188
00415174  18 10 9d e5                                      ldr r1, [sp, #0x18]
00415178  01 10 60 e0                                      rsb r1, r0, r1
0041517c  80 00 51 e3                                      cmp r1, #0x80
00415180  0f 00 00 8a                                      bhi #0x4151c4
00415184  5d cf 0b eb                                      bl #0x708f00
00415188  48 00 9d e5                                      ldr r0, [sp, #0x48]
0041518c  0a 00 50 e1                                      cmp r0, sl
00415190  06 00 00 0a                                      beq #0x4151b0
00415194  00 00 50 e3                                      cmp r0, #0
00415198  04 00 00 0a                                      beq #0x4151b0
0041519c  34 10 9d e5                                      ldr r1, [sp, #0x34]
004151a0  01 10 60 e0                                      rsb r1, r0, r1
004151a4  80 00 51 e3                                      cmp r1, #0x80
004151a8  02 00 00 8a                                      bhi #0x4151b8
004151ac  53 cf 0b eb                                      bl #0x708f00
004151b0  05 30 a0 e1                                      mov r3, r5
004151b4  c9 ff ff ea                                      b #0x4150e0
004151b8  a0 ec fb eb                                      bl #0x310440
004151bc  05 30 a0 e1                                      mov r3, r5
004151c0  c6 ff ff ea                                      b #0x4150e0
004151c4  9d ec fb eb                                      bl #0x310440
004151c8  ee ff ff ea                                      b #0x415188
004151cc  4f e4 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004151d0  3c fa 57 00 ac 40 00 00                          .byte 0x3c, 0xfa, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x004c4c30, declared_size=320, range_size=320, mode=arm
; class-group: int& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >
; alias: _ZNSt3mapISsiSt4lessISsESaISt4pairIKSsiEEEixIA256_cEERiRKT_
; demangled: int& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, int> > >::operator[]<char [256]>(char const (&) [256])
; decoder-mode: arm
004c4c30  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004c4c34  2c 41 9f e5                                      ldr r4, [pc, #0x12c]
004c4c38  2c 71 9f e5                                      ldr r7, [pc, #0x12c]
004c4c3c  6c d0 4d e2                                      sub sp, sp, #0x6c
004c4c40  04 40 8f e0                                      add r4, pc, r4
004c4c44  07 30 94 e7                                      ldr r3, [r4, r7]
004c4c48  00 80 a0 e1                                      mov r8, r0
004c4c4c  01 60 a0 e1                                      mov r6, r1
004c4c50  00 30 93 e5                                      ldr r3, [r3]
004c4c54  64 30 8d e5                                      str r3, [sp, #0x64]
004c4c58  8c fe ff eb                                      bl #0x4c4690
004c4c5c  08 00 50 e1                                      cmp r0, r8
004c4c60  00 50 a0 e1                                      mov r5, r0
004c4c64  23 00 00 0a                                      beq #0x4c4cf8
004c4c68  4c a0 8d e2                                      add sl, sp, #0x4c
004c4c6c  06 10 a0 e1                                      mov r1, r6
004c4c70  14 20 8d e2                                      add r2, sp, #0x14
004c4c74  0a 00 a0 e1                                      mov r0, sl
004c4c78  1b 3d f9 eb                                      bl #0x3140ec
004c4c7c  60 30 9d e5                                      ldr r3, [sp, #0x60]
004c4c80  24 10 95 e5                                      ldr r1, [r5, #0x24]
004c4c84  20 b0 95 e5                                      ldr fp, [r5, #0x20]
004c4c88  5c 90 9d e5                                      ldr sb, [sp, #0x5c]
004c4c8c  03 00 a0 e1                                      mov r0, r3
004c4c90  0b b0 61 e0                                      rsb fp, r1, fp
004c4c94  09 90 63 e0                                      rsb sb, r3, sb
004c4c98  09 00 5b e1                                      cmp fp, sb
004c4c9c  0b 20 a0 b1                                      movlt r2, fp
004c4ca0  09 20 a0 a1                                      movge r2, sb
004c4ca4  4d 26 f9 eb                                      bl #0x30e5e0
004c4ca8  00 00 50 e3                                      cmp r0, #0
004c4cac  05 30 a0 e1                                      mov r3, r5
004c4cb0  0d 00 00 1a                                      bne #0x4c4cec
004c4cb4  0b 00 59 e1                                      cmp sb, fp
004c4cb8  0c 00 00 ba                                      blt #0x4c4cf0
004c4cbc  0a 00 a0 e1                                      mov r0, sl
004c4cc0  04 30 8d e5                                      str r3, [sp, #4]
004c4cc4  62 4d f9 eb                                      bl #0x318254
004c4cc8  04 30 9d e5                                      ldr r3, [sp, #4]
004c4ccc  07 10 94 e7                                      ldr r1, [r4, r7]
004c4cd0  64 20 9d e5                                      ldr r2, [sp, #0x64]
004c4cd4  28 00 83 e2                                      add r0, r3, #0x28
004c4cd8  00 30 91 e5                                      ldr r3, [r1]
004c4cdc  03 00 52 e1                                      cmp r2, r3
004c4ce0  1f 00 00 1a                                      bne #0x4c4d64
004c4ce4  6c d0 8d e2                                      add sp, sp, #0x6c
004c4ce8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004c4cec  f2 ff ff aa                                      bge #0x4c4cbc
004c4cf0  0a 00 a0 e1                                      mov r0, sl
004c4cf4  56 4d f9 eb                                      bl #0x318254
004c4cf8  34 a0 8d e2                                      add sl, sp, #0x34
004c4cfc  06 10 a0 e1                                      mov r1, r6
004c4d00  10 20 8d e2                                      add r2, sp, #0x10
004c4d04  18 60 8d e2                                      add r6, sp, #0x18
004c4d08  0a 00 a0 e1                                      mov r0, sl
004c4d0c  f6 3c f9 eb                                      bl #0x3140ec
004c4d10  06 00 a0 e1                                      mov r0, r6
004c4d14  48 10 9d e5                                      ldr r1, [sp, #0x48]
004c4d18  44 20 9d e5                                      ldr r2, [sp, #0x44]
004c4d1c  28 60 8d e5                                      str r6, [sp, #0x28]
004c4d20  2c 60 8d e5                                      str r6, [sp, #0x2c]
004c4d24  6f 32 f9 eb                                      bl #0x3116e8
004c4d28  06 30 a0 e1                                      mov r3, r6
004c4d2c  00 c0 a0 e3                                      mov ip, #0
004c4d30  08 10 a0 e1                                      mov r1, r8
004c4d34  08 20 8d e2                                      add r2, sp, #8
004c4d38  0c 00 8d e2                                      add r0, sp, #0xc
004c4d3c  30 c0 8d e5                                      str ip, [sp, #0x30]
004c4d40  08 50 8d e5                                      str r5, [sp, #8]
004c4d44  7d 3f fd eb                                      bl #0x414b40
004c4d48  0c 50 9d e5                                      ldr r5, [sp, #0xc]
004c4d4c  06 00 a0 e1                                      mov r0, r6
004c4d50  3f 4d f9 eb                                      bl #0x318254
004c4d54  0a 00 a0 e1                                      mov r0, sl
004c4d58  3d 4d f9 eb                                      bl #0x318254
004c4d5c  05 30 a0 e1                                      mov r3, r5
004c4d60  d9 ff ff ea                                      b #0x4c4ccc
004c4d64  69 25 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004c4d68  50 fe 4c 00 ac 40 00 00                          .byte 0x50, 0xfe, 0x4c, 0x00, 0xac, 0x40, 0x00, 0x00
