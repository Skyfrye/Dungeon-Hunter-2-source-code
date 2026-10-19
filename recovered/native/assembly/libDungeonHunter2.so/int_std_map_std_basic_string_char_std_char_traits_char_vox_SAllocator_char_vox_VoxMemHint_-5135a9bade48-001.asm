; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088d1b8, declared_size=396, range_size=396, mode=arm
; class-group: int& std::map<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, int, vox::stringcomp, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt3mapISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS2_10VoxMemHintE0EEEEiNS2_10stringcompENS3_ISt4pairIKS6_iELS4_0EEEEixIS6_EERiRKT_
; demangled: int& std::map<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, int, vox::stringcomp, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >::operator[]<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > >(std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
0088d1b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0088d1bc  78 51 9f e5                                      ldr r5, [pc, #0x178]
0088d1c0  78 21 9f e5                                      ldr r2, [pc, #0x178]
0088d1c4  34 d0 4d e2                                      sub sp, sp, #0x34
0088d1c8  05 50 8f e0                                      add r5, pc, r5
0088d1cc  02 30 95 e7                                      ldr r3, [r5, r2]
0088d1d0  04 20 8d e5                                      str r2, [sp, #4]
0088d1d4  04 40 90 e5                                      ldr r4, [r0, #4]
0088d1d8  00 30 93 e5                                      ldr r3, [r3]
0088d1dc  00 90 a0 e1                                      mov sb, r0
0088d1e0  00 00 54 e3                                      cmp r4, #0
0088d1e4  2c 30 8d e5                                      str r3, [sp, #0x2c]
0088d1e8  4e 00 00 0a                                      beq #0x88d328
0088d1ec  10 b0 91 e5                                      ldr fp, [r1, #0x10]
0088d1f0  14 a0 91 e5                                      ldr sl, [r1, #0x14]
0088d1f4  00 80 a0 e1                                      mov r8, r0
0088d1f8  0b 70 6a e0                                      rsb r7, sl, fp
0088d1fc  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088d200  20 60 94 e5                                      ldr r6, [r4, #0x20]
0088d204  0a 10 a0 e1                                      mov r1, sl
0088d208  03 00 a0 e1                                      mov r0, r3
0088d20c  06 60 63 e0                                      rsb r6, r3, r6
0088d210  06 00 57 e1                                      cmp r7, r6
0088d214  07 20 a0 b1                                      movlt r2, r7
0088d218  06 20 a0 a1                                      movge r2, r6
0088d21c  ef 04 ea eb                                      bl #0x30e5e0
0088d220  00 00 50 e3                                      cmp r0, #0
0088d224  07 00 00 1a                                      bne #0x88d248
0088d228  07 00 56 e1                                      cmp r6, r7
0088d22c  06 00 00 ba                                      blt #0x88d24c
0088d230  08 30 94 e5                                      ldr r3, [r4, #8]
0088d234  00 00 53 e3                                      cmp r3, #0
0088d238  07 00 00 0a                                      beq #0x88d25c
0088d23c  04 80 a0 e1                                      mov r8, r4
0088d240  03 40 a0 e1                                      mov r4, r3
0088d244  ec ff ff ea                                      b #0x88d1fc
0088d248  f8 ff ff aa                                      bge #0x88d230
0088d24c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0088d250  08 40 a0 e1                                      mov r4, r8
0088d254  00 00 53 e3                                      cmp r3, #0
0088d258  f7 ff ff 1a                                      bne #0x88d23c
0088d25c  04 00 59 e1                                      cmp sb, r4
0088d260  0e 00 00 0a                                      beq #0x88d2a0
0088d264  24 30 94 e5                                      ldr r3, [r4, #0x24]
0088d268  20 70 94 e5                                      ldr r7, [r4, #0x20]
0088d26c  0b 60 6a e0                                      rsb r6, sl, fp
0088d270  03 10 a0 e1                                      mov r1, r3
0088d274  07 70 63 e0                                      rsb r7, r3, r7
0088d278  06 00 57 e1                                      cmp r7, r6
0088d27c  07 20 a0 b1                                      movlt r2, r7
0088d280  06 20 a0 a1                                      movge r2, r6
0088d284  0a 00 a0 e1                                      mov r0, sl
0088d288  d4 04 ea eb                                      bl #0x30e5e0
0088d28c  00 00 50 e3                                      cmp r0, #0
0088d290  04 00 a0 e1                                      mov r0, r4
0088d294  21 00 00 1a                                      bne #0x88d320
0088d298  07 00 56 e1                                      cmp r6, r7
0088d29c  16 00 00 aa                                      bge #0x88d2fc
0088d2a0  10 60 8d e2                                      add r6, sp, #0x10
0088d2a4  0a 10 a0 e1                                      mov r1, sl
0088d2a8  0b 20 a0 e1                                      mov r2, fp
0088d2ac  06 00 a0 e1                                      mov r0, r6
0088d2b0  20 60 8d e5                                      str r6, [sp, #0x20]
0088d2b4  24 60 8d e5                                      str r6, [sp, #0x24]
0088d2b8  0c 88 ff eb                                      bl #0x86f2f0
0088d2bc  0c 00 8d e2                                      add r0, sp, #0xc
0088d2c0  00 c0 a0 e3                                      mov ip, #0
0088d2c4  09 10 a0 e1                                      mov r1, sb
0088d2c8  08 20 8d e2                                      add r2, sp, #8
0088d2cc  06 30 a0 e1                                      mov r3, r6
0088d2d0  08 40 8d e5                                      str r4, [sp, #8]
0088d2d4  28 c0 8d e5                                      str ip, [sp, #0x28]
0088d2d8  75 fe ff eb                                      bl #0x88ccb4
0088d2dc  24 00 9d e5                                      ldr r0, [sp, #0x24]
0088d2e0  0c 40 9d e5                                      ldr r4, [sp, #0xc]
0088d2e4  06 00 50 e1                                      cmp r0, r6
0088d2e8  02 00 00 0a                                      beq #0x88d2f8
0088d2ec  00 00 50 e3                                      cmp r0, #0
0088d2f0  00 00 00 0a                                      beq #0x88d2f8
0088d2f4  52 0c ea eb                                      bl #0x310444
0088d2f8  04 00 a0 e1                                      mov r0, r4
0088d2fc  04 20 9d e5                                      ldr r2, [sp, #4]
0088d300  28 00 80 e2                                      add r0, r0, #0x28
0088d304  02 30 95 e7                                      ldr r3, [r5, r2]
0088d308  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0088d30c  00 30 93 e5                                      ldr r3, [r3]
0088d310  03 00 52 e1                                      cmp r2, r3
0088d314  07 00 00 1a                                      bne #0x88d338
0088d318  34 d0 8d e2                                      add sp, sp, #0x34
0088d31c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0088d320  de ff ff ba                                      blt #0x88d2a0
0088d324  f4 ff ff ea                                      b #0x88d2fc
0088d328  10 b0 91 e5                                      ldr fp, [r1, #0x10]
0088d32c  14 a0 91 e5                                      ldr sl, [r1, #0x14]
0088d330  00 40 a0 e1                                      mov r4, r0
0088d334  c8 ff ff ea                                      b #0x88d25c
0088d338  f4 03 ea eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0088d33c  c8 78 10 00 ac 40 00 00                          .byte 0xc8, 0x78, 0x10, 0x00, 0xac, 0x40, 0x00, 0x00
