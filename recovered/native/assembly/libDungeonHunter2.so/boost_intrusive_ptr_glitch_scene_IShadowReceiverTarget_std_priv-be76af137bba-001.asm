; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00589560, declared_size=304, range_size=304, mode=arm
; class-group: boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>* std::priv
; alias: _ZNSt4priv6__findIPN5boost13intrusive_ptrIN6glitch5scene21IShadowReceiverTargetEEES6_EET_S8_S8_RKT0_RKSt26random_access_iterator_tag
; demangled: boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>* std::priv::__find<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>*, boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> >(boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>*, boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>*, boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget> const&, std::random_access_iterator_tag const&)
; decoder-mode: arm
00589560  00 30 a0 e1                                      mov r3, r0
00589564  01 00 60 e0                                      rsb r0, r0, r1
00589568  40 c2 a0 e1                                      asr ip, r0, #4
0058956c  00 00 5c e3                                      cmp ip, #0
00589570  30 00 2d e9                                      push {r4, r5}
00589574  40 41 a0 e1                                      asr r4, r0, #2
00589578  03 00 a0 d1                                      movle r0, r3
0058957c  21 00 00 da                                      ble #0x589608
00589580  00 00 93 e5                                      ldr r0, [r3]
00589584  00 40 92 e5                                      ldr r4, [r2]
00589588  04 00 50 e1                                      cmp r0, r4
0058958c  03 00 a0 01                                      moveq r0, r3
00589590  23 00 00 0a                                      beq #0x589624
00589594  04 50 93 e5                                      ldr r5, [r3, #4]
00589598  04 00 83 e2                                      add r0, r3, #4
0058959c  05 00 54 e1                                      cmp r4, r5
005895a0  1f 00 00 0a                                      beq #0x589624
005895a4  04 50 b0 e5                                      ldr r5, [r0, #4]!
005895a8  05 00 54 e1                                      cmp r4, r5
005895ac  1c 00 00 0a                                      beq #0x589624
005895b0  04 50 b0 e5                                      ldr r5, [r0, #4]!
005895b4  05 00 54 e1                                      cmp r4, r5
005895b8  0d 00 00 1a                                      bne #0x5895f4
005895bc  18 00 00 ea                                      b #0x589624
005895c0  10 00 93 e5                                      ldr r0, [r3, #0x10]
005895c4  04 00 50 e1                                      cmp r0, r4
005895c8  22 00 00 0a                                      beq #0x589658
005895cc  14 00 93 e5                                      ldr r0, [r3, #0x14]
005895d0  04 00 50 e1                                      cmp r0, r4
005895d4  21 00 00 0a                                      beq #0x589660
005895d8  18 00 93 e5                                      ldr r0, [r3, #0x18]
005895dc  04 00 50 e1                                      cmp r0, r4
005895e0  20 00 00 0a                                      beq #0x589668
005895e4  10 30 83 e2                                      add r3, r3, #0x10
005895e8  0c 00 93 e5                                      ldr r0, [r3, #0xc]
005895ec  00 00 54 e1                                      cmp r4, r0
005895f0  1e 00 00 0a                                      beq #0x589670
005895f4  01 c0 5c e2                                      subs ip, ip, #1
005895f8  f0 ff ff 1a                                      bne #0x5895c0
005895fc  10 00 83 e2                                      add r0, r3, #0x10
00589600  01 40 60 e0                                      rsb r4, r0, r1
00589604  44 41 a0 e1                                      asr r4, r4, #2
00589608  02 00 54 e3                                      cmp r4, #2
0058960c  06 00 00 0a                                      beq #0x58962c
00589610  03 00 54 e3                                      cmp r4, #3
00589614  17 00 00 0a                                      beq #0x589678
00589618  01 00 54 e3                                      cmp r4, #1
0058961c  0b 00 00 0a                                      beq #0x589650
00589620  01 00 a0 e1                                      mov r0, r1
00589624  30 00 bd e8                                      pop {r4, r5}
00589628  1e ff 2f e1                                      bx lr
0058962c  00 30 92 e5                                      ldr r3, [r2]
00589630  00 20 90 e5                                      ldr r2, [r0]
00589634  03 00 52 e1                                      cmp r2, r3
00589638  f9 ff ff 0a                                      beq #0x589624
0058963c  04 00 80 e2                                      add r0, r0, #4
00589640  00 20 90 e5                                      ldr r2, [r0]
00589644  03 00 52 e1                                      cmp r2, r3
00589648  01 00 a0 11                                      movne r0, r1
0058964c  f4 ff ff ea                                      b #0x589624
00589650  00 30 92 e5                                      ldr r3, [r2]
00589654  f9 ff ff ea                                      b #0x589640
00589658  10 00 83 e2                                      add r0, r3, #0x10
0058965c  f0 ff ff ea                                      b #0x589624
00589660  14 00 83 e2                                      add r0, r3, #0x14
00589664  ee ff ff ea                                      b #0x589624
00589668  18 00 83 e2                                      add r0, r3, #0x18
0058966c  ec ff ff ea                                      b #0x589624
00589670  0c 00 83 e2                                      add r0, r3, #0xc
00589674  ea ff ff ea                                      b #0x589624
00589678  00 30 92 e5                                      ldr r3, [r2]
0058967c  00 20 90 e5                                      ldr r2, [r0]
00589680  03 00 52 e1                                      cmp r2, r3
00589684  e6 ff ff 0a                                      beq #0x589624
00589688  04 00 80 e2                                      add r0, r0, #4
0058968c  e7 ff ff ea                                      b #0x589630

; FUNCTION 0x00589690, declared_size=100, range_size=100, mode=arm
; class-group: boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>* std::priv
; alias: _ZNSt4priv6__copyIPN5boost13intrusive_ptrIN6glitch5scene21IShadowReceiverTargetEEES7_iEET0_T_S9_S8_RKSt26random_access_iterator_tagPT1_
; demangled: boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>* std::priv::__copy<boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>*, boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>*, int>(boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>*, boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>*, boost::intrusive_ptr<glitch::scene::IShadowReceiverTarget>*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00589690  01 10 60 e0                                      rsb r1, r0, r1
00589694  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00589698  41 51 a0 e1                                      asr r5, r1, #2
0058969c  00 00 55 e3                                      cmp r5, #0
005896a0  00 40 a0 e1                                      mov r4, r0
005896a4  02 80 a0 e1                                      mov r8, r2
005896a8  0f 00 00 da                                      ble #0x5896ec
005896ac  05 70 a0 e1                                      mov r7, r5
005896b0  00 60 a0 e3                                      mov r6, #0
005896b4  06 30 94 e7                                      ldr r3, [r4, r6]
005896b8  00 00 53 e3                                      cmp r3, #0
005896bc  04 20 93 15                                      ldrne r2, [r3, #4]
005896c0  01 20 82 12                                      addne r2, r2, #1
005896c4  04 20 83 15                                      strne r2, [r3, #4]
005896c8  06 00 98 e7                                      ldr r0, [r8, r6]
005896cc  06 30 88 e7                                      str r3, [r8, r6]
005896d0  04 60 86 e2                                      add r6, r6, #4
005896d4  00 00 50 e3                                      cmp r0, #0
005896d8  00 00 00 0a                                      beq #0x5896e0
005896dc  a8 4f f6 eb                                      bl #0x31d584
005896e0  01 70 57 e2                                      subs r7, r7, #1
005896e4  f2 ff ff 1a                                      bne #0x5896b4
005896e8  05 81 88 e0                                      add r8, r8, r5, lsl #2
005896ec  08 00 a0 e1                                      mov r0, r8
005896f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
