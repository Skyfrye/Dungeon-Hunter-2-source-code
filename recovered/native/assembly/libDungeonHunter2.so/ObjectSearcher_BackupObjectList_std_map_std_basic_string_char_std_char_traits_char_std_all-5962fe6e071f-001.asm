; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038f53c, declared_size=496, range_size=496, mode=arm
; class-group: ObjectSearcher::BackupObjectList& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, ObjectSearcher::BackupObjectList, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >
; alias: _ZNSt3mapISsN14ObjectSearcher16BackupObjectListESt4lessISsESaISt4pairIKSsS1_EEEixIPKcEERS1_RKT_
; demangled: ObjectSearcher::BackupObjectList& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, ObjectSearcher::BackupObjectList, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> > >::operator[]<char const*>(char const* const&)
; decoder-mode: arm
0038f53c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0038f540  d8 41 9f e5                                      ldr r4, [pc, #0x1d8]
0038f544  d8 71 9f e5                                      ldr r7, [pc, #0x1d8]
0038f548  9c d0 4d e2                                      sub sp, sp, #0x9c
0038f54c  04 40 8f e0                                      add r4, pc, r4
0038f550  07 30 94 e7                                      ldr r3, [r4, r7]
0038f554  04 00 8d e5                                      str r0, [sp, #4]
0038f558  01 a0 a0 e1                                      mov sl, r1
0038f55c  00 30 93 e5                                      ldr r3, [r3]
0038f560  94 30 8d e5                                      str r3, [sp, #0x94]
0038f564  72 fc ff eb                                      bl #0x38e734
0038f568  04 30 9d e5                                      ldr r3, [sp, #4]
0038f56c  00 50 a0 e1                                      mov r5, r0
0038f570  03 00 50 e1                                      cmp r0, r3
0038f574  25 00 00 0a                                      beq #0x38f610
0038f578  7c 30 8d e2                                      add r3, sp, #0x7c
0038f57c  00 10 9a e5                                      ldr r1, [sl]
0038f580  03 00 a0 e1                                      mov r0, r3
0038f584  30 20 8d e2                                      add r2, sp, #0x30
0038f588  00 30 8d e5                                      str r3, [sp]
0038f58c  d6 12 fe eb                                      bl #0x3140ec
0038f590  24 20 95 e5                                      ldr r2, [r5, #0x24]
0038f594  90 60 9d e5                                      ldr r6, [sp, #0x90]
0038f598  20 90 95 e5                                      ldr sb, [r5, #0x20]
0038f59c  8c 80 9d e5                                      ldr r8, [sp, #0x8c]
0038f5a0  02 10 a0 e1                                      mov r1, r2
0038f5a4  09 90 62 e0                                      rsb sb, r2, sb
0038f5a8  08 80 66 e0                                      rsb r8, r6, r8
0038f5ac  08 00 59 e1                                      cmp sb, r8
0038f5b0  09 20 a0 b1                                      movlt r2, sb
0038f5b4  08 20 a0 a1                                      movge r2, r8
0038f5b8  06 00 a0 e1                                      mov r0, r6
0038f5bc  07 fc fd eb                                      bl #0x30e5e0
0038f5c0  00 00 50 e3                                      cmp r0, #0
0038f5c4  05 b0 a0 e1                                      mov fp, r5
0038f5c8  00 30 9d e5                                      ldr r3, [sp]
0038f5cc  a0 8f a0 11                                      lsrne r8, r0, #0x1f
0038f5d0  02 00 00 1a                                      bne #0x38f5e0
0038f5d4  09 00 58 e1                                      cmp r8, sb
0038f5d8  00 80 a0 a3                                      movge r8, #0
0038f5dc  01 80 a0 b3                                      movlt r8, #1
0038f5e0  03 00 56 e1                                      cmp r6, r3
0038f5e4  07 00 00 0a                                      beq #0x38f608
0038f5e8  00 00 56 e3                                      cmp r6, #0
0038f5ec  05 00 00 0a                                      beq #0x38f608
0038f5f0  7c 10 9d e5                                      ldr r1, [sp, #0x7c]
0038f5f4  01 10 66 e0                                      rsb r1, r6, r1
0038f5f8  80 00 51 e3                                      cmp r1, #0x80
0038f5fc  3f 00 00 8a                                      bhi #0x38f700
0038f600  06 00 a0 e1                                      mov r0, r6
0038f604  3d e6 0d eb                                      bl #0x708f00
0038f608  00 00 58 e3                                      cmp r8, #0
0038f60c  33 00 00 0a                                      beq #0x38f6e0
0038f610  64 80 8d e2                                      add r8, sp, #0x64
0038f614  00 10 9a e5                                      ldr r1, [sl]
0038f618  2c 20 8d e2                                      add r2, sp, #0x2c
0038f61c  08 00 a0 e1                                      mov r0, r8
0038f620  b1 12 fe eb                                      bl #0x3140ec
0038f624  fc c0 9f e5                                      ldr ip, [pc, #0xfc]
0038f628  34 60 8d e2                                      add r6, sp, #0x34
0038f62c  0c a0 8d e2                                      add sl, sp, #0xc
0038f630  0c c0 94 e7                                      ldr ip, [r4, ip]
0038f634  00 30 a0 e3                                      mov r3, #0
0038f638  08 10 a0 e1                                      mov r1, r8
0038f63c  08 c0 8c e2                                      add ip, ip, #8
0038f640  0a 20 a0 e1                                      mov r2, sl
0038f644  06 00 a0 e1                                      mov r0, r6
0038f648  0c c0 8d e5                                      str ip, [sp, #0xc]
0038f64c  20 30 8d e5                                      str r3, [sp, #0x20]
0038f650  10 30 8d e5                                      str r3, [sp, #0x10]
0038f654  14 30 8d e5                                      str r3, [sp, #0x14]
0038f658  18 30 8d e5                                      str r3, [sp, #0x18]
0038f65c  1c 30 8d e5                                      str r3, [sp, #0x1c]
0038f660  80 fc ff eb                                      bl #0x38e868
0038f664  04 10 9d e5                                      ldr r1, [sp, #4]
0038f668  28 00 8d e2                                      add r0, sp, #0x28
0038f66c  24 20 8d e2                                      add r2, sp, #0x24
0038f670  06 30 a0 e1                                      mov r3, r6
0038f674  24 50 8d e5                                      str r5, [sp, #0x24]
0038f678  6e fe ff eb                                      bl #0x38f038
0038f67c  18 00 86 e2                                      add r0, r6, #0x18
0038f680  28 b0 9d e5                                      ldr fp, [sp, #0x28]
0038f684  9d f4 ff eb                                      bl #0x38c900
0038f688  48 00 9d e5                                      ldr r0, [sp, #0x48]
0038f68c  06 00 50 e1                                      cmp r0, r6
0038f690  06 00 00 0a                                      beq #0x38f6b0
0038f694  00 00 50 e3                                      cmp r0, #0
0038f698  04 00 00 0a                                      beq #0x38f6b0
0038f69c  34 10 9d e5                                      ldr r1, [sp, #0x34]
0038f6a0  01 10 60 e0                                      rsb r1, r0, r1
0038f6a4  80 00 51 e3                                      cmp r1, #0x80
0038f6a8  17 00 00 8a                                      bhi #0x38f70c
0038f6ac  13 e6 0d eb                                      bl #0x708f00
0038f6b0  0a 00 a0 e1                                      mov r0, sl
0038f6b4  91 f4 ff eb                                      bl #0x38c900
0038f6b8  78 00 9d e5                                      ldr r0, [sp, #0x78]
0038f6bc  08 00 50 e1                                      cmp r0, r8
0038f6c0  06 00 00 0a                                      beq #0x38f6e0
0038f6c4  00 00 50 e3                                      cmp r0, #0
0038f6c8  04 00 00 0a                                      beq #0x38f6e0
0038f6cc  64 10 9d e5                                      ldr r1, [sp, #0x64]
0038f6d0  01 10 60 e0                                      rsb r1, r0, r1
0038f6d4  80 00 51 e3                                      cmp r1, #0x80
0038f6d8  0d 00 00 8a                                      bhi #0x38f714
0038f6dc  07 e6 0d eb                                      bl #0x708f00
0038f6e0  07 30 94 e7                                      ldr r3, [r4, r7]
0038f6e4  94 20 9d e5                                      ldr r2, [sp, #0x94]
0038f6e8  28 00 8b e2                                      add r0, fp, #0x28
0038f6ec  00 30 93 e5                                      ldr r3, [r3]
0038f6f0  03 00 52 e1                                      cmp r2, r3
0038f6f4  08 00 00 1a                                      bne #0x38f71c
0038f6f8  9c d0 8d e2                                      add sp, sp, #0x9c
0038f6fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0038f700  06 00 a0 e1                                      mov r0, r6
0038f704  4d 03 fe eb                                      bl #0x310440
0038f708  be ff ff ea                                      b #0x38f608
0038f70c  4b 03 fe eb                                      bl #0x310440
0038f710  e6 ff ff ea                                      b #0x38f6b0
0038f714  49 03 fe eb                                      bl #0x310440
0038f718  f0 ff ff ea                                      b #0x38f6e0
0038f71c  fb fa fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0038f720  44 55 60 00 ac 40 00 00 60 1a 00 00              .byte 0x44, 0x55, 0x60, 0x00, 0xac, 0x40, 0x00, 0x00, 0x60, 0x1a, 0x00, 0x00
