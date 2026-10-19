; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004635b0, declared_size=164, range_size=164, mode=arm
; class-group: std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > >* std::priv
; alias: _ZNSt4priv20__uninitialized_moveIPSt3mapIiiSt4lessIiESaISt4pairIKiiEEES9_St12__false_typeEET0_T_SC_SB_T1_RKSt11__true_type
; demangled: std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > >* std::priv::__uninitialized_move<std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > >*, std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > >*, std::__false_type>(std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > >*, std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > >*, std::map<int, int, std::less<int>, std::allocator<std::pair<int const, int> > >*, std::__false_type, std::__true_type const&)
; decoder-mode: arm
004635b0  01 30 60 e0                                      rsb r3, r0, r1
004635b4  c3 31 a0 e1                                      asr r3, r3, #3
004635b8  f0 05 2d e9                                      push {r4, r5, r6, r7, r8, sl}
004635bc  03 a1 83 e0                                      add sl, r3, r3, lsl #2
004635c0  00 c0 a0 e1                                      mov ip, r0
004635c4  0a a2 8a e0                                      add sl, sl, sl, lsl #4
004635c8  02 80 a0 e1                                      mov r8, r2
004635cc  0a a4 8a e0                                      add sl, sl, sl, lsl #8
004635d0  0a a8 8a e0                                      add sl, sl, sl, lsl #16
004635d4  8a a0 83 e0                                      add sl, r3, sl, lsl #1
004635d8  00 00 5a e3                                      cmp sl, #0
004635dc  19 00 00 da                                      ble #0x463648
004635e0  0a 70 a0 e1                                      mov r7, sl
004635e4  02 40 a0 e1                                      mov r4, r2
004635e8  00 50 a0 e3                                      mov r5, #0
004635ec  00 00 00 ea                                      b #0x4635f4
004635f0  18 c0 8c e2                                      add ip, ip, #0x18
004635f4  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
004635f8  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
004635fc  00 60 51 e2                                      subs r6, r1, #0
00463600  04 40 86 15                                      strne r4, [r6, #4]
00463604  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00463608  03 00 5c e1                                      cmp ip, r3
0046360c  08 30 94 e5                                      ldr r3, [r4, #8]
00463610  0c 40 84 05                                      streq r4, [r4, #0xc]
00463614  03 00 5c e1                                      cmp ip, r3
00463618  08 40 84 05                                      streq r4, [r4, #8]
0046361c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00463620  01 70 57 e2                                      subs r7, r7, #1
00463624  00 50 cc e5                                      strb r5, [ip]
00463628  20 10 8c e9                                      stmib ip, {r5, ip}
0046362c  0c c0 8c e5                                      str ip, [ip, #0xc]
00463630  10 30 84 e5                                      str r3, [r4, #0x10]
00463634  10 50 8c e5                                      str r5, [ip, #0x10]
00463638  18 40 84 e2                                      add r4, r4, #0x18
0046363c  eb ff ff 1a                                      bne #0x4635f0
00463640  18 30 a0 e3                                      mov r3, #0x18
00463644  93 8a 28 e0                                      mla r8, r3, sl, r8
00463648  08 00 a0 e1                                      mov r0, r8
0046364c  f0 05 bd e8                                      pop {r4, r5, r6, r7, r8, sl}
00463650  1e ff 2f e1                                      bx lr
