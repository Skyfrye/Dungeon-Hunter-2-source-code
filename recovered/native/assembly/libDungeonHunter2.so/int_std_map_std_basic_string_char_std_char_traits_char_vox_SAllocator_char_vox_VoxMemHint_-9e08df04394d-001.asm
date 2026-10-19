; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00873730, declared_size=396, range_size=396, mode=arm
; class-group: int& std::map<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, int, vox::StringCompare, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >
; alias: _ZNSt3mapISbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS2_10VoxMemHintE0EEEEiNS2_13StringCompareENS3_ISt4pairIKS6_iELS4_0EEEEixIS6_EERiRKT_
; demangled: int& std::map<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >, int, vox::StringCompare, vox::SAllocator<std::pair<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const, int>, (vox::VoxMemHint)0> >::operator[]<std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > >(std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
00873730  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00873734  78 51 9f e5                                      ldr r5, [pc, #0x178]
00873738  78 21 9f e5                                      ldr r2, [pc, #0x178]
0087373c  34 d0 4d e2                                      sub sp, sp, #0x34
00873740  05 50 8f e0                                      add r5, pc, r5
00873744  02 30 95 e7                                      ldr r3, [r5, r2]
00873748  04 20 8d e5                                      str r2, [sp, #4]
0087374c  04 40 90 e5                                      ldr r4, [r0, #4]
00873750  00 30 93 e5                                      ldr r3, [r3]
00873754  00 90 a0 e1                                      mov sb, r0
00873758  00 00 54 e3                                      cmp r4, #0
0087375c  2c 30 8d e5                                      str r3, [sp, #0x2c]
00873760  4e 00 00 0a                                      beq #0x8738a0
00873764  10 b0 91 e5                                      ldr fp, [r1, #0x10]
00873768  14 a0 91 e5                                      ldr sl, [r1, #0x14]
0087376c  00 80 a0 e1                                      mov r8, r0
00873770  0b 70 6a e0                                      rsb r7, sl, fp
00873774  24 30 94 e5                                      ldr r3, [r4, #0x24]
00873778  20 60 94 e5                                      ldr r6, [r4, #0x20]
0087377c  0a 10 a0 e1                                      mov r1, sl
00873780  03 00 a0 e1                                      mov r0, r3
00873784  06 60 63 e0                                      rsb r6, r3, r6
00873788  06 00 57 e1                                      cmp r7, r6
0087378c  07 20 a0 b1                                      movlt r2, r7
00873790  06 20 a0 a1                                      movge r2, r6
00873794  91 6b ea eb                                      bl #0x30e5e0
00873798  00 00 50 e3                                      cmp r0, #0
0087379c  07 00 00 1a                                      bne #0x8737c0
008737a0  07 00 56 e1                                      cmp r6, r7
008737a4  06 00 00 ba                                      blt #0x8737c4
008737a8  08 30 94 e5                                      ldr r3, [r4, #8]
008737ac  00 00 53 e3                                      cmp r3, #0
008737b0  07 00 00 0a                                      beq #0x8737d4
008737b4  04 80 a0 e1                                      mov r8, r4
008737b8  03 40 a0 e1                                      mov r4, r3
008737bc  ec ff ff ea                                      b #0x873774
008737c0  f8 ff ff aa                                      bge #0x8737a8
008737c4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
008737c8  08 40 a0 e1                                      mov r4, r8
008737cc  00 00 53 e3                                      cmp r3, #0
008737d0  f7 ff ff 1a                                      bne #0x8737b4
008737d4  04 00 59 e1                                      cmp sb, r4
008737d8  0e 00 00 0a                                      beq #0x873818
008737dc  24 30 94 e5                                      ldr r3, [r4, #0x24]
008737e0  20 70 94 e5                                      ldr r7, [r4, #0x20]
008737e4  0b 60 6a e0                                      rsb r6, sl, fp
008737e8  03 10 a0 e1                                      mov r1, r3
008737ec  07 70 63 e0                                      rsb r7, r3, r7
008737f0  06 00 57 e1                                      cmp r7, r6
008737f4  07 20 a0 b1                                      movlt r2, r7
008737f8  06 20 a0 a1                                      movge r2, r6
008737fc  0a 00 a0 e1                                      mov r0, sl
00873800  76 6b ea eb                                      bl #0x30e5e0
00873804  00 00 50 e3                                      cmp r0, #0
00873808  04 00 a0 e1                                      mov r0, r4
0087380c  21 00 00 1a                                      bne #0x873898
00873810  07 00 56 e1                                      cmp r6, r7
00873814  16 00 00 aa                                      bge #0x873874
00873818  10 60 8d e2                                      add r6, sp, #0x10
0087381c  0a 10 a0 e1                                      mov r1, sl
00873820  0b 20 a0 e1                                      mov r2, fp
00873824  06 00 a0 e1                                      mov r0, r6
00873828  20 60 8d e5                                      str r6, [sp, #0x20]
0087382c  24 60 8d e5                                      str r6, [sp, #0x24]
00873830  ae ee ff eb                                      bl #0x86f2f0
00873834  0c 00 8d e2                                      add r0, sp, #0xc
00873838  00 c0 a0 e3                                      mov ip, #0
0087383c  09 10 a0 e1                                      mov r1, sb
00873840  08 20 8d e2                                      add r2, sp, #8
00873844  06 30 a0 e1                                      mov r3, r6
00873848  08 40 8d e5                                      str r4, [sp, #8]
0087384c  28 c0 8d e5                                      str ip, [sp, #0x28]
00873850  75 fe ff eb                                      bl #0x87322c
00873854  24 00 9d e5                                      ldr r0, [sp, #0x24]
00873858  0c 40 9d e5                                      ldr r4, [sp, #0xc]
0087385c  06 00 50 e1                                      cmp r0, r6
00873860  02 00 00 0a                                      beq #0x873870
00873864  00 00 50 e3                                      cmp r0, #0
00873868  00 00 00 0a                                      beq #0x873870
0087386c  f4 72 ea eb                                      bl #0x310444
00873870  04 00 a0 e1                                      mov r0, r4
00873874  04 20 9d e5                                      ldr r2, [sp, #4]
00873878  28 00 80 e2                                      add r0, r0, #0x28
0087387c  02 30 95 e7                                      ldr r3, [r5, r2]
00873880  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00873884  00 30 93 e5                                      ldr r3, [r3]
00873888  03 00 52 e1                                      cmp r2, r3
0087388c  07 00 00 1a                                      bne #0x8738b0
00873890  34 d0 8d e2                                      add sp, sp, #0x34
00873894  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00873898  de ff ff ba                                      blt #0x873818
0087389c  f4 ff ff ea                                      b #0x873874
008738a0  10 b0 91 e5                                      ldr fp, [r1, #0x10]
008738a4  14 a0 91 e5                                      ldr sl, [r1, #0x14]
008738a8  00 40 a0 e1                                      mov r4, r0
008738ac  c8 ff ff ea                                      b #0x8737d4
008738b0  96 6a ea eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008738b4  50 13 12 00 ac 40 00 00                          .byte 0x50, 0x13, 0x12, 0x00, 0xac, 0x40, 0x00, 0x00
