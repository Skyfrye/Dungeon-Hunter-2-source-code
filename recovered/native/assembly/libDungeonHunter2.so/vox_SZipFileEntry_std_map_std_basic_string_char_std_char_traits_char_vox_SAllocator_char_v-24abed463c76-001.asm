; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00895aa8, declared_size=444, range_size=444, mode=arm
; class-group: vox::SZipFileEntry& std::map<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::SZipFileEntry, vox::StringComp, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, (vox::VoxMemHint)0> >
; alias: _ZNSt3mapISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS2_10VoxMemHintE0EEEENS2_13SZipFileEntryENS2_10StringCompENS3_ISt4pairIKS6_S7_ELS4_0EEEEixIS6_EERS7_RKT_
; demangled: vox::SZipFileEntry& std::map<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, vox::SZipFileEntry, vox::StringComp, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, vox::SZipFileEntry>, (vox::VoxMemHint)0> >::operator[]<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > >(std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
00895aa8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00895aac  a8 91 9f e5                                      ldr sb, [pc, #0x1a8]
00895ab0  a8 21 9f e5                                      ldr r2, [pc, #0x1a8]
00895ab4  43 df 4d e2                                      sub sp, sp, #0x10c
00895ab8  09 90 8f e0                                      add sb, pc, sb
00895abc  02 30 99 e7                                      ldr r3, [sb, r2]
00895ac0  04 20 8d e5                                      str r2, [sp, #4]
00895ac4  04 40 90 e5                                      ldr r4, [r0, #4]
00895ac8  00 30 93 e5                                      ldr r3, [r3]
00895acc  00 b0 a0 e1                                      mov fp, r0
00895ad0  00 00 54 e3                                      cmp r4, #0
00895ad4  01 a0 a0 e1                                      mov sl, r1
00895ad8  04 31 8d e5                                      str r3, [sp, #0x104]
00895adc  00 40 a0 01                                      moveq r4, r0
00895ae0  1b 00 00 0a                                      beq #0x895b54
00895ae4  14 80 91 e5                                      ldr r8, [r1, #0x14]
00895ae8  10 60 91 e5                                      ldr r6, [r1, #0x10]
00895aec  00 70 a0 e1                                      mov r7, r0
00895af0  06 60 68 e0                                      rsb r6, r8, r6
00895af4  24 30 94 e5                                      ldr r3, [r4, #0x24]
00895af8  20 50 94 e5                                      ldr r5, [r4, #0x20]
00895afc  08 10 a0 e1                                      mov r1, r8
00895b00  03 00 a0 e1                                      mov r0, r3
00895b04  05 50 63 e0                                      rsb r5, r3, r5
00895b08  05 00 56 e1                                      cmp r6, r5
00895b0c  06 20 a0 b1                                      movlt r2, r6
00895b10  05 20 a0 a1                                      movge r2, r5
00895b14  b1 e2 e9 eb                                      bl #0x30e5e0
00895b18  00 00 50 e3                                      cmp r0, #0
00895b1c  07 00 00 1a                                      bne #0x895b40
00895b20  06 00 55 e1                                      cmp r5, r6
00895b24  06 00 00 ba                                      blt #0x895b44
00895b28  08 30 94 e5                                      ldr r3, [r4, #8]
00895b2c  00 00 53 e3                                      cmp r3, #0
00895b30  07 00 00 0a                                      beq #0x895b54
00895b34  04 70 a0 e1                                      mov r7, r4
00895b38  03 40 a0 e1                                      mov r4, r3
00895b3c  ec ff ff ea                                      b #0x895af4
00895b40  f8 ff ff aa                                      bge #0x895b28
00895b44  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00895b48  07 40 a0 e1                                      mov r4, r7
00895b4c  00 00 53 e3                                      cmp r3, #0
00895b50  f7 ff ff 1a                                      bne #0x895b34
00895b54  04 00 5b e1                                      cmp fp, r4
00895b58  19 00 00 0a                                      beq #0x895bc4
00895b5c  14 30 9a e5                                      ldr r3, [sl, #0x14]
00895b60  24 10 94 e5                                      ldr r1, [r4, #0x24]
00895b64  10 50 9a e5                                      ldr r5, [sl, #0x10]
00895b68  20 60 94 e5                                      ldr r6, [r4, #0x20]
00895b6c  03 00 a0 e1                                      mov r0, r3
00895b70  05 50 63 e0                                      rsb r5, r3, r5
00895b74  06 60 61 e0                                      rsb r6, r1, r6
00895b78  05 00 56 e1                                      cmp r6, r5
00895b7c  06 20 a0 b1                                      movlt r2, r6
00895b80  05 20 a0 a1                                      movge r2, r5
00895b84  95 e2 e9 eb                                      bl #0x30e5e0
00895b88  00 00 50 e3                                      cmp r0, #0
00895b8c  04 00 a0 e1                                      mov r0, r4
00895b90  0a 00 00 1a                                      bne #0x895bc0
00895b94  06 00 55 e1                                      cmp r5, r6
00895b98  09 00 00 ba                                      blt #0x895bc4
00895b9c  04 20 9d e5                                      ldr r2, [sp, #4]
00895ba0  28 00 80 e2                                      add r0, r0, #0x28
00895ba4  02 30 99 e7                                      ldr r3, [sb, r2]
00895ba8  04 21 9d e5                                      ldr r2, [sp, #0x104]
00895bac  00 30 93 e5                                      ldr r3, [r3]
00895bb0  03 00 52 e1                                      cmp r2, r3
00895bb4  27 00 00 1a                                      bne #0x895c58
00895bb8  43 df 8d e2                                      add sp, sp, #0x10c
00895bbc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00895bc0  f5 ff ff aa                                      bge #0x895b9c
00895bc4  98 70 8d e2                                      add r7, sp, #0x98
00895bc8  00 10 a0 e3                                      mov r1, #0
00895bcc  6a 20 a0 e3                                      mov r2, #0x6a
00895bd0  07 00 a0 e1                                      mov r0, r7
00895bd4  21 e2 e9 eb                                      bl #0x30e460
00895bd8  14 60 8d e2                                      add r6, sp, #0x14
00895bdc  07 00 a0 e1                                      mov r0, r7
00895be0  66 fb ff eb                                      bl #0x894980
00895be4  18 50 86 e2                                      add r5, r6, #0x18
00895be8  10 20 9a e5                                      ldr r2, [sl, #0x10]
00895bec  14 10 9a e5                                      ldr r1, [sl, #0x14]
00895bf0  06 00 a0 e1                                      mov r0, r6
00895bf4  24 60 8d e5                                      str r6, [sp, #0x24]
00895bf8  28 60 8d e5                                      str r6, [sp, #0x28]
00895bfc  bb 65 ff eb                                      bl #0x86f2f0
00895c00  07 10 a0 e1                                      mov r1, r7
00895c04  05 00 a0 e1                                      mov r0, r5
00895c08  3d fb ff eb                                      bl #0x894904
00895c0c  0b 10 a0 e1                                      mov r1, fp
00895c10  10 00 8d e2                                      add r0, sp, #0x10
00895c14  0c 20 8d e2                                      add r2, sp, #0xc
00895c18  06 30 a0 e1                                      mov r3, r6
00895c1c  0c 40 8d e5                                      str r4, [sp, #0xc]
00895c20  5f fe ff eb                                      bl #0x8955a4
00895c24  05 00 a0 e1                                      mov r0, r5
00895c28  10 40 9d e5                                      ldr r4, [sp, #0x10]
00895c2c  2e fc ff eb                                      bl #0x894cec
00895c30  28 00 9d e5                                      ldr r0, [sp, #0x28]
00895c34  06 00 50 e1                                      cmp r0, r6
00895c38  02 00 00 0a                                      beq #0x895c48
00895c3c  00 00 50 e3                                      cmp r0, #0
00895c40  00 00 00 0a                                      beq #0x895c48
00895c44  fe e9 e9 eb                                      bl #0x310444
00895c48  07 00 a0 e1                                      mov r0, r7
00895c4c  26 fc ff eb                                      bl #0x894cec
00895c50  04 00 a0 e1                                      mov r0, r4
00895c54  d0 ff ff ea                                      b #0x895b9c
00895c58  ac e1 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00895c5c  d8 ef 0f 00 ac 40 00 00                          .byte 0xd8, 0xef, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00
