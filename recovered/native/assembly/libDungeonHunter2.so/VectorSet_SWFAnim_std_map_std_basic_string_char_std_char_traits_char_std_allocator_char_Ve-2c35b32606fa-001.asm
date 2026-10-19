; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00498420, declared_size=512, range_size=512, mode=arm
; class-group: VectorSet<SWFAnim*>& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, VectorSet<SWFAnim*>, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >
; alias: _ZNSt3mapISs9VectorSetIP7SWFAnimESt4lessISsESaISt4pairIKSsS3_EEEixIPKcEERS3_RKT_
; demangled: VectorSet<SWFAnim*>& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, VectorSet<SWFAnim*>, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, VectorSet<SWFAnim*> > > >::operator[]<char const*>(char const* const&)
; decoder-mode: arm
00498420  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00498424  ec 41 9f e5                                      ldr r4, [pc, #0x1ec]
00498428  ec 71 9f e5                                      ldr r7, [pc, #0x1ec]
0049842c  84 d0 4d e2                                      sub sp, sp, #0x84
00498430  04 40 8f e0                                      add r4, pc, r4
00498434  07 30 94 e7                                      ldr r3, [r4, r7]
00498438  00 80 a0 e1                                      mov r8, r0
0049843c  01 60 a0 e1                                      mov r6, r1
00498440  00 30 93 e5                                      ldr r3, [r3]
00498444  7c 30 8d e5                                      str r3, [sp, #0x7c]
00498448  10 fd ff eb                                      bl #0x497890
0049844c  08 00 50 e1                                      cmp r0, r8
00498450  00 50 a0 e1                                      mov r5, r0
00498454  23 00 00 0a                                      beq #0x4984e8
00498458  64 a0 8d e2                                      add sl, sp, #0x64
0049845c  00 10 96 e5                                      ldr r1, [r6]
00498460  24 20 8d e2                                      add r2, sp, #0x24
00498464  0a 00 a0 e1                                      mov r0, sl
00498468  1f ef f9 eb                                      bl #0x3140ec
0049846c  78 30 9d e5                                      ldr r3, [sp, #0x78]
00498470  24 10 95 e5                                      ldr r1, [r5, #0x24]
00498474  20 b0 95 e5                                      ldr fp, [r5, #0x20]
00498478  74 90 9d e5                                      ldr sb, [sp, #0x74]
0049847c  03 00 a0 e1                                      mov r0, r3
00498480  0b b0 61 e0                                      rsb fp, r1, fp
00498484  09 90 63 e0                                      rsb sb, r3, sb
00498488  09 00 5b e1                                      cmp fp, sb
0049848c  0b 20 a0 b1                                      movlt r2, fp
00498490  09 20 a0 a1                                      movge r2, sb
00498494  51 d8 f9 eb                                      bl #0x30e5e0
00498498  00 00 50 e3                                      cmp r0, #0
0049849c  05 30 a0 e1                                      mov r3, r5
004984a0  0d 00 00 1a                                      bne #0x4984dc
004984a4  0b 00 59 e1                                      cmp sb, fp
004984a8  0c 00 00 ba                                      blt #0x4984e0
004984ac  0a 00 a0 e1                                      mov r0, sl
004984b0  04 30 8d e5                                      str r3, [sp, #4]
004984b4  66 ff f9 eb                                      bl #0x318254
004984b8  04 30 9d e5                                      ldr r3, [sp, #4]
004984bc  07 10 94 e7                                      ldr r1, [r4, r7]
004984c0  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
004984c4  28 00 83 e2                                      add r0, r3, #0x28
004984c8  00 30 91 e5                                      ldr r3, [r1]
004984cc  03 00 52 e1                                      cmp r2, r3
004984d0  4f 00 00 1a                                      bne #0x498614
004984d4  84 d0 8d e2                                      add sp, sp, #0x84
004984d8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004984dc  f2 ff ff aa                                      bge #0x4984ac
004984e0  0a 00 a0 e1                                      mov r0, sl
004984e4  5a ff f9 eb                                      bl #0x318254
004984e8  4c a0 8d e2                                      add sl, sp, #0x4c
004984ec  00 10 96 e5                                      ldr r1, [r6]
004984f0  20 20 8d e2                                      add r2, sp, #0x20
004984f4  28 60 8d e2                                      add r6, sp, #0x28
004984f8  0a 00 a0 e1                                      mov r0, sl
004984fc  fa ee f9 eb                                      bl #0x3140ec
00498500  00 30 a0 e3                                      mov r3, #0
00498504  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00498508  06 00 a0 e1                                      mov r0, r6
0049850c  60 10 9d e5                                      ldr r1, [sp, #0x60]
00498510  14 30 8d e5                                      str r3, [sp, #0x14]
00498514  0c 30 8d e5                                      str r3, [sp, #0xc]
00498518  10 30 8d e5                                      str r3, [sp, #0x10]
0049851c  38 60 8d e5                                      str r6, [sp, #0x38]
00498520  3c 60 8d e5                                      str r6, [sp, #0x3c]
00498524  6f e4 f9 eb                                      bl #0x3116e8
00498528  0c 10 8d e2                                      add r1, sp, #0xc
0049852c  18 00 86 e2                                      add r0, r6, #0x18
00498530  71 fc ff eb                                      bl #0x4976fc
00498534  1c 00 8d e2                                      add r0, sp, #0x1c
00498538  08 10 a0 e1                                      mov r1, r8
0049853c  18 20 8d e2                                      add r2, sp, #0x18
00498540  06 30 a0 e1                                      mov r3, r6
00498544  18 50 8d e5                                      str r5, [sp, #0x18]
00498548  73 fe ff eb                                      bl #0x497f1c
0049854c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00498550  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
00498554  00 00 50 e3                                      cmp r0, #0
00498558  05 00 00 0a                                      beq #0x498574
0049855c  48 10 9d e5                                      ldr r1, [sp, #0x48]
00498560  01 10 60 e0                                      rsb r1, r0, r1
00498564  03 10 c1 e3                                      bic r1, r1, #3
00498568  80 00 51 e3                                      cmp r1, #0x80
0049856c  21 00 00 8a                                      bhi #0x4985f8
00498570  62 c2 09 eb                                      bl #0x708f00
00498574  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00498578  06 00 50 e1                                      cmp r0, r6
0049857c  06 00 00 0a                                      beq #0x49859c
00498580  00 00 50 e3                                      cmp r0, #0
00498584  04 00 00 0a                                      beq #0x49859c
00498588  28 10 9d e5                                      ldr r1, [sp, #0x28]
0049858c  01 10 60 e0                                      rsb r1, r0, r1
00498590  80 00 51 e3                                      cmp r1, #0x80
00498594  19 00 00 8a                                      bhi #0x498600
00498598  58 c2 09 eb                                      bl #0x708f00
0049859c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
004985a0  00 00 50 e3                                      cmp r0, #0
004985a4  05 00 00 0a                                      beq #0x4985c0
004985a8  14 10 9d e5                                      ldr r1, [sp, #0x14]
004985ac  01 10 60 e0                                      rsb r1, r0, r1
004985b0  03 10 c1 e3                                      bic r1, r1, #3
004985b4  80 00 51 e3                                      cmp r1, #0x80
004985b8  0c 00 00 8a                                      bhi #0x4985f0
004985bc  4f c2 09 eb                                      bl #0x708f00
004985c0  60 00 9d e5                                      ldr r0, [sp, #0x60]
004985c4  0a 00 50 e1                                      cmp r0, sl
004985c8  06 00 00 0a                                      beq #0x4985e8
004985cc  00 00 50 e3                                      cmp r0, #0
004985d0  04 00 00 0a                                      beq #0x4985e8
004985d4  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
004985d8  01 10 60 e0                                      rsb r1, r0, r1
004985dc  80 00 51 e3                                      cmp r1, #0x80
004985e0  08 00 00 8a                                      bhi #0x498608
004985e4  45 c2 09 eb                                      bl #0x708f00
004985e8  05 30 a0 e1                                      mov r3, r5
004985ec  b2 ff ff ea                                      b #0x4984bc
004985f0  92 df f9 eb                                      bl #0x310440
004985f4  f1 ff ff ea                                      b #0x4985c0
004985f8  90 df f9 eb                                      bl #0x310440
004985fc  dc ff ff ea                                      b #0x498574
00498600  8e df f9 eb                                      bl #0x310440
00498604  e4 ff ff ea                                      b #0x49859c
00498608  8c df f9 eb                                      bl #0x310440
0049860c  05 30 a0 e1                                      mov r3, r5
00498610  a9 ff ff ea                                      b #0x4984bc
00498614  3d d7 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00498618  60 c6 4f 00 ac 40 00 00                          .byte 0x60, 0xc6, 0x4f, 0x00, 0xac, 0x40, 0x00, 0x00
