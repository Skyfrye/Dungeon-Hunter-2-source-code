; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003c71e0, declared_size=312, range_size=312, mode=arm
; class-group: CharStateMachine::StateInfo& std::map<int, CharStateMachine::StateInfo, std::less<int>, std::allocator<std::pair<int const, CharStateMachine::StateInfo> > >
; alias: _ZNSt3mapIiN16CharStateMachine9StateInfoESt4lessIiESaISt4pairIKiS1_EEEixIiEERS1_RKT_
; demangled: CharStateMachine::StateInfo& std::map<int, CharStateMachine::StateInfo, std::less<int>, std::allocator<std::pair<int const, CharStateMachine::StateInfo> > >::operator[]<int>(int const&)
; decoder-mode: arm
003c71e0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003c71e4  04 40 90 e5                                      ldr r4, [r0, #4]
003c71e8  54 d0 4d e2                                      sub sp, sp, #0x54
003c71ec  00 80 a0 e1                                      mov r8, r0
003c71f0  00 00 54 e3                                      cmp r4, #0
003c71f4  44 00 00 0a                                      beq #0x3c730c
003c71f8  00 20 91 e5                                      ldr r2, [r1]
003c71fc  00 10 a0 e1                                      mov r1, r0
003c7200  00 00 00 ea                                      b #0x3c7208
003c7204  03 40 a0 e1                                      mov r4, r3
003c7208  10 30 94 e5                                      ldr r3, [r4, #0x10]
003c720c  02 00 53 e1                                      cmp r3, r2
003c7210  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
003c7214  08 30 94 a5                                      ldrge r3, [r4, #8]
003c7218  01 40 a0 b1                                      movlt r4, r1
003c721c  04 10 a0 e1                                      mov r1, r4
003c7220  00 00 53 e3                                      cmp r3, #0
003c7224  f6 ff ff 1a                                      bne #0x3c7204
003c7228  04 00 58 e1                                      cmp r8, r4
003c722c  03 00 00 0a                                      beq #0x3c7240
003c7230  10 30 94 e5                                      ldr r3, [r4, #0x10]
003c7234  04 00 a0 e1                                      mov r0, r4
003c7238  03 00 52 e1                                      cmp r2, r3
003c723c  1f 00 00 aa                                      bge #0x3c72c0
003c7240  04 a0 8d e2                                      add sl, sp, #4
003c7244  28 70 8d e2                                      add r7, sp, #0x28
003c7248  08 30 87 e2                                      add r3, r7, #8
003c724c  0c 60 8a e2                                      add r6, sl, #0xc
003c7250  00 50 a0 e3                                      mov r5, #0
003c7254  03 10 a0 e1                                      mov r1, r3
003c7258  06 00 a0 e1                                      mov r0, r6
003c725c  04 20 8d e5                                      str r2, [sp, #4]
003c7260  38 30 8d e5                                      str r3, [sp, #0x38]
003c7264  3c 30 8d e5                                      str r3, [sp, #0x3c]
003c7268  28 50 8d e5                                      str r5, [sp, #0x28]
003c726c  2c 50 8d e5                                      str r5, [sp, #0x2c]
003c7270  30 50 cd e5                                      strb r5, [sp, #0x30]
003c7274  34 50 8d e5                                      str r5, [sp, #0x34]
003c7278  40 50 8d e5                                      str r5, [sp, #0x40]
003c727c  08 50 8d e5                                      str r5, [sp, #8]
003c7280  0c 50 8d e5                                      str r5, [sp, #0xc]
003c7284  2b fe ff eb                                      bl #0x3c6b38
003c7288  0a 30 a0 e1                                      mov r3, sl
003c728c  08 10 a0 e1                                      mov r1, r8
003c7290  4c 00 8d e2                                      add r0, sp, #0x4c
003c7294  48 20 8d e2                                      add r2, sp, #0x48
003c7298  48 40 8d e5                                      str r4, [sp, #0x48]
003c729c  f2 fe ff eb                                      bl #0x3c6e6c
003c72a0  20 30 9d e5                                      ldr r3, [sp, #0x20]
003c72a4  4c 40 9d e5                                      ldr r4, [sp, #0x4c]
003c72a8  05 00 53 e1                                      cmp r3, r5
003c72ac  0b 00 00 1a                                      bne #0x3c72e0
003c72b0  40 30 9d e5                                      ldr r3, [sp, #0x40]
003c72b4  00 00 53 e3                                      cmp r3, #0
003c72b8  03 00 00 1a                                      bne #0x3c72cc
003c72bc  04 00 a0 e1                                      mov r0, r4
003c72c0  14 00 80 e2                                      add r0, r0, #0x14
003c72c4  54 d0 8d e2                                      add sp, sp, #0x54
003c72c8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003c72cc  08 00 87 e2                                      add r0, r7, #8
003c72d0  34 10 9d e5                                      ldr r1, [sp, #0x34]
003c72d4  9b ed ff eb                                      bl #0x3c2948
003c72d8  04 00 a0 e1                                      mov r0, r4
003c72dc  f7 ff ff ea                                      b #0x3c72c0
003c72e0  06 00 a0 e1                                      mov r0, r6
003c72e4  14 10 9d e5                                      ldr r1, [sp, #0x14]
003c72e8  96 ed ff eb                                      bl #0x3c2948
003c72ec  40 30 9d e5                                      ldr r3, [sp, #0x40]
003c72f0  1c 60 8d e5                                      str r6, [sp, #0x1c]
003c72f4  20 50 8d e5                                      str r5, [sp, #0x20]
003c72f8  00 00 53 e3                                      cmp r3, #0
003c72fc  18 60 8d e5                                      str r6, [sp, #0x18]
003c7300  14 50 8d e5                                      str r5, [sp, #0x14]
003c7304  ec ff ff 0a                                      beq #0x3c72bc
003c7308  ef ff ff ea                                      b #0x3c72cc
003c730c  00 20 91 e5                                      ldr r2, [r1]
003c7310  00 40 a0 e1                                      mov r4, r0
003c7314  c3 ff ff ea                                      b #0x3c7228
