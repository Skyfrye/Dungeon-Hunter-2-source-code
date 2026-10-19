; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0037b0fc, declared_size=320, range_size=320, mode=arm
; class-group: StreamBuffer*& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, StreamBuffer*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >
; alias: _ZNSt3mapISsP12StreamBufferSt4lessISsESaISt4pairIKSsS1_EEEixIPKcEERS1_RKT_
; demangled: StreamBuffer*& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, StreamBuffer*, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, StreamBuffer*> > >::operator[]<char const*>(char const* const&)
; decoder-mode: arm
0037b0fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0037b100  2c 41 9f e5                                      ldr r4, [pc, #0x12c]
0037b104  2c 71 9f e5                                      ldr r7, [pc, #0x12c]
0037b108  6c d0 4d e2                                      sub sp, sp, #0x6c
0037b10c  04 40 8f e0                                      add r4, pc, r4
0037b110  07 30 94 e7                                      ldr r3, [r4, r7]
0037b114  00 80 a0 e1                                      mov r8, r0
0037b118  01 60 a0 e1                                      mov r6, r1
0037b11c  00 30 93 e5                                      ldr r3, [r3]
0037b120  64 30 8d e5                                      str r3, [sp, #0x64]
0037b124  d1 fc ff eb                                      bl #0x37a470
0037b128  08 00 50 e1                                      cmp r0, r8
0037b12c  00 50 a0 e1                                      mov r5, r0
0037b130  23 00 00 0a                                      beq #0x37b1c4
0037b134  4c a0 8d e2                                      add sl, sp, #0x4c
0037b138  00 10 96 e5                                      ldr r1, [r6]
0037b13c  14 20 8d e2                                      add r2, sp, #0x14
0037b140  0a 00 a0 e1                                      mov r0, sl
0037b144  e8 63 fe eb                                      bl #0x3140ec
0037b148  60 30 9d e5                                      ldr r3, [sp, #0x60]
0037b14c  24 10 95 e5                                      ldr r1, [r5, #0x24]
0037b150  20 b0 95 e5                                      ldr fp, [r5, #0x20]
0037b154  5c 90 9d e5                                      ldr sb, [sp, #0x5c]
0037b158  03 00 a0 e1                                      mov r0, r3
0037b15c  0b b0 61 e0                                      rsb fp, r1, fp
0037b160  09 90 63 e0                                      rsb sb, r3, sb
0037b164  09 00 5b e1                                      cmp fp, sb
0037b168  0b 20 a0 b1                                      movlt r2, fp
0037b16c  09 20 a0 a1                                      movge r2, sb
0037b170  1a 4d fe eb                                      bl #0x30e5e0
0037b174  00 00 50 e3                                      cmp r0, #0
0037b178  05 30 a0 e1                                      mov r3, r5
0037b17c  0d 00 00 1a                                      bne #0x37b1b8
0037b180  0b 00 59 e1                                      cmp sb, fp
0037b184  0c 00 00 ba                                      blt #0x37b1bc
0037b188  0a 00 a0 e1                                      mov r0, sl
0037b18c  04 30 8d e5                                      str r3, [sp, #4]
0037b190  05 62 fe eb                                      bl #0x3139ac
0037b194  04 30 9d e5                                      ldr r3, [sp, #4]
0037b198  07 10 94 e7                                      ldr r1, [r4, r7]
0037b19c  64 20 9d e5                                      ldr r2, [sp, #0x64]
0037b1a0  28 00 83 e2                                      add r0, r3, #0x28
0037b1a4  00 30 91 e5                                      ldr r3, [r1]
0037b1a8  03 00 52 e1                                      cmp r2, r3
0037b1ac  1f 00 00 1a                                      bne #0x37b230
0037b1b0  6c d0 8d e2                                      add sp, sp, #0x6c
0037b1b4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0037b1b8  f2 ff ff aa                                      bge #0x37b188
0037b1bc  0a 00 a0 e1                                      mov r0, sl
0037b1c0  f9 61 fe eb                                      bl #0x3139ac
0037b1c4  34 a0 8d e2                                      add sl, sp, #0x34
0037b1c8  00 10 96 e5                                      ldr r1, [r6]
0037b1cc  10 20 8d e2                                      add r2, sp, #0x10
0037b1d0  18 60 8d e2                                      add r6, sp, #0x18
0037b1d4  0a 00 a0 e1                                      mov r0, sl
0037b1d8  c3 63 fe eb                                      bl #0x3140ec
0037b1dc  06 00 a0 e1                                      mov r0, r6
0037b1e0  48 10 9d e5                                      ldr r1, [sp, #0x48]
0037b1e4  44 20 9d e5                                      ldr r2, [sp, #0x44]
0037b1e8  28 60 8d e5                                      str r6, [sp, #0x28]
0037b1ec  2c 60 8d e5                                      str r6, [sp, #0x2c]
0037b1f0  3c 59 fe eb                                      bl #0x3116e8
0037b1f4  06 30 a0 e1                                      mov r3, r6
0037b1f8  00 c0 a0 e3                                      mov ip, #0
0037b1fc  08 10 a0 e1                                      mov r1, r8
0037b200  08 20 8d e2                                      add r2, sp, #8
0037b204  0c 00 8d e2                                      add r0, sp, #0xc
0037b208  30 c0 8d e5                                      str ip, [sp, #0x30]
0037b20c  08 50 8d e5                                      str r5, [sp, #8]
0037b210  78 fe ff eb                                      bl #0x37abf8
0037b214  0c 50 9d e5                                      ldr r5, [sp, #0xc]
0037b218  06 00 a0 e1                                      mov r0, r6
0037b21c  e2 61 fe eb                                      bl #0x3139ac
0037b220  0a 00 a0 e1                                      mov r0, sl
0037b224  e0 61 fe eb                                      bl #0x3139ac
0037b228  05 30 a0 e1                                      mov r3, r5
0037b22c  d9 ff ff ea                                      b #0x37b198
0037b230  36 4c fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0037b234  84 99 61 00 ac 40 00 00                          .byte 0x84, 0x99, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00
