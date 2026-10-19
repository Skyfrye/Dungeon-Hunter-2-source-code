; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00348758, declared_size=560, range_size=560, mode=arm
; class-group: std::basic_istream<char, std::char_traits<char> >& std
; alias: _ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_E
; demangled: std::basic_istream<char, std::char_traits<char> >& std::operator>><char, std::char_traits<char>, std::allocator<char> >(std::basic_istream<char, std::char_traits<char> >&, std::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
; decoder-mode: arm
00348758  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0034875c  00 30 90 e5                                      ldr r3, [r0]
00348760  18 52 9f e5                                      ldr r5, [pc, #0x218]
00348764  0c d0 4d e2                                      sub sp, sp, #0xc
00348768  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0034876c  05 50 8f e0                                      add r5, pc, r5
00348770  00 70 a0 e1                                      mov r7, r0
00348774  03 30 80 e0                                      add r3, r0, r3
00348778  04 30 93 e5                                      ldr r3, [r3, #4]
0034877c  01 60 a0 e1                                      mov r6, r1
00348780  01 0a 13 e3                                      tst r3, #0x1000
00348784  60 00 00 1a                                      bne #0x34890c
00348788  d6 1b ff eb                                      bl #0x30f6e8
0034878c  00 00 50 e3                                      cmp r0, #0
00348790  4f 00 00 0a                                      beq #0x3488d4
00348794  00 30 97 e5                                      ldr r3, [r7]
00348798  04 a0 8d e2                                      add sl, sp, #4
0034879c  0a 00 a0 e1                                      mov r0, sl
003487a0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
003487a4  03 30 87 e0                                      add r3, r7, r3
003487a8  20 10 83 e2                                      add r1, r3, #0x20
003487ac  48 40 93 e5                                      ldr r4, [r3, #0x48]
003487b0  ce 01 0f eb                                      bl #0x708ef0
003487b4  c8 31 9f e5                                      ldr r3, [pc, #0x1c8]
003487b8  0a 00 a0 e1                                      mov r0, sl
003487bc  03 10 95 e7                                      ldr r1, [r5, r3]
003487c0  b6 01 0f eb                                      bl #0x708ea0
003487c4  14 30 96 e5                                      ldr r3, [r6, #0x14]
003487c8  10 20 96 e5                                      ldr r2, [r6, #0x10]
003487cc  00 80 a0 e1                                      mov r8, r0
003487d0  02 00 53 e1                                      cmp r3, r2
003487d4  00 20 a0 13                                      movne r2, #0
003487d8  00 20 c3 15                                      strbne r2, [r3]
003487dc  14 30 96 15                                      ldrne r3, [r6, #0x14]
003487e0  00 20 a0 e3                                      mov r2, #0
003487e4  10 30 86 15                                      strne r3, [r6, #0x10]
003487e8  00 30 97 e5                                      ldr r3, [r7]
003487ec  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
003487f0  03 30 87 e0                                      add r3, r7, r3
003487f4  1c 50 93 e5                                      ldr r5, [r3, #0x1c]
003487f8  1c 20 83 e5                                      str r2, [r3, #0x1c]
003487fc  02 00 55 e1                                      cmp r5, r2
00348800  02 50 e0 d3                                      mvnle r5, #2
00348804  03 00 00 da                                      ble #0x348818
00348808  06 00 a0 e1                                      mov r0, r6
0034880c  05 10 a0 e1                                      mov r1, r5
00348810  56 87 ff eb                                      bl #0x32a570
00348814  01 50 45 e2                                      sub r5, r5, #1
00348818  08 30 94 e5                                      ldr r3, [r4, #8]
0034881c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00348820  01 10 83 e2                                      add r1, r3, #1
00348824  02 00 53 e1                                      cmp r3, r2
00348828  15 00 00 2a                                      bhs #0x348884
0034882c  08 10 84 e5                                      str r1, [r4, #8]
00348830  00 00 d3 e5                                      ldrb r0, [r3]
00348834  0c 10 98 e5                                      ldr r1, [r8, #0xc]
00348838  70 30 ef e6                                      uxtb r3, r0
0034883c  73 20 ef e6                                      uxtb r2, r3
00348840  02 c1 91 e7                                      ldr ip, [r1, r2, lsl #2]
00348844  06 00 a0 e1                                      mov r0, r6
00348848  73 10 af e6                                      sxtb r1, r3
0034884c  01 00 1c e3                                      tst ip, #1
00348850  35 00 00 1a                                      bne #0x34892c
00348854  80 86 ff eb                                      bl #0x32a25c
00348858  00 00 55 e3                                      cmp r5, #0
0034885c  ec ff ff 1a                                      bne #0x348814
00348860  10 30 96 e5                                      ldr r3, [r6, #0x10]
00348864  14 20 96 e5                                      ldr r2, [r6, #0x14]
00348868  03 00 52 e1                                      cmp r2, r3
0034886c  28 00 00 0a                                      beq #0x348914
00348870  0a 00 a0 e1                                      mov r0, sl
00348874  79 01 0f eb                                      bl #0x708e60
00348878  07 00 a0 e1                                      mov r0, r7
0034887c  0c d0 8d e2                                      add sp, sp, #0xc
00348880  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00348884  00 30 94 e5                                      ldr r3, [r4]
00348888  04 00 a0 e1                                      mov r0, r4
0034888c  0f e0 a0 e1                                      mov lr, pc
00348890  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00348894  01 00 70 e3                                      cmn r0, #1
00348898  e5 ff ff 1a                                      bne #0x348834
0034889c  00 30 97 e5                                      ldr r3, [r7]
003488a0  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
003488a4  00 00 87 e0                                      add r0, r7, r0
003488a8  48 30 90 e5                                      ldr r3, [r0, #0x48]
003488ac  08 20 90 e5                                      ldr r2, [r0, #8]
003488b0  00 00 53 e3                                      cmp r3, #0
003488b4  02 30 82 e3                                      orr r3, r2, #2
003488b8  03 30 82 03                                      orreq r3, r2, #3
003488bc  14 20 90 e5                                      ldr r2, [r0, #0x14]
003488c0  08 30 80 e5                                      str r3, [r0, #8]
003488c4  02 00 13 e1                                      tst r3, r2
003488c8  e4 ff ff 0a                                      beq #0x348860
003488cc  93 01 0f eb                                      bl #0x708f20
003488d0  e2 ff ff ea                                      b #0x348860
003488d4  00 30 97 e5                                      ldr r3, [r7]
003488d8  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
003488dc  00 00 87 e0                                      add r0, r7, r0
003488e0  48 30 90 e5                                      ldr r3, [r0, #0x48]
003488e4  08 20 90 e5                                      ldr r2, [r0, #8]
003488e8  00 00 53 e3                                      cmp r3, #0
003488ec  04 30 82 e3                                      orr r3, r2, #4
003488f0  05 30 82 03                                      orreq r3, r2, #5
003488f4  14 20 90 e5                                      ldr r2, [r0, #0x14]
003488f8  08 30 80 e5                                      str r3, [r0, #8]
003488fc  02 00 13 e1                                      tst r3, r2
00348900  dc ff ff 0a                                      beq #0x348878
00348904  85 01 0f eb                                      bl #0x708f20
00348908  da ff ff ea                                      b #0x348878
0034890c  a7 1b ff eb                                      bl #0x30f7b0
00348910  9d ff ff ea                                      b #0x34878c
00348914  00 30 97 e5                                      ldr r3, [r7]
00348918  04 10 a0 e3                                      mov r1, #4
0034891c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00348920  00 00 87 e0                                      add r0, r7, r0
00348924  ad 1a ff eb                                      bl #0x30f3e0
00348928  d0 ff ff ea                                      b #0x348870
0034892c  03 00 94 e9                                      ldmib r4, {r0, r1}
00348930  01 00 50 e1                                      cmp r0, r1
00348934  04 00 00 2a                                      bhs #0x34894c
00348938  01 00 51 e5                                      ldrb r0, [r1, #-1]
0034893c  01 10 41 e2                                      sub r1, r1, #1
00348940  00 00 53 e1                                      cmp r3, r0
00348944  08 10 84 05                                      streq r1, [r4, #8]
00348948  c4 ff ff 0a                                      beq #0x348860
0034894c  04 00 a0 e1                                      mov r0, r4
00348950  02 10 a0 e1                                      mov r1, r2
00348954  00 30 94 e5                                      ldr r3, [r4]
00348958  0f e0 a0 e1                                      mov lr, pc
0034895c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00348960  01 00 70 e3                                      cmn r0, #1
00348964  bd ff ff 1a                                      bne #0x348860
00348968  00 30 97 e5                                      ldr r3, [r7]
0034896c  04 10 a0 e3                                      mov r1, #4
00348970  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00348974  00 00 87 e0                                      add r0, r7, r0
00348978  98 1a ff eb                                      bl #0x30f3e0
0034897c  b7 ff ff ea                                      b #0x348860
; mapping-symbol data/literal pool
00348980  24 c3 64 00 e4 1c 00 00                          .byte 0x24, 0xc3, 0x64, 0x00, 0xe4, 0x1c, 0x00, 0x00

; FUNCTION 0x0038a258, declared_size=308, range_size=308, mode=arm
; class-group: std::basic_istream<char, std::char_traits<char> >& std
; alias: _ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RSbIS4_S5_T1_ES4_.clone.8
; demangled: std::basic_istream<char, std::char_traits<char> >& std::getline<char, std::char_traits<char>, std::allocator<char> >(std::basic_istream<char, std::char_traits<char> >&, std::basic_string<char, std::char_traits<char>, std::allocator<char> >&, char) [clone .clone.8]
; decoder-mode: arm
0038a258  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0038a25c  01 60 a0 e1                                      mov r6, r1
0038a260  00 70 a0 e1                                      mov r7, r0
0038a264  1f 15 fe eb                                      bl #0x30f6e8
0038a268  00 00 50 e3                                      cmp r0, #0
0038a26c  0d 00 00 1a                                      bne #0x38a2a8
0038a270  00 30 97 e5                                      ldr r3, [r7]
0038a274  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0038a278  00 00 87 e0                                      add r0, r7, r0
0038a27c  48 30 90 e5                                      ldr r3, [r0, #0x48]
0038a280  08 20 90 e5                                      ldr r2, [r0, #8]
0038a284  00 00 53 e3                                      cmp r3, #0
0038a288  04 30 82 e3                                      orr r3, r2, #4
0038a28c  05 30 82 03                                      orreq r3, r2, #5
0038a290  14 20 90 e5                                      ldr r2, [r0, #0x14]
0038a294  08 30 80 e5                                      str r3, [r0, #8]
0038a298  02 00 13 e1                                      tst r3, r2
0038a29c  37 00 00 1a                                      bne #0x38a380
0038a2a0  07 00 a0 e1                                      mov r0, r7
0038a2a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0038a2a8  00 20 97 e5                                      ldr r2, [r7]
0038a2ac  14 30 96 e5                                      ldr r3, [r6, #0x14]
0038a2b0  10 10 96 e5                                      ldr r1, [r6, #0x10]
0038a2b4  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
0038a2b8  00 50 a0 e3                                      mov r5, #0
0038a2bc  01 00 53 e1                                      cmp r3, r1
0038a2c0  02 20 87 e0                                      add r2, r7, r2
0038a2c4  48 40 92 e5                                      ldr r4, [r2, #0x48]
0038a2c8  00 20 a0 13                                      movne r2, #0
0038a2cc  00 20 c3 15                                      strbne r2, [r3]
0038a2d0  14 30 96 15                                      ldrne r3, [r6, #0x14]
0038a2d4  10 30 86 15                                      strne r3, [r6, #0x10]
0038a2d8  0a 00 00 ea                                      b #0x38a308
0038a2dc  08 10 84 e5                                      str r1, [r4, #8]
0038a2e0  00 00 d3 e5                                      ldrb r0, [r3]
0038a2e4  70 30 af e6                                      sxtb r3, r0
0038a2e8  2c 00 53 e3                                      cmp r3, #0x2c
0038a2ec  03 10 a0 e1                                      mov r1, r3
0038a2f0  06 00 a0 e1                                      mov r0, r6
0038a2f4  01 50 85 e2                                      add r5, r5, #1
0038a2f8  1c 00 00 0a                                      beq #0x38a370
0038a2fc  d6 7f fe eb                                      bl #0x32a25c
0038a300  02 00 75 e3                                      cmn r5, #2
0038a304  19 00 00 0a                                      beq #0x38a370
0038a308  08 30 94 e5                                      ldr r3, [r4, #8]
0038a30c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0038a310  01 10 83 e2                                      add r1, r3, #1
0038a314  02 00 53 e1                                      cmp r3, r2
0038a318  ef ff ff 3a                                      blo #0x38a2dc
0038a31c  00 30 94 e5                                      ldr r3, [r4]
0038a320  04 00 a0 e1                                      mov r0, r4
0038a324  0f e0 a0 e1                                      mov lr, pc
0038a328  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0038a32c  01 00 70 e3                                      cmn r0, #1
0038a330  eb ff ff 1a                                      bne #0x38a2e4
0038a334  00 30 97 e5                                      ldr r3, [r7]
0038a338  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0038a33c  00 00 87 e0                                      add r0, r7, r0
0038a340  48 30 90 e5                                      ldr r3, [r0, #0x48]
0038a344  08 20 90 e5                                      ldr r2, [r0, #8]
0038a348  00 00 53 e3                                      cmp r3, #0
0038a34c  02 30 82 e3                                      orr r3, r2, #2
0038a350  03 30 82 03                                      orreq r3, r2, #3
0038a354  14 20 90 e5                                      ldr r2, [r0, #0x14]
0038a358  08 30 80 e5                                      str r3, [r0, #8]
0038a35c  02 00 13 e1                                      tst r3, r2
0038a360  00 00 00 0a                                      beq #0x38a368
0038a364  ed fa 0d eb                                      bl #0x708f20
0038a368  00 00 55 e3                                      cmp r5, #0
0038a36c  bf ff ff 0a                                      beq #0x38a270
0038a370  03 00 75 e3                                      cmn r5, #3
0038a374  bd ff ff 8a                                      bhi #0x38a270
0038a378  07 00 a0 e1                                      mov r0, r7
0038a37c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0038a380  e6 fa 0d eb                                      bl #0x708f20
0038a384  07 00 a0 e1                                      mov r0, r7
0038a388  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
