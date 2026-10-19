; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00345d04, declared_size=300, range_size=300, mode=arm
; class-group: std::set<short, std::less<short>, std::allocator<short> >& std::map<short, std::set<short, std::less<short>, std::allocator<short> >, std::less<short>, std::allocator<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > > >
; alias: _ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEEixIiEERS4_RKT_
; demangled: std::set<short, std::less<short>, std::allocator<short> >& std::map<short, std::set<short, std::less<short>, std::allocator<short> >, std::less<short>, std::allocator<std::pair<short const, std::set<short, std::less<short>, std::allocator<short> > > > >::operator[]<int>(int const&)
; decoder-mode: arm
00345d04  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00345d08  04 40 90 e5                                      ldr r4, [r0, #4]
00345d0c  44 d0 4d e2                                      sub sp, sp, #0x44
00345d10  00 80 a0 e1                                      mov r8, r0
00345d14  00 00 54 e3                                      cmp r4, #0
00345d18  41 00 00 0a                                      beq #0x345e24
00345d1c  b0 c0 d1 e1                                      ldrh ip, [r1]
00345d20  00 20 a0 e1                                      mov r2, r0
00345d24  7c 10 bf e6                                      sxth r1, ip
00345d28  00 00 00 ea                                      b #0x345d30
00345d2c  03 40 a0 e1                                      mov r4, r3
00345d30  f0 31 d4 e1                                      ldrsh r3, [r4, #0x10]
00345d34  01 00 53 e1                                      cmp r3, r1
00345d38  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
00345d3c  08 30 94 a5                                      ldrge r3, [r4, #8]
00345d40  02 40 a0 b1                                      movlt r4, r2
00345d44  04 20 a0 e1                                      mov r2, r4
00345d48  00 00 53 e3                                      cmp r3, #0
00345d4c  f6 ff ff 1a                                      bne #0x345d2c
00345d50  04 00 58 e1                                      cmp r8, r4
00345d54  04 00 00 0a                                      beq #0x345d6c
00345d58  f0 21 d4 e1                                      ldrsh r2, [r4, #0x10]
00345d5c  7c 30 bf e6                                      sxth r3, ip
00345d60  04 00 a0 e1                                      mov r0, r4
00345d64  03 00 52 e1                                      cmp r2, r3
00345d68  1a 00 00 da                                      ble #0x345dd8
00345d6c  40 a0 8d e2                                      add sl, sp, #0x40
00345d70  bc c3 6a e1                                      strh ip, [sl, #-0x3c]!
00345d74  40 50 8d e2                                      add r5, sp, #0x40
00345d78  00 60 a0 e3                                      mov r6, #0
00345d7c  20 60 65 e5                                      strb r6, [r5, #-0x20]!
00345d80  04 70 8a e2                                      add r7, sl, #4
00345d84  05 10 a0 e1                                      mov r1, r5
00345d88  07 00 a0 e1                                      mov r0, r7
00345d8c  24 60 8d e5                                      str r6, [sp, #0x24]
00345d90  28 50 8d e5                                      str r5, [sp, #0x28]
00345d94  2c 50 8d e5                                      str r5, [sp, #0x2c]
00345d98  30 60 8d e5                                      str r6, [sp, #0x30]
00345d9c  8d fb ff eb                                      bl #0x344bd8
00345da0  0a 30 a0 e1                                      mov r3, sl
00345da4  08 10 a0 e1                                      mov r1, r8
00345da8  3c 00 8d e2                                      add r0, sp, #0x3c
00345dac  38 20 8d e2                                      add r2, sp, #0x38
00345db0  38 40 8d e5                                      str r4, [sp, #0x38]
00345db4  4f fc ff eb                                      bl #0x344ef8
00345db8  18 30 9d e5                                      ldr r3, [sp, #0x18]
00345dbc  3c 40 9d e5                                      ldr r4, [sp, #0x3c]
00345dc0  06 00 53 e1                                      cmp r3, r6
00345dc4  0b 00 00 1a                                      bne #0x345df8
00345dc8  30 30 9d e5                                      ldr r3, [sp, #0x30]
00345dcc  00 00 53 e3                                      cmp r3, #0
00345dd0  03 00 00 1a                                      bne #0x345de4
00345dd4  04 00 a0 e1                                      mov r0, r4
00345dd8  14 00 80 e2                                      add r0, r0, #0x14
00345ddc  44 d0 8d e2                                      add sp, sp, #0x44
00345de0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00345de4  05 00 a0 e1                                      mov r0, r5
00345de8  24 10 9d e5                                      ldr r1, [sp, #0x24]
00345dec  b6 ff ff eb                                      bl #0x345ccc
00345df0  04 00 a0 e1                                      mov r0, r4
00345df4  f7 ff ff ea                                      b #0x345dd8
00345df8  07 00 a0 e1                                      mov r0, r7
00345dfc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00345e00  b1 ff ff eb                                      bl #0x345ccc
00345e04  30 30 9d e5                                      ldr r3, [sp, #0x30]
00345e08  14 70 8d e5                                      str r7, [sp, #0x14]
00345e0c  18 60 8d e5                                      str r6, [sp, #0x18]
00345e10  00 00 53 e3                                      cmp r3, #0
00345e14  10 70 8d e5                                      str r7, [sp, #0x10]
00345e18  0c 60 8d e5                                      str r6, [sp, #0xc]
00345e1c  ec ff ff 0a                                      beq #0x345dd4
00345e20  ef ff ff ea                                      b #0x345de4
00345e24  b0 c0 d1 e1                                      ldrh ip, [r1]
00345e28  00 40 a0 e1                                      mov r4, r0
00345e2c  c7 ff ff ea                                      b #0x345d50
