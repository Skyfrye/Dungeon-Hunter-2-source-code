; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d24fc, declared_size=8, range_size=8, mode=arm
; class-group: CharAI::GroupInfo
; alias: _ZN6CharAI9GroupInfo8CanSpawnEP9Character
; demangled: CharAI::GroupInfo::CanSpawn(Character*)
; decoder-mode: arm
003d24fc  00 00 a0 e3                                      mov r0, #0
003d2500  1e ff 2f e1                                      bx lr

; FUNCTION 0x003d2628, declared_size=420, range_size=420, mode=arm
; class-group: CharAI::GroupInfo
; alias: _ZN6CharAI9GroupInfo6OnDiedEP9CharacterP10GameObject
; demangled: CharAI::GroupInfo::OnDied(Character*, GameObject*)
; decoder-mode: arm
003d2628  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d262c  00 34 91 e5                                      ldr r3, [r1, #0x400]
003d2630  00 50 a0 e1                                      mov r5, r0
003d2634  02 60 a0 e1                                      mov r6, r2
003d2638  02 00 53 e3                                      cmp r3, #2
003d263c  04 00 00 0a                                      beq #0x3d2654
003d2640  01 00 53 e3                                      cmp r3, #1
003d2644  25 00 00 0a                                      beq #0x3d26e0
003d2648  03 00 53 e3                                      cmp r3, #3
003d264c  41 00 00 0a                                      beq #0x3d2758
003d2650  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d2654  0c 30 90 e5                                      ldr r3, [r0, #0xc]
003d2658  10 70 90 e5                                      ldr r7, [r0, #0x10]
003d265c  01 20 a0 e3                                      mov r2, #1
003d2660  28 20 c0 e5                                      strb r2, [r0, #0x28]
003d2664  07 70 63 e0                                      rsb r7, r3, r7
003d2668  47 71 b0 e1                                      asrs r7, r7, #2
003d266c  0a 00 00 0a                                      beq #0x3d269c
003d2670  00 40 a0 e3                                      mov r4, #0
003d2674  00 00 00 ea                                      b #0x3d267c
003d2678  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003d267c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
003d2680  06 10 a0 e1                                      mov r1, r6
003d2684  01 40 84 e2                                      add r4, r4, #1
003d2688  78 03 93 e5                                      ldr r0, [r3, #0x378]
003d268c  00 20 a0 e3                                      mov r2, #0
003d2690  1d cc 00 eb                                      bl #0x40570c
003d2694  07 00 54 e1                                      cmp r4, r7
003d2698  f6 ff ff 1a                                      bne #0x3d2678
003d269c  18 30 95 e5                                      ldr r3, [r5, #0x18]
003d26a0  1c 70 95 e5                                      ldr r7, [r5, #0x1c]
003d26a4  07 70 63 e0                                      rsb r7, r3, r7
003d26a8  47 71 b0 e1                                      asrs r7, r7, #2
003d26ac  e7 ff ff 0a                                      beq #0x3d2650
003d26b0  00 40 a0 e3                                      mov r4, #0
003d26b4  00 00 00 ea                                      b #0x3d26bc
003d26b8  18 30 95 e5                                      ldr r3, [r5, #0x18]
003d26bc  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
003d26c0  06 10 a0 e1                                      mov r1, r6
003d26c4  01 40 84 e2                                      add r4, r4, #1
003d26c8  78 03 93 e5                                      ldr r0, [r3, #0x378]
003d26cc  00 20 a0 e3                                      mov r2, #0
003d26d0  0d cc 00 eb                                      bl #0x40570c
003d26d4  07 00 54 e1                                      cmp r4, r7
003d26d8  f6 ff ff 1a                                      bne #0x3d26b8
003d26dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d26e0  28 40 d0 e5                                      ldrb r4, [r0, #0x28]
003d26e4  00 00 54 e3                                      cmp r4, #0
003d26e8  d8 ff ff 1a                                      bne #0x3d2650
003d26ec  10 70 90 e5                                      ldr r7, [r0, #0x10]
003d26f0  0c 20 90 e5                                      ldr r2, [r0, #0xc]
003d26f4  28 30 c0 e5                                      strb r3, [r0, #0x28]
003d26f8  07 70 62 e0                                      rsb r7, r2, r7
003d26fc  47 71 b0 e1                                      asrs r7, r7, #2
003d2700  d2 ff ff 0a                                      beq #0x3d2650
003d2704  03 60 a0 e1                                      mov r6, r3
003d2708  03 00 00 ea                                      b #0x3d271c
003d270c  01 40 84 e2                                      add r4, r4, #1
003d2710  07 00 54 e1                                      cmp r4, r7
003d2714  28 60 c5 e5                                      strb r6, [r5, #0x28]
003d2718  0d 00 00 0a                                      beq #0x3d2754
003d271c  00 00 56 e3                                      cmp r6, #0
003d2720  f9 ff ff 0a                                      beq #0x3d270c
003d2724  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003d2728  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
003d272c  01 40 84 e2                                      add r4, r4, #1
003d2730  03 00 a0 e1                                      mov r0, r3
003d2734  00 30 93 e5                                      ldr r3, [r3]
003d2738  0f e0 a0 e1                                      mov lr, pc
003d273c  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003d2740  00 00 50 e3                                      cmp r0, #0
003d2744  00 60 a0 03                                      moveq r6, #0
003d2748  07 00 54 e1                                      cmp r4, r7
003d274c  28 60 c5 e5                                      strb r6, [r5, #0x28]
003d2750  f1 ff ff 1a                                      bne #0x3d271c
003d2754  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d2758  24 40 90 e5                                      ldr r4, [r0, #0x24]
003d275c  00 00 54 e3                                      cmp r4, #0
003d2760  ba ff ff 1a                                      bne #0x3d2650
003d2764  1c 70 90 e5                                      ldr r7, [r0, #0x1c]
003d2768  18 30 90 e5                                      ldr r3, [r0, #0x18]
003d276c  07 70 63 e0                                      rsb r7, r3, r7
003d2770  47 71 b0 e1                                      asrs r7, r7, #2
003d2774  01 60 a0 03                                      moveq r6, #1
003d2778  11 00 00 0a                                      beq #0x3d27c4
003d277c  01 60 a0 e3                                      mov r6, #1
003d2780  02 00 00 ea                                      b #0x3d2790
003d2784  01 40 84 e2                                      add r4, r4, #1
003d2788  07 00 54 e1                                      cmp r4, r7
003d278c  0c 00 00 0a                                      beq #0x3d27c4
003d2790  00 00 56 e3                                      cmp r6, #0
003d2794  fa ff ff 0a                                      beq #0x3d2784
003d2798  18 30 95 e5                                      ldr r3, [r5, #0x18]
003d279c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
003d27a0  01 40 84 e2                                      add r4, r4, #1
003d27a4  03 00 a0 e1                                      mov r0, r3
003d27a8  00 30 93 e5                                      ldr r3, [r3]
003d27ac  0f e0 a0 e1                                      mov lr, pc
003d27b0  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003d27b4  00 00 50 e3                                      cmp r0, #0
003d27b8  00 60 a0 03                                      moveq r6, #0
003d27bc  07 00 54 e1                                      cmp r4, r7
003d27c0  f2 ff ff 1a                                      bne #0x3d2790
003d27c4  24 60 85 e5                                      str r6, [r5, #0x24]
003d27c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003d27cc, declared_size=616, range_size=616, mode=arm
; class-group: CharAI::GroupInfo
; alias: _ZN6CharAI9GroupInfo14OnEnemySpottedEP9CharacterS2_
; demangled: CharAI::GroupInfo::OnEnemySpotted(Character*, Character*)
; decoder-mode: arm
003d27cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d27d0  29 30 d0 e5                                      ldrb r3, [r0, #0x29]
003d27d4  00 50 a0 e1                                      mov r5, r0
003d27d8  01 70 a0 e1                                      mov r7, r1
003d27dc  00 00 53 e3                                      cmp r3, #0
003d27e0  0b 00 00 1a                                      bne #0x3d2814
003d27e4  00 34 91 e5                                      ldr r3, [r1, #0x400]
003d27e8  03 00 53 e3                                      cmp r3, #3
003d27ec  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
003d27f0  07 00 00 ea                                      b #0x3d2814
003d27f4  67 00 00 ea                                      b #0x3d2998
003d27f8  08 00 00 ea                                      b #0x3d2820
003d27fc  30 00 00 ea                                      b #0x3d28c4
003d2800  48 00 00 ea                                      b #0x3d2928
003d2804  00 30 a0 e3                                      mov r3, #0
003d2808  24 30 85 e5                                      str r3, [r5, #0x24]
003d280c  01 30 a0 e3                                      mov r3, #1
003d2810  29 30 c5 e5                                      strb r3, [r5, #0x29]
003d2814  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d2818  01 30 a0 e3                                      mov r3, #1
003d281c  29 30 c5 e5                                      strb r3, [r5, #0x29]
003d2820  18 30 95 e5                                      ldr r3, [r5, #0x18]
003d2824  1c 60 95 e5                                      ldr r6, [r5, #0x1c]
003d2828  06 60 63 e0                                      rsb r6, r3, r6
003d282c  46 61 b0 e1                                      asrs r6, r6, #2
003d2830  15 00 00 0a                                      beq #0x3d288c
003d2834  00 40 a0 e3                                      mov r4, #0
003d2838  03 00 00 ea                                      b #0x3d284c
003d283c  01 40 84 e2                                      add r4, r4, #1
003d2840  06 00 54 e1                                      cmp r4, r6
003d2844  10 00 00 0a                                      beq #0x3d288c
003d2848  18 30 95 e5                                      ldr r3, [r5, #0x18]
003d284c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
003d2850  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d2854  0c 00 80 e2                                      add r0, r0, #0xc
003d2858  74 b6 ff eb                                      bl #0x3c0230
003d285c  00 00 50 e3                                      cmp r0, #0
003d2860  f5 ff ff 0a                                      beq #0x3d283c
003d2864  18 30 95 e5                                      ldr r3, [r5, #0x18]
003d2868  01 10 a0 e3                                      mov r1, #1
003d286c  00 20 a0 e3                                      mov r2, #0
003d2870  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
003d2874  01 40 84 e2                                      add r4, r4, #1
003d2878  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d287c  0c 00 80 e2                                      add r0, r0, #0xc
003d2880  ab bf ff eb                                      bl #0x3c2734
003d2884  06 00 54 e1                                      cmp r4, r6
003d2888  ee ff ff 1a                                      bne #0x3d2848
003d288c  4f 7e 87 e2                                      add r7, r7, #0x4f0
003d2890  0c 70 87 e2                                      add r7, r7, #0xc
003d2894  07 00 a0 e1                                      mov r0, r7
003d2898  64 b6 ff eb                                      bl #0x3c0230
003d289c  00 00 50 e3                                      cmp r0, #0
003d28a0  5e 00 00 1a                                      bne #0x3d2a20
003d28a4  04 20 95 e5                                      ldr r2, [r5, #4]
003d28a8  00 30 95 e5                                      ldr r3, [r5]
003d28ac  02 30 63 e0                                      rsb r3, r3, r2
003d28b0  23 31 b0 e1                                      lsrs r3, r3, #2
003d28b4  d6 ff ff 1a                                      bne #0x3d2814
003d28b8  01 30 a0 e3                                      mov r3, #1
003d28bc  29 30 c5 e5                                      strb r3, [r5, #0x29]
003d28c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d28c4  0c 30 90 e5                                      ldr r3, [r0, #0xc]
003d28c8  10 60 90 e5                                      ldr r6, [r0, #0x10]
003d28cc  06 60 63 e0                                      rsb r6, r3, r6
003d28d0  46 61 b0 e1                                      asrs r6, r6, #2
003d28d4  cf ff ff 0a                                      beq #0x3d2818
003d28d8  00 40 a0 e3                                      mov r4, #0
003d28dc  03 00 00 ea                                      b #0x3d28f0
003d28e0  01 40 84 e2                                      add r4, r4, #1
003d28e4  06 00 54 e1                                      cmp r4, r6
003d28e8  ca ff ff 0a                                      beq #0x3d2818
003d28ec  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003d28f0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
003d28f4  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d28f8  0c 00 80 e2                                      add r0, r0, #0xc
003d28fc  4b b6 ff eb                                      bl #0x3c0230
003d2900  00 00 50 e3                                      cmp r0, #0
003d2904  f5 ff ff 0a                                      beq #0x3d28e0
003d2908  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003d290c  01 10 a0 e3                                      mov r1, #1
003d2910  00 20 a0 e3                                      mov r2, #0
003d2914  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
003d2918  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d291c  0c 00 80 e2                                      add r0, r0, #0xc
003d2920  83 bf ff eb                                      bl #0x3c2734
003d2924  ed ff ff ea                                      b #0x3d28e0
003d2928  24 30 90 e5                                      ldr r3, [r0, #0x24]
003d292c  01 00 73 e3                                      cmn r3, #1
003d2930  b7 ff ff 1a                                      bne #0x3d2814
003d2934  18 30 90 e5                                      ldr r3, [r0, #0x18]
003d2938  1c 60 90 e5                                      ldr r6, [r0, #0x1c]
003d293c  06 60 63 e0                                      rsb r6, r3, r6
003d2940  46 61 b0 e1                                      asrs r6, r6, #2
003d2944  ae ff ff 0a                                      beq #0x3d2804
003d2948  00 40 a0 e3                                      mov r4, #0
003d294c  03 00 00 ea                                      b #0x3d2960
003d2950  01 40 84 e2                                      add r4, r4, #1
003d2954  06 00 54 e1                                      cmp r4, r6
003d2958  a9 ff ff 0a                                      beq #0x3d2804
003d295c  18 30 95 e5                                      ldr r3, [r5, #0x18]
003d2960  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
003d2964  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d2968  0c 00 80 e2                                      add r0, r0, #0xc
003d296c  2f b6 ff eb                                      bl #0x3c0230
003d2970  00 00 50 e3                                      cmp r0, #0
003d2974  f5 ff ff 0a                                      beq #0x3d2950
003d2978  18 30 95 e5                                      ldr r3, [r5, #0x18]
003d297c  01 10 a0 e3                                      mov r1, #1
003d2980  00 20 a0 e3                                      mov r2, #0
003d2984  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
003d2988  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d298c  0c 00 80 e2                                      add r0, r0, #0xc
003d2990  67 bf ff eb                                      bl #0x3c2734
003d2994  ed ff ff ea                                      b #0x3d2950
003d2998  04 20 90 e5                                      ldr r2, [r0, #4]
003d299c  00 30 90 e5                                      ldr r3, [r0]
003d29a0  02 30 63 e0                                      rsb r3, r3, r2
003d29a4  23 31 b0 e1                                      lsrs r3, r3, #2
003d29a8  99 ff ff 1a                                      bne #0x3d2814
003d29ac  10 40 90 e5                                      ldr r4, [r0, #0x10]
003d29b0  0c 30 90 e5                                      ldr r3, [r0, #0xc]
003d29b4  04 40 63 e0                                      rsb r4, r3, r4
003d29b8  44 41 b0 e1                                      asrs r4, r4, #2
003d29bc  94 ff ff 1a                                      bne #0x3d2814
003d29c0  18 30 90 e5                                      ldr r3, [r0, #0x18]
003d29c4  1c 60 90 e5                                      ldr r6, [r0, #0x1c]
003d29c8  06 60 63 e0                                      rsb r6, r3, r6
003d29cc  46 61 b0 e1                                      asrs r6, r6, #2
003d29d0  04 00 00 1a                                      bne #0x3d29e8
003d29d4  b7 ff ff ea                                      b #0x3d28b8
003d29d8  01 40 84 e2                                      add r4, r4, #1
003d29dc  06 00 54 e1                                      cmp r4, r6
003d29e0  b4 ff ff 0a                                      beq #0x3d28b8
003d29e4  18 30 95 e5                                      ldr r3, [r5, #0x18]
003d29e8  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
003d29ec  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d29f0  0c 00 80 e2                                      add r0, r0, #0xc
003d29f4  0d b6 ff eb                                      bl #0x3c0230
003d29f8  00 00 50 e3                                      cmp r0, #0
003d29fc  f5 ff ff 0a                                      beq #0x3d29d8
003d2a00  18 30 95 e5                                      ldr r3, [r5, #0x18]
003d2a04  01 10 a0 e3                                      mov r1, #1
003d2a08  00 20 a0 e3                                      mov r2, #0
003d2a0c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
003d2a10  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d2a14  0c 00 80 e2                                      add r0, r0, #0xc
003d2a18  45 bf ff eb                                      bl #0x3c2734
003d2a1c  ed ff ff ea                                      b #0x3d29d8
003d2a20  07 00 a0 e1                                      mov r0, r7
003d2a24  01 10 a0 e3                                      mov r1, #1
003d2a28  00 20 a0 e3                                      mov r2, #0
003d2a2c  40 bf ff eb                                      bl #0x3c2734
003d2a30  9b ff ff ea                                      b #0x3d28a4

; FUNCTION 0x003d2a34, declared_size=180, range_size=180, mode=arm
; class-group: CharAI::GroupInfo
; alias: _ZN6CharAI9GroupInfo10CanRespawnEP9Character
; demangled: CharAI::GroupInfo::CanRespawn(Character*)
; decoder-mode: arm
003d2a34  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d2a38  00 34 91 e5                                      ldr r3, [r1, #0x400]
003d2a3c  00 50 a0 e1                                      mov r5, r0
003d2a40  00 00 53 e3                                      cmp r3, #0
003d2a44  0a 00 00 0a                                      beq #0x3d2a74
003d2a48  03 00 53 e3                                      cmp r3, #3
003d2a4c  01 00 00 0a                                      beq #0x3d2a58
003d2a50  00 00 a0 e3                                      mov r0, #0
003d2a54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d2a58  24 60 90 e5                                      ldr r6, [r0, #0x24]
003d2a5c  01 00 56 e3                                      cmp r6, #1
003d2a60  06 00 00 0a                                      beq #0x3d2a80
003d2a64  02 00 56 e3                                      cmp r6, #2
003d2a68  00 00 a0 13                                      movne r0, #0
003d2a6c  01 00 a0 03                                      moveq r0, #1
003d2a70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d2a74  28 00 d0 e5                                      ldrb r0, [r0, #0x28]
003d2a78  01 00 20 e2                                      eor r0, r0, #1
003d2a7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d2a80  18 30 90 e5                                      ldr r3, [r0, #0x18]
003d2a84  1c 70 90 e5                                      ldr r7, [r0, #0x1c]
003d2a88  07 70 63 e0                                      rsb r7, r3, r7
003d2a8c  47 71 b0 e1                                      asrs r7, r7, #2
003d2a90  11 00 00 0a                                      beq #0x3d2adc
003d2a94  00 40 a0 e3                                      mov r4, #0
003d2a98  00 00 00 ea                                      b #0x3d2aa0
003d2a9c  18 30 95 e5                                      ldr r3, [r5, #0x18]
003d2aa0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
003d2aa4  01 40 84 e2                                      add r4, r4, #1
003d2aa8  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d2aac  0c 00 80 e2                                      add r0, r0, #0xc
003d2ab0  c2 b5 ff eb                                      bl #0x3c01c0
003d2ab4  00 00 50 e3                                      cmp r0, #0
003d2ab8  00 60 a0 03                                      moveq r6, #0
003d2abc  07 00 54 e1                                      cmp r4, r7
003d2ac0  f5 ff ff 1a                                      bne #0x3d2a9c
003d2ac4  00 00 56 e3                                      cmp r6, #0
003d2ac8  06 00 a0 01                                      moveq r0, r6
003d2acc  01 30 a0 03                                      moveq r3, #1
003d2ad0  01 00 00 1a                                      bne #0x3d2adc
003d2ad4  24 30 85 e5                                      str r3, [r5, #0x24]
003d2ad8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d2adc  01 00 a0 e3                                      mov r0, #1
003d2ae0  02 30 a0 e3                                      mov r3, #2
003d2ae4  fa ff ff ea                                      b #0x3d2ad4

; FUNCTION 0x003d2cc0, declared_size=160, range_size=160, mode=arm
; class-group: CharAI::GroupInfo
; alias: _ZN6CharAI9GroupInfoD1Ev
; demangled: CharAI::GroupInfo::~GroupInfo()
; decoder-mode: arm
003d2cc0  10 40 2d e9                                      push {r4, lr}
003d2cc4  00 40 a0 e1                                      mov r4, r0
003d2cc8  18 00 90 e5                                      ldr r0, [r0, #0x18]
003d2ccc  18 30 84 e2                                      add r3, r4, #0x18
003d2cd0  00 00 50 e3                                      cmp r0, #0
003d2cd4  05 00 00 0a                                      beq #0x3d2cf0
003d2cd8  08 10 93 e5                                      ldr r1, [r3, #8]
003d2cdc  01 10 60 e0                                      rsb r1, r0, r1
003d2ce0  03 10 c1 e3                                      bic r1, r1, #3
003d2ce4  80 00 51 e3                                      cmp r1, #0x80
003d2ce8  15 00 00 8a                                      bhi #0x3d2d44
003d2cec  83 d8 0c eb                                      bl #0x708f00
003d2cf0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
003d2cf4  0c 30 84 e2                                      add r3, r4, #0xc
003d2cf8  00 00 50 e3                                      cmp r0, #0
003d2cfc  05 00 00 0a                                      beq #0x3d2d18
003d2d00  08 10 93 e5                                      ldr r1, [r3, #8]
003d2d04  01 10 60 e0                                      rsb r1, r0, r1
003d2d08  03 10 c1 e3                                      bic r1, r1, #3
003d2d0c  80 00 51 e3                                      cmp r1, #0x80
003d2d10  10 00 00 8a                                      bhi #0x3d2d58
003d2d14  79 d8 0c eb                                      bl #0x708f00
003d2d18  00 00 94 e5                                      ldr r0, [r4]
003d2d1c  00 00 50 e3                                      cmp r0, #0
003d2d20  05 00 00 0a                                      beq #0x3d2d3c
003d2d24  08 10 94 e5                                      ldr r1, [r4, #8]
003d2d28  01 10 60 e0                                      rsb r1, r0, r1
003d2d2c  03 10 c1 e3                                      bic r1, r1, #3
003d2d30  80 00 51 e3                                      cmp r1, #0x80
003d2d34  04 00 00 8a                                      bhi #0x3d2d4c
003d2d38  70 d8 0c eb                                      bl #0x708f00
003d2d3c  04 00 a0 e1                                      mov r0, r4
003d2d40  10 80 bd e8                                      pop {r4, pc}
003d2d44  bd f5 fc eb                                      bl #0x310440
003d2d48  e8 ff ff ea                                      b #0x3d2cf0
003d2d4c  bb f5 fc eb                                      bl #0x310440
003d2d50  04 00 a0 e1                                      mov r0, r4
003d2d54  10 80 bd e8                                      pop {r4, pc}
003d2d58  b8 f5 fc eb                                      bl #0x310440
003d2d5c  ed ff ff ea                                      b #0x3d2d18

; FUNCTION 0x003d2de0, declared_size=72, range_size=72, mode=arm
; class-group: CharAI::GroupInfo
; alias: _ZN6CharAI9GroupInfoC1ERKS0_
; demangled: CharAI::GroupInfo::GroupInfo(CharAI::GroupInfo const&)
; decoder-mode: arm
003d2de0  70 40 2d e9                                      push {r4, r5, r6, lr}
003d2de4  00 40 a0 e1                                      mov r4, r0
003d2de8  01 50 a0 e1                                      mov r5, r1
003d2dec  db ff ff eb                                      bl #0x3d2d60
003d2df0  0c 10 85 e2                                      add r1, r5, #0xc
003d2df4  0c 00 84 e2                                      add r0, r4, #0xc
003d2df8  d8 ff ff eb                                      bl #0x3d2d60
003d2dfc  18 00 84 e2                                      add r0, r4, #0x18
003d2e00  18 10 85 e2                                      add r1, r5, #0x18
003d2e04  d5 ff ff eb                                      bl #0x3d2d60
003d2e08  24 30 95 e5                                      ldr r3, [r5, #0x24]
003d2e0c  04 00 a0 e1                                      mov r0, r4
003d2e10  24 30 84 e5                                      str r3, [r4, #0x24]
003d2e14  28 30 d5 e5                                      ldrb r3, [r5, #0x28]
003d2e18  28 30 c4 e5                                      strb r3, [r4, #0x28]
003d2e1c  29 30 d5 e5                                      ldrb r3, [r5, #0x29]
003d2e20  29 30 c4 e5                                      strb r3, [r4, #0x29]
003d2e24  70 80 bd e8                                      pop {r4, r5, r6, pc}
