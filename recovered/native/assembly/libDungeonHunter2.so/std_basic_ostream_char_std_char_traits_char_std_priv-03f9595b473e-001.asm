; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0030f5d8, declared_size=272, range_size=272, mode=arm
; class-group: std::basic_ostream<char, std::char_traits<char> >& std::priv
; alias: _ZNSt4priv9__put_numIcSt11char_traitsIcEdEERSt13basic_ostreamIT_T0_ES7_T1_
; demangled: std::basic_ostream<char, std::char_traits<char> >& std::priv::__put_num<char, std::char_traits<char>, double>(std::basic_ostream<char, std::char_traits<char> >&, double)
; decoder-mode: arm
0030f5d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0030f5dc  28 d0 4d e2                                      sub sp, sp, #0x28
0030f5e0  00 40 a0 e1                                      mov r4, r0
0030f5e4  02 60 a0 e1                                      mov r6, r2
0030f5e8  03 70 a0 e1                                      mov r7, r3
0030f5ec  da ff ff eb                                      bl #0x30f55c
0030f5f0  00 00 50 e3                                      cmp r0, #0
0030f5f4  13 00 00 1a                                      bne #0x30f648
0030f5f8  00 30 94 e5                                      ldr r3, [r4]
0030f5fc  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0030f600  00 00 84 e0                                      add r0, r4, r0
0030f604  08 30 90 e5                                      ldr r3, [r0, #8]
0030f608  14 20 90 e5                                      ldr r2, [r0, #0x14]
0030f60c  01 30 83 e3                                      orr r3, r3, #1
0030f610  02 00 13 e1                                      tst r3, r2
0030f614  08 30 80 e5                                      str r3, [r0, #8]
0030f618  30 00 00 1a                                      bne #0x30f6e0
0030f61c  00 30 94 e5                                      ldr r3, [r4]
0030f620  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030f624  03 30 84 e0                                      add r3, r4, r3
0030f628  04 30 93 e5                                      ldr r3, [r3, #4]
0030f62c  02 0a 13 e3                                      tst r3, #0x2000
0030f630  01 00 00 0a                                      beq #0x30f63c
0030f634  04 00 a0 e1                                      mov r0, r4
0030f638  ac ff ff eb                                      bl #0x30f4f0
0030f63c  04 00 a0 e1                                      mov r0, r4
0030f640  28 d0 8d e2                                      add sp, sp, #0x28
0030f644  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0030f648  00 30 94 e5                                      ldr r3, [r4]
0030f64c  24 50 8d e2                                      add r5, sp, #0x24
0030f650  05 00 a0 e1                                      mov r0, r5
0030f654  0c 10 13 e5                                      ldr r1, [r3, #-0xc]
0030f658  01 10 84 e0                                      add r1, r4, r1
0030f65c  20 10 81 e2                                      add r1, r1, #0x20
0030f660  22 e6 0f eb                                      bl #0x708ef0
0030f664  00 00 a0 e3                                      mov r0, #0
0030f668  28 e6 0f eb                                      bl #0x708f10
0030f66c  00 10 a0 e1                                      mov r1, r0
0030f670  05 00 a0 e1                                      mov r0, r5
0030f674  09 e6 0f eb                                      bl #0x708ea0
0030f678  00 30 94 e5                                      ldr r3, [r4]
0030f67c  00 c0 a0 e1                                      mov ip, r0
0030f680  00 10 a0 e1                                      mov r1, r0
0030f684  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030f688  1c 00 8d e2                                      add r0, sp, #0x1c
0030f68c  03 30 84 e0                                      add r3, r4, r3
0030f690  48 20 93 e5                                      ldr r2, [r3, #0x48]
0030f694  44 e0 d3 e5                                      ldrb lr, [r3, #0x44]
0030f698  00 80 52 e2                                      subs r8, r2, #0
0030f69c  01 80 a0 13                                      movne r8, #1
0030f6a0  18 80 cd e5                                      strb r8, [sp, #0x18]
0030f6a4  14 20 8d e5                                      str r2, [sp, #0x14]
0030f6a8  7e e0 af e6                                      sxtb lr, lr
0030f6ac  00 c0 9c e5                                      ldr ip, [ip]
0030f6b0  08 40 8d e8                                      stm sp, {r3, lr}
0030f6b4  18 30 9d e5                                      ldr r3, [sp, #0x18]
0030f6b8  f8 60 cd e1                                      strd r6, r7, [sp, #8]
0030f6bc  0f e0 a0 e1                                      mov lr, pc
0030f6c0  14 f0 9c e5                                      ldr pc, [ip, #0x14]
0030f6c4  20 30 dd e5                                      ldrb r3, [sp, #0x20]
0030f6c8  05 00 a0 e1                                      mov r0, r5
0030f6cc  01 50 23 e2                                      eor r5, r3, #1
0030f6d0  e2 e5 0f eb                                      bl #0x708e60
0030f6d4  00 00 55 e3                                      cmp r5, #0
0030f6d8  cf ff ff 0a                                      beq #0x30f61c
0030f6dc  c5 ff ff ea                                      b #0x30f5f8
0030f6e0  0e e6 0f eb                                      bl #0x708f20
0030f6e4  cc ff ff ea                                      b #0x30f61c

; FUNCTION 0x0030fe3c, declared_size=268, range_size=268, mode=arm
; class-group: std::basic_ostream<char, std::char_traits<char> >& std::priv
; alias: _ZNSt4priv9__put_numIcSt11char_traitsIcElEERSt13basic_ostreamIT_T0_ES7_T1_
; demangled: std::basic_ostream<char, std::char_traits<char> >& std::priv::__put_num<char, std::char_traits<char>, long>(std::basic_ostream<char, std::char_traits<char> >&, long)
; decoder-mode: arm
0030fe3c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0030fe40  2c d0 4d e2                                      sub sp, sp, #0x2c
0030fe44  01 60 a0 e1                                      mov r6, r1
0030fe48  00 40 a0 e1                                      mov r4, r0
0030fe4c  c2 fd ff eb                                      bl #0x30f55c
0030fe50  00 00 50 e3                                      cmp r0, #0
0030fe54  13 00 00 1a                                      bne #0x30fea8
0030fe58  00 30 94 e5                                      ldr r3, [r4]
0030fe5c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
0030fe60  00 00 84 e0                                      add r0, r4, r0
0030fe64  08 30 90 e5                                      ldr r3, [r0, #8]
0030fe68  14 20 90 e5                                      ldr r2, [r0, #0x14]
0030fe6c  01 30 83 e3                                      orr r3, r3, #1
0030fe70  02 00 13 e1                                      tst r3, r2
0030fe74  08 30 80 e5                                      str r3, [r0, #8]
0030fe78  30 00 00 1a                                      bne #0x30ff40
0030fe7c  00 30 94 e5                                      ldr r3, [r4]
0030fe80  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030fe84  03 30 84 e0                                      add r3, r4, r3
0030fe88  04 30 93 e5                                      ldr r3, [r3, #4]
0030fe8c  02 0a 13 e3                                      tst r3, #0x2000
0030fe90  01 00 00 0a                                      beq #0x30fe9c
0030fe94  04 00 a0 e1                                      mov r0, r4
0030fe98  94 fd ff eb                                      bl #0x30f4f0
0030fe9c  04 00 a0 e1                                      mov r0, r4
0030fea0  2c d0 8d e2                                      add sp, sp, #0x2c
0030fea4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0030fea8  00 30 94 e5                                      ldr r3, [r4]
0030feac  24 50 8d e2                                      add r5, sp, #0x24
0030feb0  05 00 a0 e1                                      mov r0, r5
0030feb4  0c 10 13 e5                                      ldr r1, [r3, #-0xc]
0030feb8  01 10 84 e0                                      add r1, r4, r1
0030febc  20 10 81 e2                                      add r1, r1, #0x20
0030fec0  0a e4 0f eb                                      bl #0x708ef0
0030fec4  00 00 a0 e3                                      mov r0, #0
0030fec8  10 e4 0f eb                                      bl #0x708f10
0030fecc  00 10 a0 e1                                      mov r1, r0
0030fed0  05 00 a0 e1                                      mov r0, r5
0030fed4  f1 e3 0f eb                                      bl #0x708ea0
0030fed8  00 30 94 e5                                      ldr r3, [r4]
0030fedc  00 c0 a0 e1                                      mov ip, r0
0030fee0  00 10 a0 e1                                      mov r1, r0
0030fee4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
0030fee8  1c 00 8d e2                                      add r0, sp, #0x1c
0030feec  03 30 84 e0                                      add r3, r4, r3
0030fef0  48 20 93 e5                                      ldr r2, [r3, #0x48]
0030fef4  44 e0 d3 e5                                      ldrb lr, [r3, #0x44]
0030fef8  00 70 52 e2                                      subs r7, r2, #0
0030fefc  01 70 a0 13                                      movne r7, #1
0030ff00  18 70 cd e5                                      strb r7, [sp, #0x18]
0030ff04  14 20 8d e5                                      str r2, [sp, #0x14]
0030ff08  7e e0 af e6                                      sxtb lr, lr
0030ff0c  00 c0 9c e5                                      ldr ip, [ip]
0030ff10  08 40 8d e8                                      stm sp, {r3, lr}
0030ff14  18 30 9d e5                                      ldr r3, [sp, #0x18]
0030ff18  08 60 8d e5                                      str r6, [sp, #8]
0030ff1c  0f e0 a0 e1                                      mov lr, pc
0030ff20  0c f0 9c e5                                      ldr pc, [ip, #0xc]
0030ff24  20 30 dd e5                                      ldrb r3, [sp, #0x20]
0030ff28  05 00 a0 e1                                      mov r0, r5
0030ff2c  01 50 23 e2                                      eor r5, r3, #1
0030ff30  ca e3 0f eb                                      bl #0x708e60
0030ff34  00 00 55 e3                                      cmp r5, #0
0030ff38  cf ff ff 0a                                      beq #0x30fe7c
0030ff3c  c5 ff ff ea                                      b #0x30fe58
0030ff40  f6 e3 0f eb                                      bl #0x708f20
0030ff44  cc ff ff ea                                      b #0x30fe7c

; FUNCTION 0x00484b2c, declared_size=268, range_size=268, mode=arm
; class-group: std::basic_ostream<char, std::char_traits<char> >& std::priv
; alias: _ZNSt4priv9__put_numIcSt11char_traitsIcEmEERSt13basic_ostreamIT_T0_ES7_T1_
; demangled: std::basic_ostream<char, std::char_traits<char> >& std::priv::__put_num<char, std::char_traits<char>, unsigned long>(std::basic_ostream<char, std::char_traits<char> >&, unsigned long)
; decoder-mode: arm
00484b2c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00484b30  2c d0 4d e2                                      sub sp, sp, #0x2c
00484b34  01 60 a0 e1                                      mov r6, r1
00484b38  00 40 a0 e1                                      mov r4, r0
00484b3c  86 2a fa eb                                      bl #0x30f55c
00484b40  00 00 50 e3                                      cmp r0, #0
00484b44  13 00 00 1a                                      bne #0x484b98
00484b48  00 30 94 e5                                      ldr r3, [r4]
00484b4c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00484b50  00 00 84 e0                                      add r0, r4, r0
00484b54  08 30 90 e5                                      ldr r3, [r0, #8]
00484b58  14 20 90 e5                                      ldr r2, [r0, #0x14]
00484b5c  01 30 83 e3                                      orr r3, r3, #1
00484b60  02 00 13 e1                                      tst r3, r2
00484b64  08 30 80 e5                                      str r3, [r0, #8]
00484b68  30 00 00 1a                                      bne #0x484c30
00484b6c  00 30 94 e5                                      ldr r3, [r4]
00484b70  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00484b74  03 30 84 e0                                      add r3, r4, r3
00484b78  04 30 93 e5                                      ldr r3, [r3, #4]
00484b7c  02 0a 13 e3                                      tst r3, #0x2000
00484b80  01 00 00 0a                                      beq #0x484b8c
00484b84  04 00 a0 e1                                      mov r0, r4
00484b88  58 2a fa eb                                      bl #0x30f4f0
00484b8c  04 00 a0 e1                                      mov r0, r4
00484b90  2c d0 8d e2                                      add sp, sp, #0x2c
00484b94  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00484b98  00 30 94 e5                                      ldr r3, [r4]
00484b9c  24 50 8d e2                                      add r5, sp, #0x24
00484ba0  05 00 a0 e1                                      mov r0, r5
00484ba4  0c 10 13 e5                                      ldr r1, [r3, #-0xc]
00484ba8  01 10 84 e0                                      add r1, r4, r1
00484bac  20 10 81 e2                                      add r1, r1, #0x20
00484bb0  ce 10 0a eb                                      bl #0x708ef0
00484bb4  00 00 a0 e3                                      mov r0, #0
00484bb8  d4 10 0a eb                                      bl #0x708f10
00484bbc  00 10 a0 e1                                      mov r1, r0
00484bc0  05 00 a0 e1                                      mov r0, r5
00484bc4  b5 10 0a eb                                      bl #0x708ea0
00484bc8  00 30 94 e5                                      ldr r3, [r4]
00484bcc  00 c0 a0 e1                                      mov ip, r0
00484bd0  00 10 a0 e1                                      mov r1, r0
00484bd4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00484bd8  1c 00 8d e2                                      add r0, sp, #0x1c
00484bdc  03 30 84 e0                                      add r3, r4, r3
00484be0  48 20 93 e5                                      ldr r2, [r3, #0x48]
00484be4  44 e0 d3 e5                                      ldrb lr, [r3, #0x44]
00484be8  00 70 52 e2                                      subs r7, r2, #0
00484bec  01 70 a0 13                                      movne r7, #1
00484bf0  18 70 cd e5                                      strb r7, [sp, #0x18]
00484bf4  14 20 8d e5                                      str r2, [sp, #0x14]
00484bf8  7e e0 af e6                                      sxtb lr, lr
00484bfc  00 c0 9c e5                                      ldr ip, [ip]
00484c00  08 40 8d e8                                      stm sp, {r3, lr}
00484c04  18 30 9d e5                                      ldr r3, [sp, #0x18]
00484c08  08 60 8d e5                                      str r6, [sp, #8]
00484c0c  0f e0 a0 e1                                      mov lr, pc
00484c10  10 f0 9c e5                                      ldr pc, [ip, #0x10]
00484c14  20 30 dd e5                                      ldrb r3, [sp, #0x20]
00484c18  05 00 a0 e1                                      mov r0, r5
00484c1c  01 50 23 e2                                      eor r5, r3, #1
00484c20  8e 10 0a eb                                      bl #0x708e60
00484c24  00 00 55 e3                                      cmp r5, #0
00484c28  cf ff ff 0a                                      beq #0x484b6c
00484c2c  c5 ff ff ea                                      b #0x484b48
00484c30  ba 10 0a eb                                      bl #0x708f20
00484c34  cc ff ff ea                                      b #0x484b6c
