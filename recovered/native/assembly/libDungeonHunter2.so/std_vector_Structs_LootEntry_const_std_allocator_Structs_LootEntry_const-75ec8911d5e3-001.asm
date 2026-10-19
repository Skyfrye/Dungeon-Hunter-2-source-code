; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004024bc, declared_size=64, range_size=64, mode=arm
; class-group: std::vector<Structs::LootEntry const*, std::allocator<Structs::LootEntry const*> >
; alias: _ZNSt6vectorIPKN7Structs9LootEntryESaIS3_EED1Ev
; demangled: std::vector<Structs::LootEntry const*, std::allocator<Structs::LootEntry const*> >::~vector()
; decoder-mode: arm
004024bc  10 40 2d e9                                      push {r4, lr}
004024c0  00 40 a0 e1                                      mov r4, r0
004024c4  00 00 90 e5                                      ldr r0, [r0]
004024c8  00 00 50 e3                                      cmp r0, #0
004024cc  05 00 00 0a                                      beq #0x4024e8
004024d0  08 10 94 e5                                      ldr r1, [r4, #8]
004024d4  01 10 60 e0                                      rsb r1, r0, r1
004024d8  03 10 c1 e3                                      bic r1, r1, #3
004024dc  80 00 51 e3                                      cmp r1, #0x80
004024e0  02 00 00 8a                                      bhi #0x4024f0
004024e4  85 1a 0c eb                                      bl #0x708f00
004024e8  04 00 a0 e1                                      mov r0, r4
004024ec  10 80 bd e8                                      pop {r4, pc}
004024f0  d2 37 fc eb                                      bl #0x310440
004024f4  04 00 a0 e1                                      mov r0, r4
004024f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004026dc, declared_size=200, range_size=200, mode=arm
; class-group: std::vector<Structs::LootEntry const*, std::allocator<Structs::LootEntry const*> >
; alias: _ZNSt6vectorIPKN7Structs9LootEntryESaIS3_EE18_M_insert_overflowEPS3_RKS3_RKSt11__true_typejb.clone.2
; demangled: std::vector<Structs::LootEntry const*, std::allocator<Structs::LootEntry const*> >::_M_insert_overflow(Structs::LootEntry const**, Structs::LootEntry const* const&, std::__true_type const&, unsigned int, bool) [clone .clone.2]
; decoder-mode: arm
004026dc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004026e0  00 40 a0 e1                                      mov r4, r0
004026e4  00 30 94 e5                                      ldr r3, [r4]
004026e8  04 00 90 e5                                      ldr r0, [r0, #4]
004026ec  01 60 a0 e1                                      mov r6, r1
004026f0  0c d0 4d e2                                      sub sp, sp, #0xc
004026f4  00 30 63 e0                                      rsb r3, r3, r0
004026f8  43 31 a0 e1                                      asr r3, r3, #2
004026fc  01 00 53 e3                                      cmp r3, #1
00402700  03 10 83 20                                      addhs r1, r3, r3
00402704  01 10 83 32                                      addlo r1, r3, #1
00402708  07 01 71 e3                                      cmn r1, #0xc0000001
0040270c  02 70 a0 e1                                      mov r7, r2
00402710  1b 00 00 8a                                      bhi #0x402784
00402714  01 00 53 e1                                      cmp r3, r1
00402718  19 00 00 8a                                      bhi #0x402784
0040271c  08 20 8d e2                                      add r2, sp, #8
00402720  04 10 22 e5                                      str r1, [r2, #-4]!
00402724  08 00 84 e2                                      add r0, r4, #8
00402728  cf ff ff eb                                      bl #0x40266c
0040272c  00 10 94 e5                                      ldr r1, [r4]
00402730  00 50 a0 e1                                      mov r5, r0
00402734  01 60 56 e0                                      subs r6, r6, r1
00402738  00 60 a0 01                                      moveq r6, r0
0040273c  14 00 00 1a                                      bne #0x402794
00402740  00 30 97 e5                                      ldr r3, [r7]
00402744  04 30 86 e4                                      str r3, [r6], #4
00402748  00 00 94 e5                                      ldr r0, [r4]
0040274c  08 10 94 e5                                      ldr r1, [r4, #8]
00402750  00 00 50 e3                                      cmp r0, #0
00402754  04 00 00 0a                                      beq #0x40276c
00402758  01 10 60 e0                                      rsb r1, r0, r1
0040275c  03 10 c1 e3                                      bic r1, r1, #3
00402760  80 00 51 e3                                      cmp r1, #0x80
00402764  08 00 00 8a                                      bhi #0x40278c
00402768  e4 19 0c eb                                      bl #0x708f00
0040276c  04 30 9d e5                                      ldr r3, [sp, #4]
00402770  60 00 84 e8                                      stm r4, {r5, r6}
00402774  03 51 85 e0                                      add r5, r5, r3, lsl #2
00402778  08 50 84 e5                                      str r5, [r4, #8]
0040277c  0c d0 8d e2                                      add sp, sp, #0xc
00402780  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00402784  03 11 e0 e3                                      mvn r1, #0xc0000000
00402788  e3 ff ff ea                                      b #0x40271c
0040278c  2b 37 fc eb                                      bl #0x310440
00402790  f5 ff ff ea                                      b #0x40276c
00402794  06 20 a0 e1                                      mov r2, r6
00402798  e6 2d fc eb                                      bl #0x30df38
0040279c  06 60 80 e0                                      add r6, r0, r6
004027a0  e6 ff ff ea                                      b #0x402740
