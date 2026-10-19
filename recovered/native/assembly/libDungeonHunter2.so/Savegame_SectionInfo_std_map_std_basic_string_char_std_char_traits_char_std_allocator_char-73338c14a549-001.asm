; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003156f0, declared_size=344, range_size=344, mode=arm
; class-group: Savegame::SectionInfo& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Savegame::SectionInfo, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >
; alias: _ZNSt3mapISsN8Savegame11SectionInfoESt4lessISsESaISt4pairIKSsS1_EEEixIPKcEERS1_RKT_
; demangled: Savegame::SectionInfo& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Savegame::SectionInfo, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >::operator[]<char const*>(char const* const&)
; decoder-mode: arm
003156f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003156f4  44 41 9f e5                                      ldr r4, [pc, #0x144]
003156f8  44 71 9f e5                                      ldr r7, [pc, #0x144]
003156fc  84 d0 4d e2                                      sub sp, sp, #0x84
00315700  04 40 8f e0                                      add r4, pc, r4
00315704  07 30 94 e7                                      ldr r3, [r4, r7]
00315708  00 80 a0 e1                                      mov r8, r0
0031570c  01 60 a0 e1                                      mov r6, r1
00315710  00 30 93 e5                                      ldr r3, [r3]
00315714  7c 30 8d e5                                      str r3, [sp, #0x7c]
00315718  dc fa ff eb                                      bl #0x314290
0031571c  08 00 50 e1                                      cmp r0, r8
00315720  00 50 a0 e1                                      mov r5, r0
00315724  23 00 00 0a                                      beq #0x3157b8
00315728  64 a0 8d e2                                      add sl, sp, #0x64
0031572c  00 10 96 e5                                      ldr r1, [r6]
00315730  14 20 8d e2                                      add r2, sp, #0x14
00315734  0a 00 a0 e1                                      mov r0, sl
00315738  6b fa ff eb                                      bl #0x3140ec
0031573c  78 30 9d e5                                      ldr r3, [sp, #0x78]
00315740  24 10 95 e5                                      ldr r1, [r5, #0x24]
00315744  20 b0 95 e5                                      ldr fp, [r5, #0x20]
00315748  74 90 9d e5                                      ldr sb, [sp, #0x74]
0031574c  03 00 a0 e1                                      mov r0, r3
00315750  0b b0 61 e0                                      rsb fp, r1, fp
00315754  09 90 63 e0                                      rsb sb, r3, sb
00315758  09 00 5b e1                                      cmp fp, sb
0031575c  0b 20 a0 b1                                      movlt r2, fp
00315760  09 20 a0 a1                                      movge r2, sb
00315764  9d e3 ff eb                                      bl #0x30e5e0
00315768  00 00 50 e3                                      cmp r0, #0
0031576c  05 30 a0 e1                                      mov r3, r5
00315770  0d 00 00 1a                                      bne #0x3157ac
00315774  0b 00 59 e1                                      cmp sb, fp
00315778  0c 00 00 ba                                      blt #0x3157b0
0031577c  0a 00 a0 e1                                      mov r0, sl
00315780  04 30 8d e5                                      str r3, [sp, #4]
00315784  88 f8 ff eb                                      bl #0x3139ac
00315788  04 30 9d e5                                      ldr r3, [sp, #4]
0031578c  07 10 94 e7                                      ldr r1, [r4, r7]
00315790  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00315794  28 00 83 e2                                      add r0, r3, #0x28
00315798  00 30 91 e5                                      ldr r3, [r1]
0031579c  03 00 52 e1                                      cmp r2, r3
003157a0  25 00 00 1a                                      bne #0x31583c
003157a4  84 d0 8d e2                                      add sp, sp, #0x84
003157a8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003157ac  f2 ff ff aa                                      bge #0x31577c
003157b0  0a 00 a0 e1                                      mov r0, sl
003157b4  7c f8 ff eb                                      bl #0x3139ac
003157b8  4c a0 8d e2                                      add sl, sp, #0x4c
003157bc  00 10 96 e5                                      ldr r1, [r6]
003157c0  10 20 8d e2                                      add r2, sp, #0x10
003157c4  18 60 8d e2                                      add r6, sp, #0x18
003157c8  0a 00 a0 e1                                      mov r0, sl
003157cc  46 fa ff eb                                      bl #0x3140ec
003157d0  06 00 a0 e1                                      mov r0, r6
003157d4  60 10 9d e5                                      ldr r1, [sp, #0x60]
003157d8  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
003157dc  28 60 8d e5                                      str r6, [sp, #0x28]
003157e0  2c 60 8d e5                                      str r6, [sp, #0x2c]
003157e4  00 90 a0 e3                                      mov sb, #0
003157e8  be ef ff eb                                      bl #0x3116e8
003157ec  00 c0 a0 e3                                      mov ip, #0
003157f0  08 10 a0 e1                                      mov r1, r8
003157f4  06 30 a0 e1                                      mov r3, r6
003157f8  08 20 8d e2                                      add r2, sp, #8
003157fc  0c 00 8d e2                                      add r0, sp, #0xc
00315800  00 80 a0 e3                                      mov r8, #0
00315804  38 c0 8d e5                                      str ip, [sp, #0x38]
00315808  44 c0 8d e5                                      str ip, [sp, #0x44]
0031580c  40 c0 8d e5                                      str ip, [sp, #0x40]
00315810  3c c0 8d e5                                      str ip, [sp, #0x3c]
00315814  08 50 8d e5                                      str r5, [sp, #8]
00315818  f0 83 cd e1                                      strd r8, sb, [sp, #0x30]
0031581c  72 fe ff eb                                      bl #0x3151ec
00315820  0c 50 9d e5                                      ldr r5, [sp, #0xc]
00315824  06 00 a0 e1                                      mov r0, r6
00315828  5f f8 ff eb                                      bl #0x3139ac
0031582c  0a 00 a0 e1                                      mov r0, sl
00315830  5d f8 ff eb                                      bl #0x3139ac
00315834  05 30 a0 e1                                      mov r3, r5
00315838  d3 ff ff ea                                      b #0x31578c
0031583c  b3 e2 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00315840  90 f3 67 00 ac 40 00 00                          .byte 0x90, 0xf3, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00315978, declared_size=344, range_size=344, mode=arm
; class-group: Savegame::SectionInfo& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Savegame::SectionInfo, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >
; alias: _ZNSt3mapISsN8Savegame11SectionInfoESt4lessISsESaISt4pairIKSsS1_EEEixIA5_cEERS1_RKT_
; demangled: Savegame::SectionInfo& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, Savegame::SectionInfo, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, Savegame::SectionInfo> > >::operator[]<char [5]>(char const (&) [5])
; decoder-mode: arm
00315978  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0031597c  44 41 9f e5                                      ldr r4, [pc, #0x144]
00315980  44 71 9f e5                                      ldr r7, [pc, #0x144]
00315984  84 d0 4d e2                                      sub sp, sp, #0x84
00315988  04 40 8f e0                                      add r4, pc, r4
0031598c  07 30 94 e7                                      ldr r3, [r4, r7]
00315990  00 80 a0 e1                                      mov r8, r0
00315994  01 60 a0 e1                                      mov r6, r1
00315998  00 30 93 e5                                      ldr r3, [r3]
0031599c  7c 30 8d e5                                      str r3, [sp, #0x7c]
003159a0  d2 fa ff eb                                      bl #0x3144f0
003159a4  08 00 50 e1                                      cmp r0, r8
003159a8  00 50 a0 e1                                      mov r5, r0
003159ac  23 00 00 0a                                      beq #0x315a40
003159b0  64 a0 8d e2                                      add sl, sp, #0x64
003159b4  06 10 a0 e1                                      mov r1, r6
003159b8  14 20 8d e2                                      add r2, sp, #0x14
003159bc  0a 00 a0 e1                                      mov r0, sl
003159c0  c9 f9 ff eb                                      bl #0x3140ec
003159c4  78 30 9d e5                                      ldr r3, [sp, #0x78]
003159c8  24 10 95 e5                                      ldr r1, [r5, #0x24]
003159cc  20 b0 95 e5                                      ldr fp, [r5, #0x20]
003159d0  74 90 9d e5                                      ldr sb, [sp, #0x74]
003159d4  03 00 a0 e1                                      mov r0, r3
003159d8  0b b0 61 e0                                      rsb fp, r1, fp
003159dc  09 90 63 e0                                      rsb sb, r3, sb
003159e0  09 00 5b e1                                      cmp fp, sb
003159e4  0b 20 a0 b1                                      movlt r2, fp
003159e8  09 20 a0 a1                                      movge r2, sb
003159ec  fb e2 ff eb                                      bl #0x30e5e0
003159f0  00 00 50 e3                                      cmp r0, #0
003159f4  05 30 a0 e1                                      mov r3, r5
003159f8  0d 00 00 1a                                      bne #0x315a34
003159fc  0b 00 59 e1                                      cmp sb, fp
00315a00  0c 00 00 ba                                      blt #0x315a38
00315a04  0a 00 a0 e1                                      mov r0, sl
00315a08  04 30 8d e5                                      str r3, [sp, #4]
00315a0c  e6 f7 ff eb                                      bl #0x3139ac
00315a10  04 30 9d e5                                      ldr r3, [sp, #4]
00315a14  07 10 94 e7                                      ldr r1, [r4, r7]
00315a18  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00315a1c  28 00 83 e2                                      add r0, r3, #0x28
00315a20  00 30 91 e5                                      ldr r3, [r1]
00315a24  03 00 52 e1                                      cmp r2, r3
00315a28  25 00 00 1a                                      bne #0x315ac4
00315a2c  84 d0 8d e2                                      add sp, sp, #0x84
00315a30  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00315a34  f2 ff ff aa                                      bge #0x315a04
00315a38  0a 00 a0 e1                                      mov r0, sl
00315a3c  da f7 ff eb                                      bl #0x3139ac
00315a40  4c a0 8d e2                                      add sl, sp, #0x4c
00315a44  06 10 a0 e1                                      mov r1, r6
00315a48  10 20 8d e2                                      add r2, sp, #0x10
00315a4c  18 60 8d e2                                      add r6, sp, #0x18
00315a50  0a 00 a0 e1                                      mov r0, sl
00315a54  a4 f9 ff eb                                      bl #0x3140ec
00315a58  06 00 a0 e1                                      mov r0, r6
00315a5c  60 10 9d e5                                      ldr r1, [sp, #0x60]
00315a60  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00315a64  28 60 8d e5                                      str r6, [sp, #0x28]
00315a68  2c 60 8d e5                                      str r6, [sp, #0x2c]
00315a6c  00 90 a0 e3                                      mov sb, #0
00315a70  1c ef ff eb                                      bl #0x3116e8
00315a74  00 c0 a0 e3                                      mov ip, #0
00315a78  08 10 a0 e1                                      mov r1, r8
00315a7c  06 30 a0 e1                                      mov r3, r6
00315a80  08 20 8d e2                                      add r2, sp, #8
00315a84  0c 00 8d e2                                      add r0, sp, #0xc
00315a88  00 80 a0 e3                                      mov r8, #0
00315a8c  38 c0 8d e5                                      str ip, [sp, #0x38]
00315a90  44 c0 8d e5                                      str ip, [sp, #0x44]
00315a94  40 c0 8d e5                                      str ip, [sp, #0x40]
00315a98  3c c0 8d e5                                      str ip, [sp, #0x3c]
00315a9c  08 50 8d e5                                      str r5, [sp, #8]
00315aa0  f0 83 cd e1                                      strd r8, sb, [sp, #0x30]
00315aa4  d0 fd ff eb                                      bl #0x3151ec
00315aa8  0c 50 9d e5                                      ldr r5, [sp, #0xc]
00315aac  06 00 a0 e1                                      mov r0, r6
00315ab0  bd f7 ff eb                                      bl #0x3139ac
00315ab4  0a 00 a0 e1                                      mov r0, sl
00315ab8  bb f7 ff eb                                      bl #0x3139ac
00315abc  05 30 a0 e1                                      mov r3, r5
00315ac0  d3 ff ff ea                                      b #0x315a14
00315ac4  11 e2 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00315ac8  08 f1 67 00 ac 40 00 00                          .byte 0x08, 0xf1, 0x67, 0x00, 0xac, 0x40, 0x00, 0x00
