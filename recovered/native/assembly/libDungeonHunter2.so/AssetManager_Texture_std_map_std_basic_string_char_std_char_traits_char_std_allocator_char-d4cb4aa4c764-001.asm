; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0050bc44, declared_size=368, range_size=368, mode=arm
; class-group: AssetManager::Texture& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, AssetManager::Texture, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >
; alias: _ZNSt3mapISsN12AssetManager7TextureESt4lessISsESaISt4pairIKSsS1_EEEixIPKcEERS1_RKT_
; demangled: AssetManager::Texture& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, AssetManager::Texture, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, AssetManager::Texture> > >::operator[]<char const*>(char const* const&)
; decoder-mode: arm
0050bc44  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0050bc48  58 41 9f e5                                      ldr r4, [pc, #0x158]
0050bc4c  58 71 9f e5                                      ldr r7, [pc, #0x158]
0050bc50  74 d0 4d e2                                      sub sp, sp, #0x74
0050bc54  04 40 8f e0                                      add r4, pc, r4
0050bc58  07 30 94 e7                                      ldr r3, [r4, r7]
0050bc5c  00 80 a0 e1                                      mov r8, r0
0050bc60  01 60 a0 e1                                      mov r6, r1
0050bc64  00 30 93 e5                                      ldr r3, [r3]
0050bc68  6c 30 8d e5                                      str r3, [sp, #0x6c]
0050bc6c  f0 fc ff eb                                      bl #0x50b034
0050bc70  08 00 50 e1                                      cmp r0, r8
0050bc74  00 50 a0 e1                                      mov r5, r0
0050bc78  23 00 00 0a                                      beq #0x50bd0c
0050bc7c  54 a0 8d e2                                      add sl, sp, #0x54
0050bc80  00 10 96 e5                                      ldr r1, [r6]
0050bc84  14 20 8d e2                                      add r2, sp, #0x14
0050bc88  0a 00 a0 e1                                      mov r0, sl
0050bc8c  16 21 f8 eb                                      bl #0x3140ec
0050bc90  68 30 9d e5                                      ldr r3, [sp, #0x68]
0050bc94  24 10 95 e5                                      ldr r1, [r5, #0x24]
0050bc98  20 b0 95 e5                                      ldr fp, [r5, #0x20]
0050bc9c  64 90 9d e5                                      ldr sb, [sp, #0x64]
0050bca0  03 00 a0 e1                                      mov r0, r3
0050bca4  0b b0 61 e0                                      rsb fp, r1, fp
0050bca8  09 90 63 e0                                      rsb sb, r3, sb
0050bcac  09 00 5b e1                                      cmp fp, sb
0050bcb0  0b 20 a0 b1                                      movlt r2, fp
0050bcb4  09 20 a0 a1                                      movge r2, sb
0050bcb8  48 0a f8 eb                                      bl #0x30e5e0
0050bcbc  00 00 50 e3                                      cmp r0, #0
0050bcc0  05 30 a0 e1                                      mov r3, r5
0050bcc4  0d 00 00 1a                                      bne #0x50bd00
0050bcc8  0b 00 59 e1                                      cmp sb, fp
0050bccc  0c 00 00 ba                                      blt #0x50bd04
0050bcd0  0a 00 a0 e1                                      mov r0, sl
0050bcd4  04 30 8d e5                                      str r3, [sp, #4]
0050bcd8  5d 31 f8 eb                                      bl #0x318254
0050bcdc  04 30 9d e5                                      ldr r3, [sp, #4]
0050bce0  07 10 94 e7                                      ldr r1, [r4, r7]
0050bce4  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0050bce8  28 00 83 e2                                      add r0, r3, #0x28
0050bcec  00 30 91 e5                                      ldr r3, [r1]
0050bcf0  03 00 52 e1                                      cmp r2, r3
0050bcf4  2a 00 00 1a                                      bne #0x50bda4
0050bcf8  74 d0 8d e2                                      add sp, sp, #0x74
0050bcfc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0050bd00  f2 ff ff aa                                      bge #0x50bcd0
0050bd04  0a 00 a0 e1                                      mov r0, sl
0050bd08  51 31 f8 eb                                      bl #0x318254
0050bd0c  3c a0 8d e2                                      add sl, sp, #0x3c
0050bd10  00 10 96 e5                                      ldr r1, [r6]
0050bd14  10 20 8d e2                                      add r2, sp, #0x10
0050bd18  18 60 8d e2                                      add r6, sp, #0x18
0050bd1c  0a 00 a0 e1                                      mov r0, sl
0050bd20  f1 20 f8 eb                                      bl #0x3140ec
0050bd24  06 00 a0 e1                                      mov r0, r6
0050bd28  50 10 9d e5                                      ldr r1, [sp, #0x50]
0050bd2c  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
0050bd30  28 60 8d e5                                      str r6, [sp, #0x28]
0050bd34  2c 60 8d e5                                      str r6, [sp, #0x2c]
0050bd38  6a 16 f8 eb                                      bl #0x3116e8
0050bd3c  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
0050bd40  02 c1 e0 e3                                      mvn ip, #0x80000000
0050bd44  08 10 a0 e1                                      mov r1, r8
0050bd48  03 30 94 e7                                      ldr r3, [r4, r3]
0050bd4c  0c 00 8d e2                                      add r0, sp, #0xc
0050bd50  34 c0 8d e5                                      str ip, [sp, #0x34]
0050bd54  08 80 83 e2                                      add r8, r3, #8
0050bd58  00 c0 a0 e3                                      mov ip, #0
0050bd5c  08 20 8d e2                                      add r2, sp, #8
0050bd60  06 30 a0 e1                                      mov r3, r6
0050bd64  08 50 8d e5                                      str r5, [sp, #8]
0050bd68  38 c0 8d e5                                      str ip, [sp, #0x38]
0050bd6c  30 80 8d e5                                      str r8, [sp, #0x30]
0050bd70  72 fe ff eb                                      bl #0x50b740
0050bd74  38 00 9d e5                                      ldr r0, [sp, #0x38]
0050bd78  30 80 8d e5                                      str r8, [sp, #0x30]
0050bd7c  0c 50 9d e5                                      ldr r5, [sp, #0xc]
0050bd80  00 00 50 e3                                      cmp r0, #0
0050bd84  00 00 00 0a                                      beq #0x50bd8c
0050bd88  fd 45 f8 eb                                      bl #0x31d584
0050bd8c  06 00 a0 e1                                      mov r0, r6
0050bd90  2f 31 f8 eb                                      bl #0x318254
0050bd94  0a 00 a0 e1                                      mov r0, sl
0050bd98  2d 31 f8 eb                                      bl #0x318254
0050bd9c  05 30 a0 e1                                      mov r3, r5
0050bda0  ce ff ff ea                                      b #0x50bce0
0050bda4  59 09 f8 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0050bda8  3c 8e 48 00 ac 40 00 00 58 0e 00 00              .byte 0x3c, 0x8e, 0x48, 0x00, 0xac, 0x40, 0x00, 0x00, 0x58, 0x0e, 0x00, 0x00
