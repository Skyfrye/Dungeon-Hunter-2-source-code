; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00811128, declared_size=196, range_size=196, mode=arm
; class-group: std::vector<CNetPlayerInfo*, std::allocator<CNetPlayerInfo*> >
; alias: _ZNSt6vectorIP14CNetPlayerInfoSaIS1_EE18_M_insert_overflowEPS1_RKS1_RKSt11__true_typejb.clone.2
; demangled: std::vector<CNetPlayerInfo*, std::allocator<CNetPlayerInfo*> >::_M_insert_overflow(CNetPlayerInfo**, CNetPlayerInfo* const&, std::__true_type const&, unsigned int, bool) [clone .clone.2]
; decoder-mode: arm
00811128  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0081112c  00 40 a0 e1                                      mov r4, r0
00811130  00 30 94 e5                                      ldr r3, [r4]
00811134  04 00 90 e5                                      ldr r0, [r0, #4]
00811138  01 60 a0 e1                                      mov r6, r1
0081113c  0c d0 4d e2                                      sub sp, sp, #0xc
00811140  00 30 63 e0                                      rsb r3, r3, r0
00811144  43 31 a0 e1                                      asr r3, r3, #2
00811148  01 00 53 e3                                      cmp r3, #1
0081114c  03 10 83 20                                      addhs r1, r3, r3
00811150  01 10 83 32                                      addlo r1, r3, #1
00811154  07 01 71 e3                                      cmn r1, #0xc0000001
00811158  02 70 a0 e1                                      mov r7, r2
0081115c  1e 00 00 8a                                      bhi #0x8111dc
00811160  01 00 53 e1                                      cmp r3, r1
00811164  1c 00 00 8a                                      bhi #0x8111dc
00811168  08 20 8d e2                                      add r2, sp, #8
0081116c  04 10 22 e5                                      str r1, [r2, #-4]!
00811170  08 00 84 e2                                      add r0, r4, #8
00811174  cf ff ff eb                                      bl #0x8110b8
00811178  00 10 94 e5                                      ldr r1, [r4]
0081117c  00 50 a0 e1                                      mov r5, r0
00811180  01 60 56 e0                                      subs r6, r6, r1
00811184  00 60 a0 01                                      moveq r6, r0
00811188  02 00 00 0a                                      beq #0x811198
0081118c  06 20 a0 e1                                      mov r2, r6
00811190  68 f3 eb eb                                      bl #0x30df38
00811194  06 60 80 e0                                      add r6, r0, r6
00811198  00 30 97 e5                                      ldr r3, [r7]
0081119c  04 30 86 e4                                      str r3, [r6], #4
008111a0  00 00 94 e5                                      ldr r0, [r4]
008111a4  08 10 94 e5                                      ldr r1, [r4, #8]
008111a8  00 00 50 e3                                      cmp r0, #0
008111ac  04 00 00 0a                                      beq #0x8111c4
008111b0  01 10 60 e0                                      rsb r1, r0, r1
008111b4  03 10 c1 e3                                      bic r1, r1, #3
008111b8  80 00 51 e3                                      cmp r1, #0x80
008111bc  08 00 00 8a                                      bhi #0x8111e4
008111c0  5c b4 02 eb                                      bl #0x8be338
008111c4  04 30 9d e5                                      ldr r3, [sp, #4]
008111c8  60 00 84 e8                                      stm r4, {r5, r6}
008111cc  03 51 85 e0                                      add r5, r5, r3, lsl #2
008111d0  08 50 84 e5                                      str r5, [r4, #8]
008111d4  0c d0 8d e2                                      add sp, sp, #0xc
008111d8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
008111dc  03 11 e0 e3                                      mvn r1, #0xc0000000
008111e0  e0 ff ff ea                                      b #0x811168
008111e4  95 fc eb eb                                      bl #0x310440
008111e8  f5 ff ff ea                                      b #0x8111c4
