; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0046e338, declared_size=324, range_size=324, mode=arm
; class-group: SavegameManager::_GameOption& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, SavegameManager::_GameOption, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >
; alias: _ZNSt3mapISsN15SavegameManager11_GameOptionESt4lessISsESaISt4pairIKSsS1_EEEixIPKcEERS1_RKT_
; demangled: SavegameManager::_GameOption& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, SavegameManager::_GameOption, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, SavegameManager::_GameOption> > >::operator[]<char const*>(char const* const&)
; decoder-mode: arm
0046e338  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0046e33c  30 41 9f e5                                      ldr r4, [pc, #0x130]
0046e340  30 71 9f e5                                      ldr r7, [pc, #0x130]
0046e344  74 d0 4d e2                                      sub sp, sp, #0x74
0046e348  04 40 8f e0                                      add r4, pc, r4
0046e34c  07 30 94 e7                                      ldr r3, [r4, r7]
0046e350  00 80 a0 e1                                      mov r8, r0
0046e354  01 60 a0 e1                                      mov r6, r1
0046e358  00 30 93 e5                                      ldr r3, [r3]
0046e35c  6c 30 8d e5                                      str r3, [sp, #0x6c]
0046e360  cb fc ff eb                                      bl #0x46d694
0046e364  08 00 50 e1                                      cmp r0, r8
0046e368  00 50 a0 e1                                      mov r5, r0
0046e36c  23 00 00 0a                                      beq #0x46e400
0046e370  54 a0 8d e2                                      add sl, sp, #0x54
0046e374  00 10 96 e5                                      ldr r1, [r6]
0046e378  18 20 8d e2                                      add r2, sp, #0x18
0046e37c  0a 00 a0 e1                                      mov r0, sl
0046e380  59 97 fa eb                                      bl #0x3140ec
0046e384  68 30 9d e5                                      ldr r3, [sp, #0x68]
0046e388  24 10 95 e5                                      ldr r1, [r5, #0x24]
0046e38c  20 b0 95 e5                                      ldr fp, [r5, #0x20]
0046e390  64 90 9d e5                                      ldr sb, [sp, #0x64]
0046e394  03 00 a0 e1                                      mov r0, r3
0046e398  0b b0 61 e0                                      rsb fp, r1, fp
0046e39c  09 90 63 e0                                      rsb sb, r3, sb
0046e3a0  09 00 5b e1                                      cmp fp, sb
0046e3a4  0b 20 a0 b1                                      movlt r2, fp
0046e3a8  09 20 a0 a1                                      movge r2, sb
0046e3ac  8b 80 fa eb                                      bl #0x30e5e0
0046e3b0  00 00 50 e3                                      cmp r0, #0
0046e3b4  05 30 a0 e1                                      mov r3, r5
0046e3b8  0d 00 00 1a                                      bne #0x46e3f4
0046e3bc  0b 00 59 e1                                      cmp sb, fp
0046e3c0  0c 00 00 ba                                      blt #0x46e3f8
0046e3c4  0a 00 a0 e1                                      mov r0, sl
0046e3c8  04 30 8d e5                                      str r3, [sp, #4]
0046e3cc  a0 a7 fa eb                                      bl #0x318254
0046e3d0  04 30 9d e5                                      ldr r3, [sp, #4]
0046e3d4  07 10 94 e7                                      ldr r1, [r4, r7]
0046e3d8  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0046e3dc  28 00 83 e2                                      add r0, r3, #0x28
0046e3e0  00 30 91 e5                                      ldr r3, [r1]
0046e3e4  03 00 52 e1                                      cmp r2, r3
0046e3e8  20 00 00 1a                                      bne #0x46e470
0046e3ec  74 d0 8d e2                                      add sp, sp, #0x74
0046e3f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0046e3f4  f2 ff ff aa                                      bge #0x46e3c4
0046e3f8  0a 00 a0 e1                                      mov r0, sl
0046e3fc  94 a7 fa eb                                      bl #0x318254
0046e400  3c a0 8d e2                                      add sl, sp, #0x3c
0046e404  00 10 96 e5                                      ldr r1, [r6]
0046e408  14 20 8d e2                                      add r2, sp, #0x14
0046e40c  1c 60 8d e2                                      add r6, sp, #0x1c
0046e410  0a 00 a0 e1                                      mov r0, sl
0046e414  34 97 fa eb                                      bl #0x3140ec
0046e418  06 00 a0 e1                                      mov r0, r6
0046e41c  50 10 9d e5                                      ldr r1, [sp, #0x50]
0046e420  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0046e424  2c 60 8d e5                                      str r6, [sp, #0x2c]
0046e428  30 60 8d e5                                      str r6, [sp, #0x30]
0046e42c  ad 8c fa eb                                      bl #0x3116e8
0046e430  00 c0 a0 e3                                      mov ip, #0
0046e434  06 30 a0 e1                                      mov r3, r6
0046e438  08 10 a0 e1                                      mov r1, r8
0046e43c  0c 20 8d e2                                      add r2, sp, #0xc
0046e440  10 00 8d e2                                      add r0, sp, #0x10
0046e444  34 c0 8d e5                                      str ip, [sp, #0x34]
0046e448  38 c0 8d e5                                      str ip, [sp, #0x38]
0046e44c  0c 50 8d e5                                      str r5, [sp, #0xc]
0046e450  77 fe ff eb                                      bl #0x46de34
0046e454  10 50 9d e5                                      ldr r5, [sp, #0x10]
0046e458  06 00 a0 e1                                      mov r0, r6
0046e45c  7c a7 fa eb                                      bl #0x318254
0046e460  0a 00 a0 e1                                      mov r0, sl
0046e464  7a a7 fa eb                                      bl #0x318254
0046e468  05 30 a0 e1                                      mov r3, r5
0046e46c  d8 ff ff ea                                      b #0x46e3d4
0046e470  a6 7f fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0046e474  48 67 52 00 ac 40 00 00                          .byte 0x48, 0x67, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00
