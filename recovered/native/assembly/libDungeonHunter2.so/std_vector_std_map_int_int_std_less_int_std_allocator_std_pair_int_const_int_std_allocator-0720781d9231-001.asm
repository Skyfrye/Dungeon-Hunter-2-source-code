; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004636e8, declared_size=164, range_size=164, mode=arm
; class-group: std::vector<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > >, std::allocator<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > > > >
; alias: _ZNSt6vectorISt3mapIiiSt4lessIiESaISt4pairIKiiEEESaIS7_EED1Ev
; demangled: std::vector<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > >, std::allocator<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > > > >::~vector()
; decoder-mode: arm
004636e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004636ec  04 40 90 e5                                      ldr r4, [r0, #4]
004636f0  00 50 90 e5                                      ldr r5, [r0]
004636f4  00 70 a0 e1                                      mov r7, r0
004636f8  05 00 54 e1                                      cmp r4, r5
004636fc  0d 00 00 0a                                      beq #0x463738
00463700  00 60 a0 e3                                      mov r6, #0
00463704  18 40 44 e2                                      sub r4, r4, #0x18
00463708  10 30 94 e5                                      ldr r3, [r4, #0x10]
0046370c  00 00 53 e3                                      cmp r3, #0
00463710  06 00 00 0a                                      beq #0x463730
00463714  04 00 a0 e1                                      mov r0, r4
00463718  04 10 94 e5                                      ldr r1, [r4, #4]
0046371c  5c 89 fb eb                                      bl #0x345c94
00463720  08 40 84 e5                                      str r4, [r4, #8]
00463724  04 60 84 e5                                      str r6, [r4, #4]
00463728  0c 40 84 e5                                      str r4, [r4, #0xc]
0046372c  10 60 84 e5                                      str r6, [r4, #0x10]
00463730  04 00 55 e1                                      cmp r5, r4
00463734  f2 ff ff 1a                                      bne #0x463704
00463738  00 00 97 e5                                      ldr r0, [r7]
0046373c  00 00 50 e3                                      cmp r0, #0
00463740  0c 00 00 0a                                      beq #0x463778
00463744  08 30 97 e5                                      ldr r3, [r7, #8]
00463748  03 30 60 e0                                      rsb r3, r0, r3
0046374c  c3 31 a0 e1                                      asr r3, r3, #3
00463750  03 11 83 e0                                      add r1, r3, r3, lsl #2
00463754  01 12 81 e0                                      add r1, r1, r1, lsl #4
00463758  01 14 81 e0                                      add r1, r1, r1, lsl #8
0046375c  01 18 81 e0                                      add r1, r1, r1, lsl #16
00463760  81 30 83 e0                                      add r3, r3, r1, lsl #1
00463764  18 10 a0 e3                                      mov r1, #0x18
00463768  91 03 01 e0                                      mul r1, r1, r3
0046376c  80 00 51 e3                                      cmp r1, #0x80
00463770  02 00 00 8a                                      bhi #0x463780
00463774  e1 95 0a eb                                      bl #0x708f00
00463778  07 00 a0 e1                                      mov r0, r7
0046377c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00463780  2e b3 fa eb                                      bl #0x310440
00463784  07 00 a0 e1                                      mov r0, r7
00463788  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0046593c, declared_size=268, range_size=268, mode=arm
; class-group: std::vector<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > >, std::allocator<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > > > >
; alias: _ZNSt6vectorISt3mapIiiSt4lessIiESaISt4pairIKiiEEESaIS7_EE22_M_insert_overflow_auxEPS7_RKS7_RKSt12__false_typejb.clone.2
; demangled: std::vector<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > >, std::allocator<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > > > >::_M_insert_overflow_aux(std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > >*, std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > > const&, std::__false_type const&, unsigned int, bool) [clone .clone.2]
; decoder-mode: arm
0046593c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00465940  00 40 a0 e1                                      mov r4, r0
00465944  01 10 90 e8                                      ldm r0, {r0, ip}
00465948  01 70 a0 e1                                      mov r7, r1
0046594c  aa 3a 0a e3                                      movw r3, #0xaaaa
00465950  0c 00 60 e0                                      rsb r0, r0, ip
00465954  c0 01 a0 e1                                      asr r0, r0, #3
00465958  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0046595c  00 11 80 e0                                      add r1, r0, r0, lsl #2
00465960  14 d0 4d e2                                      sub sp, sp, #0x14
00465964  01 12 81 e0                                      add r1, r1, r1, lsl #4
00465968  02 60 a0 e1                                      mov r6, r2
0046596c  01 14 81 e0                                      add r1, r1, r1, lsl #8
00465970  01 18 81 e0                                      add r1, r1, r1, lsl #16
00465974  81 00 80 e0                                      add r0, r0, r1, lsl #1
00465978  01 00 50 e3                                      cmp r0, #1
0046597c  00 10 80 20                                      addhs r1, r0, r0
00465980  01 10 80 32                                      addlo r1, r0, #1
00465984  03 00 51 e1                                      cmp r1, r3
00465988  29 00 00 8a                                      bhi #0x465a34
0046598c  01 00 50 e1                                      cmp r0, r1
00465990  27 00 00 8a                                      bhi #0x465a34
00465994  10 20 8d e2                                      add r2, sp, #0x10
00465998  08 10 22 e5                                      str r1, [r2, #-8]!
0046599c  08 00 84 e2                                      add r0, r4, #8
004659a0  95 f8 ff eb                                      bl #0x463bfc
004659a4  00 50 a0 e1                                      mov r5, r0
004659a8  07 10 a0 e1                                      mov r1, r7
004659ac  00 30 a0 e3                                      mov r3, #0
004659b0  0c c0 8d e2                                      add ip, sp, #0xc
004659b4  00 00 94 e5                                      ldr r0, [r4]
004659b8  05 20 a0 e1                                      mov r2, r5
004659bc  00 c0 8d e5                                      str ip, [sp]
004659c0  fa f6 ff eb                                      bl #0x4635b0
004659c4  06 10 a0 e1                                      mov r1, r6
004659c8  00 70 a0 e1                                      mov r7, r0
004659cc  bc ff ff eb                                      bl #0x4658c4
004659d0  00 00 94 e5                                      ldr r0, [r4]
004659d4  18 60 87 e2                                      add r6, r7, #0x18
004659d8  08 30 94 e5                                      ldr r3, [r4, #8]
004659dc  00 00 50 e3                                      cmp r0, #0
004659e0  0b 00 00 0a                                      beq #0x465a14
004659e4  03 30 60 e0                                      rsb r3, r0, r3
004659e8  c3 31 a0 e1                                      asr r3, r3, #3
004659ec  03 11 83 e0                                      add r1, r3, r3, lsl #2
004659f0  01 12 81 e0                                      add r1, r1, r1, lsl #4
004659f4  01 14 81 e0                                      add r1, r1, r1, lsl #8
004659f8  01 18 81 e0                                      add r1, r1, r1, lsl #16
004659fc  81 30 83 e0                                      add r3, r3, r1, lsl #1
00465a00  18 10 a0 e3                                      mov r1, #0x18
00465a04  91 03 01 e0                                      mul r1, r1, r3
00465a08  80 00 51 e3                                      cmp r1, #0x80
00465a0c  0b 00 00 8a                                      bhi #0x465a40
00465a10  3a 8d 0a eb                                      bl #0x708f00
00465a14  08 30 9d e5                                      ldr r3, [sp, #8]
00465a18  18 20 a0 e3                                      mov r2, #0x18
00465a1c  00 50 84 e5                                      str r5, [r4]
00465a20  92 53 25 e0                                      mla r5, r2, r3, r5
00465a24  04 60 84 e5                                      str r6, [r4, #4]
00465a28  08 50 84 e5                                      str r5, [r4, #8]
00465a2c  14 d0 8d e2                                      add sp, sp, #0x14
00465a30  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00465a34  aa 1a 0a e3                                      movw r1, #0xaaaa
00465a38  01 16 81 e1                                      orr r1, r1, r1, lsl #12
00465a3c  d4 ff ff ea                                      b #0x465994
00465a40  7e aa fa eb                                      bl #0x310440
00465a44  f2 ff ff ea                                      b #0x465a14

; FUNCTION 0x00465a48, declared_size=152, range_size=152, mode=arm
; class-group: std::vector<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > >, std::allocator<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > > > >
; alias: _ZNSt6vectorISt3mapIiiSt4lessIiESaISt4pairIKiiEEESaIS7_EE9push_backERKS7_
; demangled: std::vector<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > >, std::allocator<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > > > >::push_back(std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > > const&)
; decoder-mode: arm
00465a48  70 40 2d e9                                      push {r4, r5, r6, lr}
00465a4c  04 60 90 e5                                      ldr r6, [r0, #4]
00465a50  08 30 90 e5                                      ldr r3, [r0, #8]
00465a54  18 d0 4d e2                                      sub sp, sp, #0x18
00465a58  00 50 a0 e1                                      mov r5, r0
00465a5c  03 00 56 e1                                      cmp r6, r3
00465a60  01 20 a0 e1                                      mov r2, r1
00465a64  06 00 00 0a                                      beq #0x465a84
00465a68  06 00 a0 e1                                      mov r0, r6
00465a6c  94 ff ff eb                                      bl #0x4658c4
00465a70  04 30 95 e5                                      ldr r3, [r5, #4]
00465a74  18 30 83 e2                                      add r3, r3, #0x18
00465a78  04 30 85 e5                                      str r3, [r5, #4]
00465a7c  18 d0 8d e2                                      add sp, sp, #0x18
00465a80  70 80 bd e8                                      pop {r4, r5, r6, pc}
00465a84  00 30 90 e5                                      ldr r3, [r0]
00465a88  03 00 51 e1                                      cmp r1, r3
00465a8c  0f 00 00 3a                                      blo #0x465ad0
00465a90  01 00 56 e1                                      cmp r6, r1
00465a94  0d 00 00 9a                                      bls #0x465ad0
00465a98  0d 00 a0 e1                                      mov r0, sp
00465a9c  88 ff ff eb                                      bl #0x4658c4
00465aa0  05 00 a0 e1                                      mov r0, r5
00465aa4  06 10 a0 e1                                      mov r1, r6
00465aa8  0d 20 a0 e1                                      mov r2, sp
00465aac  a2 ff ff eb                                      bl #0x46593c
00465ab0  10 30 9d e5                                      ldr r3, [sp, #0x10]
00465ab4  0d 40 a0 e1                                      mov r4, sp
00465ab8  00 00 53 e3                                      cmp r3, #0
00465abc  ee ff ff 0a                                      beq #0x465a7c
00465ac0  0d 00 a0 e1                                      mov r0, sp
00465ac4  04 10 9d e5                                      ldr r1, [sp, #4]
00465ac8  71 80 fb eb                                      bl #0x345c94
00465acc  ea ff ff ea                                      b #0x465a7c
00465ad0  05 00 a0 e1                                      mov r0, r5
00465ad4  06 10 a0 e1                                      mov r1, r6
00465ad8  97 ff ff eb                                      bl #0x46593c
00465adc  e6 ff ff ea                                      b #0x465a7c
