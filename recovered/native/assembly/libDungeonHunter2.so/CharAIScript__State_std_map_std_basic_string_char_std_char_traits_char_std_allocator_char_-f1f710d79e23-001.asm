; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d9fdc, declared_size=360, range_size=360, mode=arm
; class-group: CharAIScript::_State& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, CharAIScript::_State, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >
; alias: _ZNSt3mapISsN12CharAIScript6_StateESt4lessISsESaISt4pairIKSsS1_EEEixIPKcEERS1_RKT_
; demangled: CharAIScript::_State& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, CharAIScript::_State, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, CharAIScript::_State> > >::operator[]<char const*>(char const* const&)
; decoder-mode: arm
003d9fdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003d9fe0  54 41 9f e5                                      ldr r4, [pc, #0x154]
003d9fe4  54 91 9f e5                                      ldr sb, [pc, #0x154]
003d9fe8  4b df 4d e2                                      sub sp, sp, #0x12c
003d9fec  04 40 8f e0                                      add r4, pc, r4
003d9ff0  09 30 94 e7                                      ldr r3, [r4, sb]
003d9ff4  00 b0 a0 e1                                      mov fp, r0
003d9ff8  01 60 a0 e1                                      mov r6, r1
003d9ffc  00 30 93 e5                                      ldr r3, [r3]
003da000  24 31 8d e5                                      str r3, [sp, #0x124]
003da004  42 fd ff eb                                      bl #0x3d9514
003da008  0b 00 50 e1                                      cmp r0, fp
003da00c  00 50 a0 e1                                      mov r5, r0
003da010  23 00 00 0a                                      beq #0x3da0a4
003da014  43 7f 8d e2                                      add r7, sp, #0x10c
003da018  00 10 96 e5                                      ldr r1, [r6]
003da01c  18 20 8d e2                                      add r2, sp, #0x18
003da020  07 00 a0 e1                                      mov r0, r7
003da024  30 e8 fc eb                                      bl #0x3140ec
003da028  20 31 9d e5                                      ldr r3, [sp, #0x120]
003da02c  24 10 95 e5                                      ldr r1, [r5, #0x24]
003da030  20 80 95 e5                                      ldr r8, [r5, #0x20]
003da034  1c a1 9d e5                                      ldr sl, [sp, #0x11c]
003da038  03 00 a0 e1                                      mov r0, r3
003da03c  08 80 61 e0                                      rsb r8, r1, r8
003da040  0a a0 63 e0                                      rsb sl, r3, sl
003da044  0a 00 58 e1                                      cmp r8, sl
003da048  08 20 a0 b1                                      movlt r2, r8
003da04c  0a 20 a0 a1                                      movge r2, sl
003da050  62 d1 fc eb                                      bl #0x30e5e0
003da054  00 00 50 e3                                      cmp r0, #0
003da058  05 30 a0 e1                                      mov r3, r5
003da05c  0d 00 00 1a                                      bne #0x3da098
003da060  08 00 5a e1                                      cmp sl, r8
003da064  0c 00 00 ba                                      blt #0x3da09c
003da068  07 00 a0 e1                                      mov r0, r7
003da06c  04 30 8d e5                                      str r3, [sp, #4]
003da070  77 f8 fc eb                                      bl #0x318254
003da074  04 30 9d e5                                      ldr r3, [sp, #4]
003da078  09 10 94 e7                                      ldr r1, [r4, sb]
003da07c  24 21 9d e5                                      ldr r2, [sp, #0x124]
003da080  28 00 83 e2                                      add r0, r3, #0x28
003da084  00 30 91 e5                                      ldr r3, [r1]
003da088  03 00 52 e1                                      cmp r2, r3
003da08c  29 00 00 1a                                      bne #0x3da138
003da090  4b df 8d e2                                      add sp, sp, #0x12c
003da094  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003da098  f2 ff ff aa                                      bge #0x3da068
003da09c  07 00 a0 e1                                      mov r0, r7
003da0a0  6b f8 fc eb                                      bl #0x318254
003da0a4  f4 a0 8d e2                                      add sl, sp, #0xf4
003da0a8  94 80 8d e2                                      add r8, sp, #0x94
003da0ac  00 10 96 e5                                      ldr r1, [r6]
003da0b0  14 20 8d e2                                      add r2, sp, #0x14
003da0b4  0a 00 a0 e1                                      mov r0, sl
003da0b8  0b e8 fc eb                                      bl #0x3140ec
003da0bc  60 20 a0 e3                                      mov r2, #0x60
003da0c0  00 10 a0 e3                                      mov r1, #0
003da0c4  08 00 a0 e1                                      mov r0, r8
003da0c8  e4 d0 fc eb                                      bl #0x30e460
003da0cc  1c 60 8d e2                                      add r6, sp, #0x1c
003da0d0  08 00 a0 e1                                      mov r0, r8
003da0d4  6a fd ff eb                                      bl #0x3d9684
003da0d8  18 70 86 e2                                      add r7, r6, #0x18
003da0dc  0a 10 a0 e1                                      mov r1, sl
003da0e0  06 00 a0 e1                                      mov r0, r6
003da0e4  0b 46 fd eb                                      bl #0x32b918
003da0e8  08 10 a0 e1                                      mov r1, r8
003da0ec  07 00 a0 e1                                      mov r0, r7
003da0f0  54 fd ff eb                                      bl #0x3d9648
003da0f4  06 30 a0 e1                                      mov r3, r6
003da0f8  0b 10 a0 e1                                      mov r1, fp
003da0fc  0c 20 8d e2                                      add r2, sp, #0xc
003da100  10 00 8d e2                                      add r0, sp, #0x10
003da104  0c 50 8d e5                                      str r5, [sp, #0xc]
003da108  72 fe ff eb                                      bl #0x3d9ad8
003da10c  07 00 a0 e1                                      mov r0, r7
003da110  10 50 9d e5                                      ldr r5, [sp, #0x10]
003da114  27 fc ff eb                                      bl #0x3d91b8
003da118  06 00 a0 e1                                      mov r0, r6
003da11c  4c f8 fc eb                                      bl #0x318254
003da120  08 00 a0 e1                                      mov r0, r8
003da124  23 fc ff eb                                      bl #0x3d91b8
003da128  0a 00 a0 e1                                      mov r0, sl
003da12c  48 f8 fc eb                                      bl #0x318254
003da130  05 30 a0 e1                                      mov r3, r5
003da134  cf ff ff ea                                      b #0x3da078
003da138  74 d0 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003da13c  a4 aa 5b 00 ac 40 00 00                          .byte 0xa4, 0xaa, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00
