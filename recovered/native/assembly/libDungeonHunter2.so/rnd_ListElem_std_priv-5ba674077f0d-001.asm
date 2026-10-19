; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048c6d4, declared_size=316, range_size=316, mode=arm
; class-group: rnd::ListElem* std::priv
; alias: _ZNSt4priv9__find_ifIPN3rnd8ListElemENS1_11BlockSearchEEET_S5_S5_T0_RKSt26random_access_iterator_tag
; demangled: rnd::ListElem* std::priv::__find_if<rnd::ListElem*, rnd::BlockSearch>(rnd::ListElem*, rnd::ListElem*, rnd::BlockSearch, std::random_access_iterator_tag const&)
; decoder-mode: arm
0048c6d4  01 30 60 e0                                      rsb r3, r0, r1
0048c6d8  43 32 a0 e1                                      asr r3, r3, #4
0048c6dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0048c6e0  02 60 a0 e1                                      mov r6, r2
0048c6e4  83 20 83 e0                                      add r2, r3, r3, lsl #1
0048c6e8  00 40 a0 e1                                      mov r4, r0
0048c6ec  02 22 82 e0                                      add r2, r2, r2, lsl #4
0048c6f0  01 50 a0 e1                                      mov r5, r1
0048c6f4  02 24 82 e0                                      add r2, r2, r2, lsl #8
0048c6f8  02 28 82 e0                                      add r2, r2, r2, lsl #16
0048c6fc  02 31 83 e0                                      add r3, r3, r2, lsl #2
0048c700  43 81 a0 e1                                      asr r8, r3, #2
0048c704  00 00 58 e3                                      cmp r8, #0
0048c708  14 00 00 ca                                      bgt #0x48c760
0048c70c  23 00 00 ea                                      b #0x48c7a0
0048c710  50 40 84 e2                                      add r4, r4, #0x50
0048c714  04 10 a0 e1                                      mov r1, r4
0048c718  c6 ff ff eb                                      bl #0x48c638
0048c71c  00 00 50 e3                                      cmp r0, #0
0048c720  06 00 a0 e1                                      mov r0, r6
0048c724  14 00 00 1a                                      bne #0x48c77c
0048c728  a0 40 87 e2                                      add r4, r7, #0xa0
0048c72c  04 10 a0 e1                                      mov r1, r4
0048c730  c0 ff ff eb                                      bl #0x48c638
0048c734  00 00 50 e3                                      cmp r0, #0
0048c738  06 00 a0 e1                                      mov r0, r6
0048c73c  0e 00 00 1a                                      bne #0x48c77c
0048c740  f0 40 87 e2                                      add r4, r7, #0xf0
0048c744  04 10 a0 e1                                      mov r1, r4
0048c748  ba ff ff eb                                      bl #0x48c638
0048c74c  00 00 50 e3                                      cmp r0, #0
0048c750  09 00 00 1a                                      bne #0x48c77c
0048c754  01 80 58 e2                                      subs r8, r8, #1
0048c758  05 4d 87 e2                                      add r4, r7, #0x140
0048c75c  08 00 00 0a                                      beq #0x48c784
0048c760  04 10 a0 e1                                      mov r1, r4
0048c764  06 00 a0 e1                                      mov r0, r6
0048c768  b2 ff ff eb                                      bl #0x48c638
0048c76c  00 00 50 e3                                      cmp r0, #0
0048c770  04 70 a0 e1                                      mov r7, r4
0048c774  06 00 a0 e1                                      mov r0, r6
0048c778  e4 ff ff 0a                                      beq #0x48c710
0048c77c  04 00 a0 e1                                      mov r0, r4
0048c780  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0048c784  05 20 64 e0                                      rsb r2, r4, r5
0048c788  42 22 a0 e1                                      asr r2, r2, #4
0048c78c  82 30 82 e0                                      add r3, r2, r2, lsl #1
0048c790  03 32 83 e0                                      add r3, r3, r3, lsl #4
0048c794  03 34 83 e0                                      add r3, r3, r3, lsl #8
0048c798  03 38 83 e0                                      add r3, r3, r3, lsl #16
0048c79c  03 31 82 e0                                      add r3, r2, r3, lsl #2
0048c7a0  02 00 53 e3                                      cmp r3, #2
0048c7a4  0c 00 00 0a                                      beq #0x48c7dc
0048c7a8  03 00 53 e3                                      cmp r3, #3
0048c7ac  04 00 00 0a                                      beq #0x48c7c4
0048c7b0  01 00 53 e3                                      cmp r3, #1
0048c7b4  0e 00 00 0a                                      beq #0x48c7f4
0048c7b8  05 40 a0 e1                                      mov r4, r5
0048c7bc  04 00 a0 e1                                      mov r0, r4
0048c7c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0048c7c4  06 00 a0 e1                                      mov r0, r6
0048c7c8  04 10 a0 e1                                      mov r1, r4
0048c7cc  99 ff ff eb                                      bl #0x48c638
0048c7d0  00 00 50 e3                                      cmp r0, #0
0048c7d4  e8 ff ff 1a                                      bne #0x48c77c
0048c7d8  50 40 84 e2                                      add r4, r4, #0x50
0048c7dc  06 00 a0 e1                                      mov r0, r6
0048c7e0  04 10 a0 e1                                      mov r1, r4
0048c7e4  93 ff ff eb                                      bl #0x48c638
0048c7e8  00 00 50 e3                                      cmp r0, #0
0048c7ec  e2 ff ff 1a                                      bne #0x48c77c
0048c7f0  50 40 84 e2                                      add r4, r4, #0x50
0048c7f4  06 00 a0 e1                                      mov r0, r6
0048c7f8  04 10 a0 e1                                      mov r1, r4
0048c7fc  8d ff ff eb                                      bl #0x48c638
0048c800  00 00 50 e3                                      cmp r0, #0
0048c804  dc ff ff 1a                                      bne #0x48c77c
0048c808  05 40 a0 e1                                      mov r4, r5
0048c80c  ea ff ff ea                                      b #0x48c7bc
