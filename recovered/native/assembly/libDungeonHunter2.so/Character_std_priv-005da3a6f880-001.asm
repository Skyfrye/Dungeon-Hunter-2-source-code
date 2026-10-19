; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d2504, declared_size=292, range_size=292, mode=arm
; class-group: Character** std::priv
; alias: _ZNSt4priv6__findIPP9CharacterP6CharAIEET_S6_S6_RKT0_RKSt26random_access_iterator_tag
; demangled: Character** std::priv::__find<Character**, CharAI*>(Character**, Character**, CharAI* const&, std::random_access_iterator_tag const&)
; decoder-mode: arm
003d2504  01 c0 60 e0                                      rsb ip, r0, r1
003d2508  4c 32 a0 e1                                      asr r3, ip, #4
003d250c  00 00 53 e3                                      cmp r3, #0
003d2510  04 40 2d e5                                      str r4, [sp, #-4]!
003d2514  4c c1 a0 e1                                      asr ip, ip, #2
003d2518  1c 00 00 da                                      ble #0x3d2590
003d251c  00 c0 92 e5                                      ldr ip, [r2]
003d2520  11 00 00 ea                                      b #0x3d256c
003d2524  04 40 90 e5                                      ldr r4, [r0, #4]
003d2528  00 00 54 e3                                      cmp r4, #0
003d252c  f2 4f 84 12                                      addne r4, r4, #0x3c8
003d2530  0c 00 54 e1                                      cmp r4, ip
003d2534  1d 00 00 0a                                      beq #0x3d25b0
003d2538  08 40 90 e5                                      ldr r4, [r0, #8]
003d253c  00 00 54 e3                                      cmp r4, #0
003d2540  f2 4f 84 12                                      addne r4, r4, #0x3c8
003d2544  0c 00 54 e1                                      cmp r4, ip
003d2548  29 00 00 0a                                      beq #0x3d25f4
003d254c  0c 40 90 e5                                      ldr r4, [r0, #0xc]
003d2550  00 00 54 e3                                      cmp r4, #0
003d2554  f2 4f 84 12                                      addne r4, r4, #0x3c8
003d2558  0c 00 54 e1                                      cmp r4, ip
003d255c  26 00 00 0a                                      beq #0x3d25fc
003d2560  01 30 53 e2                                      subs r3, r3, #1
003d2564  10 00 80 e2                                      add r0, r0, #0x10
003d2568  06 00 00 0a                                      beq #0x3d2588
003d256c  00 40 90 e5                                      ldr r4, [r0]
003d2570  00 00 54 e3                                      cmp r4, #0
003d2574  f2 4f 84 12                                      addne r4, r4, #0x3c8
003d2578  0c 00 54 e1                                      cmp r4, ip
003d257c  e8 ff ff 1a                                      bne #0x3d2524
003d2580  10 00 bd e8                                      ldm sp!, {r4}
003d2584  1e ff 2f e1                                      bx lr
003d2588  01 c0 60 e0                                      rsb ip, r0, r1
003d258c  4c c1 a0 e1                                      asr ip, ip, #2
003d2590  02 00 5c e3                                      cmp ip, #2
003d2594  07 00 00 0a                                      beq #0x3d25b8
003d2598  03 00 5c e3                                      cmp ip, #3
003d259c  18 00 00 0a                                      beq #0x3d2604
003d25a0  01 00 5c e3                                      cmp ip, #1
003d25a4  10 00 00 0a                                      beq #0x3d25ec
003d25a8  01 00 a0 e1                                      mov r0, r1
003d25ac  f3 ff ff ea                                      b #0x3d2580
003d25b0  04 00 80 e2                                      add r0, r0, #4
003d25b4  f1 ff ff ea                                      b #0x3d2580
003d25b8  00 30 92 e5                                      ldr r3, [r2]
003d25bc  00 20 90 e5                                      ldr r2, [r0]
003d25c0  00 00 52 e3                                      cmp r2, #0
003d25c4  f2 2f 82 12                                      addne r2, r2, #0x3c8
003d25c8  03 00 52 e1                                      cmp r2, r3
003d25cc  eb ff ff 0a                                      beq #0x3d2580
003d25d0  04 00 80 e2                                      add r0, r0, #4
003d25d4  00 20 90 e5                                      ldr r2, [r0]
003d25d8  00 00 52 e3                                      cmp r2, #0
003d25dc  f2 2f 82 12                                      addne r2, r2, #0x3c8
003d25e0  03 00 52 e1                                      cmp r2, r3
003d25e4  01 00 a0 11                                      movne r0, r1
003d25e8  e4 ff ff ea                                      b #0x3d2580
003d25ec  00 30 92 e5                                      ldr r3, [r2]
003d25f0  f7 ff ff ea                                      b #0x3d25d4
003d25f4  08 00 80 e2                                      add r0, r0, #8
003d25f8  e0 ff ff ea                                      b #0x3d2580
003d25fc  0c 00 80 e2                                      add r0, r0, #0xc
003d2600  de ff ff ea                                      b #0x3d2580
003d2604  00 30 90 e5                                      ldr r3, [r0]
003d2608  00 00 53 e3                                      cmp r3, #0
003d260c  03 c0 a0 01                                      moveq ip, r3
003d2610  f2 cf 83 12                                      addne ip, r3, #0x3c8
003d2614  00 30 92 e5                                      ldr r3, [r2]
003d2618  03 00 5c e1                                      cmp ip, r3
003d261c  d7 ff ff 0a                                      beq #0x3d2580
003d2620  04 00 80 e2                                      add r0, r0, #4
003d2624  e4 ff ff ea                                      b #0x3d25bc
