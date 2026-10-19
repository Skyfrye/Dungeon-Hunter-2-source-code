; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048d87c, declared_size=124, range_size=124, mode=arm
; class-group: std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >
; alias: _ZNSt6vectorISt4pairIPKN3rnd4ExitENS1_8ListElemEESaIS6_EE19_M_clear_after_moveEv
; demangled: std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >::_M_clear_after_move()
; decoder-mode: arm
0048d87c  70 40 2d e9                                      push {r4, r5, r6, lr}
0048d880  04 40 90 e5                                      ldr r4, [r0, #4]
0048d884  00 50 90 e5                                      ldr r5, [r0]
0048d888  00 60 a0 e1                                      mov r6, r0
0048d88c  05 00 54 e1                                      cmp r4, r5
0048d890  05 00 00 0a                                      beq #0x48d8ac
0048d894  54 40 44 e2                                      sub r4, r4, #0x54
0048d898  04 00 84 e2                                      add r0, r4, #4
0048d89c  4b ea ff eb                                      bl #0x4881d0
0048d8a0  04 00 55 e1                                      cmp r5, r4
0048d8a4  fa ff ff 1a                                      bne #0x48d894
0048d8a8  00 40 96 e5                                      ldr r4, [r6]
0048d8ac  00 00 54 e3                                      cmp r4, #0
0048d8b0  08 30 96 e5                                      ldr r3, [r6, #8]
0048d8b4  0e 00 00 0a                                      beq #0x48d8f4
0048d8b8  03 10 64 e0                                      rsb r1, r4, r3
0048d8bc  3d 3f 0c e3                                      movw r3, #0xcf3d
0048d8c0  41 11 a0 e1                                      asr r1, r1, #2
0048d8c4  f3 3c 43 e3                                      movt r3, #0x3cf3
0048d8c8  93 01 03 e0                                      mul r3, r3, r1
0048d8cc  54 10 a0 e3                                      mov r1, #0x54
0048d8d0  91 03 01 e0                                      mul r1, r1, r3
0048d8d4  80 00 51 e3                                      cmp r1, #0x80
0048d8d8  02 00 00 8a                                      bhi #0x48d8e8
0048d8dc  04 00 a0 e1                                      mov r0, r4
0048d8e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0048d8e4  85 ed 09 ea                                      b #0x708f00
0048d8e8  04 00 a0 e1                                      mov r0, r4
0048d8ec  70 40 bd e8                                      pop {r4, r5, r6, lr}
0048d8f0  d2 0a fa ea                                      b #0x310440
0048d8f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048d8f8, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >
; alias: _ZNSt6vectorISt4pairIPKN3rnd4ExitENS1_8ListElemEESaIS6_EED1Ev
; demangled: std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >::~vector()
; decoder-mode: arm
0048d8f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0048d8fc  04 50 90 e5                                      ldr r5, [r0, #4]
0048d900  00 60 90 e5                                      ldr r6, [r0]
0048d904  00 40 a0 e1                                      mov r4, r0
0048d908  06 00 55 e1                                      cmp r5, r6
0048d90c  04 00 00 0a                                      beq #0x48d924
0048d910  54 50 45 e2                                      sub r5, r5, #0x54
0048d914  04 00 85 e2                                      add r0, r5, #4
0048d918  2c ea ff eb                                      bl #0x4881d0
0048d91c  05 00 56 e1                                      cmp r6, r5
0048d920  fa ff ff 1a                                      bne #0x48d910
0048d924  00 00 94 e5                                      ldr r0, [r4]
0048d928  00 00 50 e3                                      cmp r0, #0
0048d92c  0a 00 00 0a                                      beq #0x48d95c
0048d930  08 10 94 e5                                      ldr r1, [r4, #8]
0048d934  3d 3f 0c e3                                      movw r3, #0xcf3d
0048d938  f3 3c 43 e3                                      movt r3, #0x3cf3
0048d93c  01 10 60 e0                                      rsb r1, r0, r1
0048d940  41 11 a0 e1                                      asr r1, r1, #2
0048d944  93 01 03 e0                                      mul r3, r3, r1
0048d948  54 10 a0 e3                                      mov r1, #0x54
0048d94c  91 03 01 e0                                      mul r1, r1, r3
0048d950  80 00 51 e3                                      cmp r1, #0x80
0048d954  02 00 00 8a                                      bhi #0x48d964
0048d958  68 ed 09 eb                                      bl #0x708f00
0048d95c  04 00 a0 e1                                      mov r0, r4
0048d960  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048d964  b5 0a fa eb                                      bl #0x310440
0048d968  04 00 a0 e1                                      mov r0, r4
0048d96c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048d970, declared_size=124, range_size=124, mode=arm
; class-group: std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >
; alias: _ZNSt6vectorISt4pairIPKN3rnd4ExitENS1_8ListElemEESaIS6_EE8_M_clearEv
; demangled: std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >::_M_clear()
; decoder-mode: arm
0048d970  70 40 2d e9                                      push {r4, r5, r6, lr}
0048d974  04 40 90 e5                                      ldr r4, [r0, #4]
0048d978  00 50 90 e5                                      ldr r5, [r0]
0048d97c  00 60 a0 e1                                      mov r6, r0
0048d980  05 00 54 e1                                      cmp r4, r5
0048d984  05 00 00 0a                                      beq #0x48d9a0
0048d988  54 40 44 e2                                      sub r4, r4, #0x54
0048d98c  04 00 84 e2                                      add r0, r4, #4
0048d990  0e ea ff eb                                      bl #0x4881d0
0048d994  04 00 55 e1                                      cmp r5, r4
0048d998  fa ff ff 1a                                      bne #0x48d988
0048d99c  00 40 96 e5                                      ldr r4, [r6]
0048d9a0  00 00 54 e3                                      cmp r4, #0
0048d9a4  08 30 96 e5                                      ldr r3, [r6, #8]
0048d9a8  0e 00 00 0a                                      beq #0x48d9e8
0048d9ac  03 10 64 e0                                      rsb r1, r4, r3
0048d9b0  3d 3f 0c e3                                      movw r3, #0xcf3d
0048d9b4  41 11 a0 e1                                      asr r1, r1, #2
0048d9b8  f3 3c 43 e3                                      movt r3, #0x3cf3
0048d9bc  93 01 03 e0                                      mul r3, r3, r1
0048d9c0  54 10 a0 e3                                      mov r1, #0x54
0048d9c4  91 03 01 e0                                      mul r1, r1, r3
0048d9c8  80 00 51 e3                                      cmp r1, #0x80
0048d9cc  02 00 00 8a                                      bhi #0x48d9dc
0048d9d0  04 00 a0 e1                                      mov r0, r4
0048d9d4  70 40 bd e8                                      pop {r4, r5, r6, lr}
0048d9d8  48 ed 09 ea                                      b #0x708f00
0048d9dc  04 00 a0 e1                                      mov r0, r4
0048d9e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0048d9e4  95 0a fa ea                                      b #0x310440
0048d9e8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048da70, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >
; alias: _ZNSt6vectorISt4pairIPKN3rnd4ExitENS1_8ListElemEESaIS6_EE8_M_eraseEPS6_RKSt12__false_type
; demangled: std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >::_M_erase(std::pair<rnd::Exit const*, rnd::ListElem>*, std::__false_type const&)
; decoder-mode: arm
0048da70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0048da74  00 70 a0 e1                                      mov r7, r0
0048da78  04 00 90 e5                                      ldr r0, [r0, #4]
0048da7c  54 40 81 e2                                      add r4, r1, #0x54
0048da80  01 60 a0 e1                                      mov r6, r1
0048da84  00 00 54 e1                                      cmp r4, r0
0048da88  10 00 00 0a                                      beq #0x48dad0
0048da8c  00 40 64 e0                                      rsb r4, r4, r0
0048da90  3d 3f 0c e3                                      movw r3, #0xcf3d
0048da94  44 41 a0 e1                                      asr r4, r4, #2
0048da98  f3 3c 43 e3                                      movt r3, #0x3cf3
0048da9c  93 04 04 e0                                      mul r4, r3, r4
0048daa0  00 00 54 e3                                      cmp r4, #0
0048daa4  09 00 00 da                                      ble #0x48dad0
0048daa8  01 50 a0 e1                                      mov r5, r1
0048daac  54 30 95 e5                                      ldr r3, [r5, #0x54]
0048dab0  05 00 a0 e1                                      mov r0, r5
0048dab4  58 10 85 e2                                      add r1, r5, #0x58
0048dab8  04 30 80 e4                                      str r3, [r0], #4
0048dabc  7e f9 ff eb                                      bl #0x48c0bc
0048dac0  01 40 54 e2                                      subs r4, r4, #1
0048dac4  54 50 85 e2                                      add r5, r5, #0x54
0048dac8  f7 ff ff 1a                                      bne #0x48daac
0048dacc  04 00 97 e5                                      ldr r0, [r7, #4]
0048dad0  54 30 40 e2                                      sub r3, r0, #0x54
0048dad4  04 30 87 e5                                      str r3, [r7, #4]
0048dad8  50 00 40 e2                                      sub r0, r0, #0x50
0048dadc  bb e9 ff eb                                      bl #0x4881d0
0048dae0  06 00 a0 e1                                      mov r0, r6
0048dae4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0048e330, declared_size=208, range_size=208, mode=arm
; class-group: std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >
; alias: _ZNSt6vectorISt4pairIPKN3rnd4ExitENS1_8ListElemEESaIS6_EE7reserveEj
; demangled: std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >::reserve(unsigned int)
; decoder-mode: arm
0048e330  70 40 2d e9                                      push {r4, r5, r6, lr}
0048e334  00 40 a0 e1                                      mov r4, r0
0048e338  00 20 90 e5                                      ldr r2, [r0]
0048e33c  08 00 90 e5                                      ldr r0, [r0, #8]
0048e340  3d 3f 0c e3                                      movw r3, #0xcf3d
0048e344  f3 3c 43 e3                                      movt r3, #0x3cf3
0048e348  00 00 62 e0                                      rsb r0, r2, r0
0048e34c  40 01 a0 e1                                      asr r0, r0, #2
0048e350  93 00 03 e0                                      mul r3, r3, r0
0048e354  08 d0 4d e2                                      sub sp, sp, #8
0048e358  03 00 51 e1                                      cmp r1, r3
0048e35c  04 10 8d e5                                      str r1, [sp, #4]
0048e360  18 00 00 9a                                      bls #0x48e3c8
0048e364  c3 30 03 e3                                      movw r3, #0x30c3
0048e368  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0048e36c  03 00 51 e1                                      cmp r1, r3
0048e370  16 00 00 8a                                      bhi #0x48e3d0
0048e374  04 30 94 e5                                      ldr r3, [r4, #4]
0048e378  3d 1f 0c e3                                      movw r1, #0xcf3d
0048e37c  f3 1c 43 e3                                      movt r1, #0x3cf3
0048e380  03 50 62 e0                                      rsb r5, r2, r3
0048e384  45 51 a0 e1                                      asr r5, r5, #2
0048e388  00 00 52 e3                                      cmp r2, #0
0048e38c  91 05 05 e0                                      mul r5, r1, r5
0048e390  13 00 00 0a                                      beq #0x48e3e4
0048e394  04 00 a0 e1                                      mov r0, r4
0048e398  04 10 8d e2                                      add r1, sp, #4
0048e39c  c7 ff ff eb                                      bl #0x48e2c0
0048e3a0  00 60 a0 e1                                      mov r6, r0
0048e3a4  04 00 a0 e1                                      mov r0, r4
0048e3a8  70 fd ff eb                                      bl #0x48d970
0048e3ac  04 20 9d e5                                      ldr r2, [sp, #4]
0048e3b0  54 30 a0 e3                                      mov r3, #0x54
0048e3b4  93 65 25 e0                                      mla r5, r3, r5, r6
0048e3b8  93 62 23 e0                                      mla r3, r3, r2, r6
0048e3bc  04 50 84 e5                                      str r5, [r4, #4]
0048e3c0  08 30 84 e5                                      str r3, [r4, #8]
0048e3c4  00 60 84 e5                                      str r6, [r4]
0048e3c8  08 d0 8d e2                                      add sp, sp, #8
0048e3cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048e3d0  24 00 9f e5                                      ldr r0, [pc, #0x24]
0048e3d4  00 00 8f e0                                      add r0, pc, r0
0048e3d8  98 ea 09 eb                                      bl #0x708e40
0048e3dc  00 20 94 e5                                      ldr r2, [r4]
0048e3e0  e3 ff ff ea                                      b #0x48e374
0048e3e4  08 20 8d e2                                      add r2, sp, #8
0048e3e8  04 10 32 e5                                      ldr r1, [r2, #-4]!
0048e3ec  08 00 84 e2                                      add r0, r4, #8
0048e3f0  06 f9 ff eb                                      bl #0x48c810
0048e3f4  00 60 a0 e1                                      mov r6, r0
0048e3f8  eb ff ff ea                                      b #0x48e3ac
; mapping-symbol data/literal pool
0048e3fc  94 00 43 00                                      .byte 0x94, 0x00, 0x43, 0x00

; FUNCTION 0x0048e400, declared_size=192, range_size=192, mode=arm
; class-group: std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >
; alias: _ZNSt6vectorISt4pairIPKN3rnd4ExitENS1_8ListElemEESaIS6_EEC1ERKS8_
; demangled: std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >::vector(std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > > const&)
; decoder-mode: arm
0048e400  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0048e404  01 60 a0 e1                                      mov r6, r1
0048e408  00 30 96 e5                                      ldr r3, [r6]
0048e40c  04 10 91 e5                                      ldr r1, [r1, #4]
0048e410  3d 5f 0c e3                                      movw r5, #0xcf3d
0048e414  f3 5c 43 e3                                      movt r5, #0x3cf3
0048e418  01 10 63 e0                                      rsb r1, r3, r1
0048e41c  41 11 a0 e1                                      asr r1, r1, #2
0048e420  95 01 01 e0                                      mul r1, r5, r1
0048e424  0c d0 4d e2                                      sub sp, sp, #0xc
0048e428  00 40 a0 e1                                      mov r4, r0
0048e42c  00 70 a0 e3                                      mov r7, #0
0048e430  08 20 8d e2                                      add r2, sp, #8
0048e434  04 10 22 e5                                      str r1, [r2, #-4]!
0048e438  00 70 84 e5                                      str r7, [r4]
0048e43c  04 70 84 e5                                      str r7, [r4, #4]
0048e440  08 70 a0 e5                                      str r7, [r0, #8]!
0048e444  f1 f8 ff eb                                      bl #0x48c810
0048e448  04 30 9d e5                                      ldr r3, [sp, #4]
0048e44c  54 20 a0 e3                                      mov r2, #0x54
0048e450  00 00 84 e5                                      str r0, [r4]
0048e454  92 03 23 e0                                      mla r3, r2, r3, r0
0048e458  09 00 84 e9                                      stmib r4, {r0, r3}
0048e45c  04 30 96 e5                                      ldr r3, [r6, #4]
0048e460  00 a0 96 e5                                      ldr sl, [r6]
0048e464  00 80 a0 e1                                      mov r8, r0
0048e468  03 30 6a e0                                      rsb r3, sl, r3
0048e46c  43 31 a0 e1                                      asr r3, r3, #2
0048e470  95 03 05 e0                                      mul r5, r5, r3
0048e474  07 00 55 e1                                      cmp r5, r7
0048e478  0c 00 00 da                                      ble #0x48e4b0
0048e47c  05 60 a0 e1                                      mov r6, r5
0048e480  07 30 9a e7                                      ldr r3, [sl, r7]
0048e484  07 10 8a e0                                      add r1, sl, r7
0048e488  07 00 88 e0                                      add r0, r8, r7
0048e48c  07 30 88 e7                                      str r3, [r8, r7]
0048e490  04 00 80 e2                                      add r0, r0, #4
0048e494  04 10 81 e2                                      add r1, r1, #4
0048e498  78 ff ff eb                                      bl #0x48e280
0048e49c  01 60 56 e2                                      subs r6, r6, #1
0048e4a0  54 70 87 e2                                      add r7, r7, #0x54
0048e4a4  f5 ff ff 1a                                      bne #0x48e480
0048e4a8  54 30 a0 e3                                      mov r3, #0x54
0048e4ac  93 85 28 e0                                      mla r8, r3, r5, r8
0048e4b0  04 80 84 e5                                      str r8, [r4, #4]
0048e4b4  04 00 a0 e1                                      mov r0, r4
0048e4b8  0c d0 8d e2                                      add sp, sp, #0xc
0048e4bc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x0048ef28, declared_size=308, range_size=308, mode=arm
; class-group: std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >
; alias: _ZNSt6vectorISt4pairIPKN3rnd4ExitENS1_8ListElemEESaIS6_EE9push_backERKS6_
; demangled: std::vector<std::pair<rnd::Exit const*, rnd::ListElem>, std::allocator<std::pair<rnd::Exit const*, rnd::ListElem> > >::push_back(std::pair<rnd::Exit const*, rnd::ListElem> const&)
; decoder-mode: arm
0048ef28  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0048ef2c  00 40 a0 e1                                      mov r4, r0
0048ef30  08 50 94 e5                                      ldr r5, [r4, #8]
0048ef34  04 00 90 e5                                      ldr r0, [r0, #4]
0048ef38  08 d0 4d e2                                      sub sp, sp, #8
0048ef3c  01 60 a0 e1                                      mov r6, r1
0048ef40  05 00 50 e1                                      cmp r0, r5
0048ef44  07 00 00 0a                                      beq #0x48ef68
0048ef48  04 30 91 e4                                      ldr r3, [r1], #4
0048ef4c  04 30 80 e4                                      str r3, [r0], #4
0048ef50  ca fc ff eb                                      bl #0x48e280
0048ef54  04 30 94 e5                                      ldr r3, [r4, #4]
0048ef58  54 30 83 e2                                      add r3, r3, #0x54
0048ef5c  04 30 84 e5                                      str r3, [r4, #4]
0048ef60  08 d0 8d e2                                      add sp, sp, #8
0048ef64  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0048ef68  00 20 94 e5                                      ldr r2, [r4]
0048ef6c  3d 3f 0c e3                                      movw r3, #0xcf3d
0048ef70  f3 3c 43 e3                                      movt r3, #0x3cf3
0048ef74  05 20 62 e0                                      rsb r2, r2, r5
0048ef78  42 21 a0 e1                                      asr r2, r2, #2
0048ef7c  93 02 02 e0                                      mul r2, r3, r2
0048ef80  c3 30 03 e3                                      movw r3, #0x30c3
0048ef84  01 00 52 e3                                      cmp r2, #1
0048ef88  02 10 82 20                                      addhs r1, r2, r2
0048ef8c  01 10 82 32                                      addlo r1, r2, #1
0048ef90  03 36 83 e1                                      orr r3, r3, r3, lsl #12
0048ef94  03 00 51 e1                                      cmp r1, r3
0048ef98  2c 00 00 9a                                      bls #0x48f050
0048ef9c  c3 10 03 e3                                      movw r1, #0x30c3
0048efa0  01 16 81 e1                                      orr r1, r1, r1, lsl #12
0048efa4  08 20 8d e2                                      add r2, sp, #8
0048efa8  04 10 22 e5                                      str r1, [r2, #-4]!
0048efac  08 00 84 e2                                      add r0, r4, #8
0048efb0  16 f6 ff eb                                      bl #0x48c810
0048efb4  00 90 94 e5                                      ldr sb, [r4]
0048efb8  3d 3f 0c e3                                      movw r3, #0xcf3d
0048efbc  f3 3c 43 e3                                      movt r3, #0x3cf3
0048efc0  05 50 69 e0                                      rsb r5, sb, r5
0048efc4  45 51 a0 e1                                      asr r5, r5, #2
0048efc8  93 05 05 e0                                      mul r5, r3, r5
0048efcc  00 a0 a0 e1                                      mov sl, r0
0048efd0  00 00 55 e3                                      cmp r5, #0
0048efd4  00 50 a0 d1                                      movle r5, r0
0048efd8  0d 00 00 da                                      ble #0x48f014
0048efdc  05 80 a0 e1                                      mov r8, r5
0048efe0  00 70 a0 e3                                      mov r7, #0
0048efe4  07 30 99 e7                                      ldr r3, [sb, r7]
0048efe8  07 10 89 e0                                      add r1, sb, r7
0048efec  07 00 8a e0                                      add r0, sl, r7
0048eff0  07 30 8a e7                                      str r3, [sl, r7]
0048eff4  04 00 80 e2                                      add r0, r0, #4
0048eff8  04 10 81 e2                                      add r1, r1, #4
0048effc  9f fc ff eb                                      bl #0x48e280
0048f000  01 80 58 e2                                      subs r8, r8, #1
0048f004  54 70 87 e2                                      add r7, r7, #0x54
0048f008  f5 ff ff 1a                                      bne #0x48efe4
0048f00c  54 30 a0 e3                                      mov r3, #0x54
0048f010  93 a5 25 e0                                      mla r5, r3, r5, sl
0048f014  06 10 a0 e1                                      mov r1, r6
0048f018  04 30 91 e4                                      ldr r3, [r1], #4
0048f01c  05 00 a0 e1                                      mov r0, r5
0048f020  54 50 85 e2                                      add r5, r5, #0x54
0048f024  04 30 80 e4                                      str r3, [r0], #4
0048f028  94 fc ff eb                                      bl #0x48e280
0048f02c  04 00 a0 e1                                      mov r0, r4
0048f030  11 fa ff eb                                      bl #0x48d87c
0048f034  04 30 9d e5                                      ldr r3, [sp, #4]
0048f038  54 20 a0 e3                                      mov r2, #0x54
0048f03c  00 a0 84 e5                                      str sl, [r4]
0048f040  92 a3 23 e0                                      mla r3, r2, r3, sl
0048f044  04 50 84 e5                                      str r5, [r4, #4]
0048f048  08 30 84 e5                                      str r3, [r4, #8]
0048f04c  c3 ff ff ea                                      b #0x48ef60
0048f050  01 00 52 e1                                      cmp r2, r1
0048f054  d2 ff ff 9a                                      bls #0x48efa4
0048f058  cf ff ff ea                                      b #0x48ef9c
