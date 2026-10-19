; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050c6e8, declared_size=440, range_size=440, mode=arm
; class-group: AssetManager::SceneNode& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, AssetManager::SceneNode, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >
; alias: _ZNSt3mapISsN12AssetManager9SceneNodeESt4lessISsESaISt4pairIKSsS1_EEEixISsEERS1_RKT_
; demangled: AssetManager::SceneNode& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, AssetManager::SceneNode, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::SceneNode> > >::operator[]<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0050c6e8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0050c6ec  a0 51 9f e5                                      ldr r5, [pc, #0x1a0]
0050c6f0  a0 21 9f e5                                      ldr r2, [pc, #0x1a0]
0050c6f4  3c d0 4d e2                                      sub sp, sp, #0x3c
0050c6f8  05 50 8f e0                                      add r5, pc, r5
0050c6fc  02 30 95 e7                                      ldr r3, [r5, r2]
0050c700  04 20 8d e5                                      str r2, [sp, #4]
0050c704  04 40 90 e5                                      ldr r4, [r0, #4]
0050c708  00 30 93 e5                                      ldr r3, [r3]
0050c70c  00 90 a0 e1                                      mov sb, r0
0050c710  00 00 54 e3                                      cmp r4, #0
0050c714  34 30 8d e5                                      str r3, [sp, #0x34]
0050c718  58 00 00 0a                                      beq #0x50c880
0050c71c  10 b0 91 e5                                      ldr fp, [r1, #0x10]
0050c720  14 a0 91 e5                                      ldr sl, [r1, #0x14]
0050c724  00 80 a0 e1                                      mov r8, r0
0050c728  0b 70 6a e0                                      rsb r7, sl, fp
0050c72c  24 30 94 e5                                      ldr r3, [r4, #0x24]
0050c730  20 60 94 e5                                      ldr r6, [r4, #0x20]
0050c734  0a 10 a0 e1                                      mov r1, sl
0050c738  03 00 a0 e1                                      mov r0, r3
0050c73c  06 60 63 e0                                      rsb r6, r3, r6
0050c740  06 00 57 e1                                      cmp r7, r6
0050c744  07 20 a0 b1                                      movlt r2, r7
0050c748  06 20 a0 a1                                      movge r2, r6
0050c74c  a3 07 f8 eb                                      bl #0x30e5e0
0050c750  00 00 50 e3                                      cmp r0, #0
0050c754  07 00 00 1a                                      bne #0x50c778
0050c758  07 00 56 e1                                      cmp r6, r7
0050c75c  06 00 00 ba                                      blt #0x50c77c
0050c760  08 30 94 e5                                      ldr r3, [r4, #8]
0050c764  00 00 53 e3                                      cmp r3, #0
0050c768  07 00 00 0a                                      beq #0x50c78c
0050c76c  04 80 a0 e1                                      mov r8, r4
0050c770  03 40 a0 e1                                      mov r4, r3
0050c774  ec ff ff ea                                      b #0x50c72c
0050c778  f8 ff ff aa                                      bge #0x50c760
0050c77c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0050c780  08 40 a0 e1                                      mov r4, r8
0050c784  00 00 53 e3                                      cmp r3, #0
0050c788  f7 ff ff 1a                                      bne #0x50c76c
0050c78c  04 00 59 e1                                      cmp sb, r4
0050c790  0e 00 00 0a                                      beq #0x50c7d0
0050c794  24 30 94 e5                                      ldr r3, [r4, #0x24]
0050c798  20 70 94 e5                                      ldr r7, [r4, #0x20]
0050c79c  0b 60 6a e0                                      rsb r6, sl, fp
0050c7a0  03 10 a0 e1                                      mov r1, r3
0050c7a4  07 70 63 e0                                      rsb r7, r3, r7
0050c7a8  06 00 57 e1                                      cmp r7, r6
0050c7ac  07 20 a0 b1                                      movlt r2, r7
0050c7b0  06 20 a0 a1                                      movge r2, r6
0050c7b4  0a 00 a0 e1                                      mov r0, sl
0050c7b8  88 07 f8 eb                                      bl #0x30e5e0
0050c7bc  00 00 50 e3                                      cmp r0, #0
0050c7c0  04 00 a0 e1                                      mov r0, r4
0050c7c4  2b 00 00 1a                                      bne #0x50c878
0050c7c8  07 00 56 e1                                      cmp r6, r7
0050c7cc  20 00 00 aa                                      bge #0x50c854
0050c7d0  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
0050c7d4  10 60 8d e2                                      add r6, sp, #0x10
0050c7d8  0a 10 a0 e1                                      mov r1, sl
0050c7dc  0b 20 a0 e1                                      mov r2, fp
0050c7e0  06 00 a0 e1                                      mov r0, r6
0050c7e4  20 60 8d e5                                      str r6, [sp, #0x20]
0050c7e8  24 60 8d e5                                      str r6, [sp, #0x24]
0050c7ec  bd 13 f8 eb                                      bl #0x3116e8
0050c7f0  07 70 95 e7                                      ldr r7, [r5, r7]
0050c7f4  02 c1 e0 e3                                      mvn ip, #0x80000000
0050c7f8  06 30 a0 e1                                      mov r3, r6
0050c7fc  08 70 87 e2                                      add r7, r7, #8
0050c800  2c c0 8d e5                                      str ip, [sp, #0x2c]
0050c804  09 10 a0 e1                                      mov r1, sb
0050c808  00 c0 a0 e3                                      mov ip, #0
0050c80c  0c 00 8d e2                                      add r0, sp, #0xc
0050c810  08 20 8d e2                                      add r2, sp, #8
0050c814  08 40 8d e5                                      str r4, [sp, #8]
0050c818  30 c0 8d e5                                      str ip, [sp, #0x30]
0050c81c  28 70 8d e5                                      str r7, [sp, #0x28]
0050c820  6f fe ff eb                                      bl #0x50c1e4
0050c824  30 30 9d e5                                      ldr r3, [sp, #0x30]
0050c828  28 70 8d e5                                      str r7, [sp, #0x28]
0050c82c  0c 40 9d e5                                      ldr r4, [sp, #0xc]
0050c830  00 00 53 e3                                      cmp r3, #0
0050c834  03 00 00 0a                                      beq #0x50c848
0050c838  00 20 93 e5                                      ldr r2, [r3]
0050c83c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0050c840  00 00 83 e0                                      add r0, r3, r0
0050c844  4e 43 f8 eb                                      bl #0x31d584
0050c848  06 00 a0 e1                                      mov r0, r6
0050c84c  80 2e f8 eb                                      bl #0x318254
0050c850  04 00 a0 e1                                      mov r0, r4
0050c854  04 20 9d e5                                      ldr r2, [sp, #4]
0050c858  28 00 80 e2                                      add r0, r0, #0x28
0050c85c  02 30 95 e7                                      ldr r3, [r5, r2]
0050c860  34 20 9d e5                                      ldr r2, [sp, #0x34]
0050c864  00 30 93 e5                                      ldr r3, [r3]
0050c868  03 00 52 e1                                      cmp r2, r3
0050c86c  07 00 00 1a                                      bne #0x50c890
0050c870  3c d0 8d e2                                      add sp, sp, #0x3c
0050c874  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0050c878  d4 ff ff ba                                      blt #0x50c7d0
0050c87c  f4 ff ff ea                                      b #0x50c854
0050c880  10 b0 91 e5                                      ldr fp, [r1, #0x10]
0050c884  14 a0 91 e5                                      ldr sl, [r1, #0x14]
0050c888  00 40 a0 e1                                      mov r4, r0
0050c88c  be ff ff ea                                      b #0x50c78c
0050c890  9e 06 f8 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0050c894  98 83 48 00 ac 40 00 00 20 49 00 00              .byte 0x98, 0x83, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0x20, 0x49, 0x00, 0x00
