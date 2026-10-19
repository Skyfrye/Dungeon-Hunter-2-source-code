; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007e2478, declared_size=4, range_size=4, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhaseD2Ev
; demangled: b2BroadPhase::~b2BroadPhase()
; decoder-mode: arm
007e2478  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e247c, declared_size=4, range_size=4, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhaseD1Ev
; demangled: b2BroadPhase::~b2BroadPhase()
; decoder-mode: arm
007e247c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e2480, declared_size=172, range_size=172, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhase11TestOverlapEP7b2ProxyS1_
; demangled: b2BroadPhase::TestOverlap(b2Proxy*, b2Proxy*)
; decoder-mode: arm
007e2480  30 00 2d e9                                      push {r4, r5}
007e2484  b0 40 d1 e1                                      ldrh r4, [r1]
007e2488  b4 c0 d2 e1                                      ldrh ip, [r2, #4]
007e248c  06 30 a0 e3                                      mov r3, #6
007e2490  93 04 04 e0                                      mul r4, r3, r4
007e2494  93 0c 0c e0                                      mul ip, r3, ip
007e2498  05 58 80 e2                                      add r5, r0, #0x50000
007e249c  16 50 85 e2                                      add r5, r5, #0x16
007e24a0  b4 40 95 e1                                      ldrh r4, [r5, r4]
007e24a4  bc c0 95 e1                                      ldrh ip, [r5, ip]
007e24a8  0c 00 54 e1                                      cmp r4, ip
007e24ac  1c 00 00 8a                                      bhi #0x7e2524
007e24b0  b4 40 d1 e1                                      ldrh r4, [r1, #4]
007e24b4  b0 c0 d2 e1                                      ldrh ip, [r2]
007e24b8  93 04 04 e0                                      mul r4, r3, r4
007e24bc  93 0c 0c e0                                      mul ip, r3, ip
007e24c0  b4 40 95 e1                                      ldrh r4, [r5, r4]
007e24c4  bc c0 95 e1                                      ldrh ip, [r5, ip]
007e24c8  0c 00 54 e1                                      cmp r4, ip
007e24cc  14 00 00 3a                                      blo #0x7e2524
007e24d0  b2 40 d1 e1                                      ldrh r4, [r1, #2]
007e24d4  b6 50 d2 e1                                      ldrh r5, [r2, #6]
007e24d8  56 ca 80 e2                                      add ip, r0, #0x56000
007e24dc  93 04 04 e0                                      mul r4, r3, r4
007e24e0  93 05 05 e0                                      mul r5, r3, r5
007e24e4  16 c0 8c e2                                      add ip, ip, #0x16
007e24e8  b4 40 9c e1                                      ldrh r4, [ip, r4]
007e24ec  b5 00 9c e1                                      ldrh r0, [ip, r5]
007e24f0  00 00 54 e1                                      cmp r4, r0
007e24f4  0a 00 00 8a                                      bhi #0x7e2524
007e24f8  b6 00 d1 e1                                      ldrh r0, [r1, #6]
007e24fc  b2 10 d2 e1                                      ldrh r1, [r2, #2]
007e2500  93 00 02 e0                                      mul r2, r3, r0
007e2504  93 01 03 e0                                      mul r3, r3, r1
007e2508  b2 00 9c e1                                      ldrh r0, [ip, r2]
007e250c  b3 30 9c e1                                      ldrh r3, [ip, r3]
007e2510  03 00 50 e1                                      cmp r0, r3
007e2514  00 00 a0 33                                      movlo r0, #0
007e2518  01 00 a0 23                                      movhs r0, #1
007e251c  30 00 bd e8                                      pop {r4, r5}
007e2520  1e ff 2f e1                                      bx lr
007e2524  00 00 a0 e3                                      mov r0, #0
007e2528  fb ff ff ea                                      b #0x7e251c

; FUNCTION 0x007e252c, declared_size=140, range_size=140, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhase11TestOverlapERK13b2BoundValuesP7b2Proxy
; demangled: b2BroadPhase::TestOverlap(b2BoundValues const&, b2Proxy*)
; decoder-mode: arm
007e252c  30 00 2d e9                                      push {r4, r5}
007e2530  b4 c0 d2 e1                                      ldrh ip, [r2, #4]
007e2534  06 30 a0 e3                                      mov r3, #6
007e2538  05 48 80 e2                                      add r4, r0, #0x50000
007e253c  93 0c 0c e0                                      mul ip, r3, ip
007e2540  16 40 84 e2                                      add r4, r4, #0x16
007e2544  bc c0 94 e1                                      ldrh ip, [r4, ip]
007e2548  b0 50 d1 e1                                      ldrh r5, [r1]
007e254c  0c 00 55 e1                                      cmp r5, ip
007e2550  16 00 00 8a                                      bhi #0x7e25b0
007e2554  b0 c0 d2 e1                                      ldrh ip, [r2]
007e2558  b4 50 d1 e1                                      ldrh r5, [r1, #4]
007e255c  93 0c 0c e0                                      mul ip, r3, ip
007e2560  bc c0 94 e1                                      ldrh ip, [r4, ip]
007e2564  0c 00 55 e1                                      cmp r5, ip
007e2568  10 00 00 3a                                      blo #0x7e25b0
007e256c  b6 c0 d2 e1                                      ldrh ip, [r2, #6]
007e2570  56 0a 80 e2                                      add r0, r0, #0x56000
007e2574  16 00 80 e2                                      add r0, r0, #0x16
007e2578  93 0c 0c e0                                      mul ip, r3, ip
007e257c  b2 40 d1 e1                                      ldrh r4, [r1, #2]
007e2580  bc c0 90 e1                                      ldrh ip, [r0, ip]
007e2584  0c 00 54 e1                                      cmp r4, ip
007e2588  08 00 00 8a                                      bhi #0x7e25b0
007e258c  b2 c0 d2 e1                                      ldrh ip, [r2, #2]
007e2590  b6 20 d1 e1                                      ldrh r2, [r1, #6]
007e2594  93 0c 03 e0                                      mul r3, r3, ip
007e2598  b3 30 90 e1                                      ldrh r3, [r0, r3]
007e259c  03 00 52 e1                                      cmp r2, r3
007e25a0  00 00 a0 33                                      movlo r0, #0
007e25a4  01 00 a0 23                                      movhs r0, #1
007e25a8  30 00 bd e8                                      pop {r4, r5}
007e25ac  1e ff 2f e1                                      bx lr
007e25b0  00 00 a0 e3                                      mov r0, #0
007e25b4  fb ff ff ea                                      b #0x7e25a8

; FUNCTION 0x007e25b8, declared_size=436, range_size=436, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhase13ComputeBoundsEPtS0_RK6b2AABB
; demangled: b2BroadPhase::ComputeBounds(unsigned short*, unsigned short*, b2AABB const&)
; decoder-mode: arm
007e25b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e25bc  5d ca a0 e3                                      mov ip, #0x5d000
007e25c0  24 c0 8c e2                                      add ip, ip, #0x24
007e25c4  0c c0 90 e7                                      ldr ip, [r0, ip]
007e25c8  14 d0 4d e2                                      sub sp, sp, #0x14
007e25cc  00 40 a0 e1                                      mov r4, r0
007e25d0  04 c0 8d e5                                      str ip, [sp, #4]
007e25d4  00 50 93 e5                                      ldr r5, [r3]
007e25d8  08 10 8d e5                                      str r1, [sp, #8]
007e25dc  0c 10 a0 e1                                      mov r1, ip
007e25e0  05 00 a0 e1                                      mov r0, r5
007e25e4  0c 20 8d e5                                      str r2, [sp, #0xc]
007e25e8  03 60 a0 e1                                      mov r6, r3
007e25ec  46 b0 ec eb                                      bl #0x30e70c
007e25f0  5d 3a a0 e3                                      mov r3, #0x5d000
007e25f4  28 30 83 e2                                      add r3, r3, #0x28
007e25f8  03 b0 94 e7                                      ldr fp, [r4, r3]
007e25fc  04 80 96 e5                                      ldr r8, [r6, #4]
007e2600  00 00 50 e3                                      cmp r0, #0
007e2604  0b 10 a0 e1                                      mov r1, fp
007e2608  08 00 a0 e1                                      mov r0, r8
007e260c  04 50 9d 05                                      ldreq r5, [sp, #4]
007e2610  3d b0 ec eb                                      bl #0x30e70c
007e2614  5d 3a a0 e3                                      mov r3, #0x5d000
007e2618  1c 30 83 e2                                      add r3, r3, #0x1c
007e261c  03 90 94 e7                                      ldr sb, [r4, r3]
007e2620  00 00 50 e3                                      cmp r0, #0
007e2624  05 10 a0 e1                                      mov r1, r5
007e2628  09 00 a0 e1                                      mov r0, sb
007e262c  0b 80 a0 01                                      moveq r8, fp
007e2630  30 af ec eb                                      bl #0x30e2f8
007e2634  5d 3a a0 e3                                      mov r3, #0x5d000
007e2638  20 30 83 e2                                      add r3, r3, #0x20
007e263c  03 70 94 e7                                      ldr r7, [r4, r3]
007e2640  00 00 50 e3                                      cmp r0, #0
007e2644  08 10 a0 e1                                      mov r1, r8
007e2648  07 00 a0 e1                                      mov r0, r7
007e264c  09 50 a0 11                                      movne r5, sb
007e2650  28 af ec eb                                      bl #0x30e2f8
007e2654  08 a0 96 e5                                      ldr sl, [r6, #8]
007e2658  00 00 50 e3                                      cmp r0, #0
007e265c  04 00 9d e5                                      ldr r0, [sp, #4]
007e2660  0a 10 a0 e1                                      mov r1, sl
007e2664  07 80 a0 11                                      movne r8, r7
007e2668  22 af ec eb                                      bl #0x30e2f8
007e266c  0c 60 96 e5                                      ldr r6, [r6, #0xc]
007e2670  00 00 50 e3                                      cmp r0, #0
007e2674  0b 00 a0 e1                                      mov r0, fp
007e2678  06 10 a0 e1                                      mov r1, r6
007e267c  04 a0 9d 05                                      ldreq sl, [sp, #4]
007e2680  1c af ec eb                                      bl #0x30e2f8
007e2684  0a 10 a0 e1                                      mov r1, sl
007e2688  00 00 50 e3                                      cmp r0, #0
007e268c  09 00 a0 e1                                      mov r0, sb
007e2690  0b 60 a0 01                                      moveq r6, fp
007e2694  17 af ec eb                                      bl #0x30e2f8
007e2698  06 10 a0 e1                                      mov r1, r6
007e269c  00 00 50 e3                                      cmp r0, #0
007e26a0  07 00 a0 e1                                      mov r0, r7
007e26a4  09 a0 a0 11                                      movne sl, sb
007e26a8  12 af ec eb                                      bl #0x30e2f8
007e26ac  00 00 50 e3                                      cmp r0, #0
007e26b0  06 70 a0 01                                      moveq r7, r6
007e26b4  5d 6a a0 e3                                      mov r6, #0x5d000
007e26b8  2c 60 86 e2                                      add r6, r6, #0x2c
007e26bc  09 10 a0 e1                                      mov r1, sb
007e26c0  05 00 a0 e1                                      mov r0, r5
007e26c4  38 af ec eb                                      bl #0x30e3ac
007e26c8  06 10 94 e7                                      ldr r1, [r4, r6]
007e26cc  a6 b1 ec eb                                      bl #0x30ed6c
007e26d0  f2 6e 03 eb                                      bl #0x8be2a0
007e26d4  08 20 9d e5                                      ldr r2, [sp, #8]
007e26d8  01 00 c0 e3                                      bic r0, r0, #1
007e26dc  5d 3a a0 e3                                      mov r3, #0x5d000
007e26e0  b0 00 c2 e1                                      strh r0, [r2]
007e26e4  1c 30 83 e2                                      add r3, r3, #0x1c
007e26e8  03 10 94 e7                                      ldr r1, [r4, r3]
007e26ec  0a 00 a0 e1                                      mov r0, sl
007e26f0  2d af ec eb                                      bl #0x30e3ac
007e26f4  06 10 94 e7                                      ldr r1, [r4, r6]
007e26f8  9b b1 ec eb                                      bl #0x30ed6c
007e26fc  e7 6e 03 eb                                      bl #0x8be2a0
007e2700  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007e2704  01 00 80 e3                                      orr r0, r0, #1
007e2708  5d 6a a0 e3                                      mov r6, #0x5d000
007e270c  b0 00 c3 e1                                      strh r0, [r3]
007e2710  20 60 86 e2                                      add r6, r6, #0x20
007e2714  5d 5a a0 e3                                      mov r5, #0x5d000
007e2718  06 10 94 e7                                      ldr r1, [r4, r6]
007e271c  30 50 85 e2                                      add r5, r5, #0x30
007e2720  08 00 a0 e1                                      mov r0, r8
007e2724  20 af ec eb                                      bl #0x30e3ac
007e2728  05 10 94 e7                                      ldr r1, [r4, r5]
007e272c  8e b1 ec eb                                      bl #0x30ed6c
007e2730  da 6e 03 eb                                      bl #0x8be2a0
007e2734  08 20 9d e5                                      ldr r2, [sp, #8]
007e2738  01 00 c0 e3                                      bic r0, r0, #1
007e273c  b2 00 c2 e1                                      strh r0, [r2, #2]
007e2740  06 10 94 e7                                      ldr r1, [r4, r6]
007e2744  07 00 a0 e1                                      mov r0, r7
007e2748  17 af ec eb                                      bl #0x30e3ac
007e274c  05 10 94 e7                                      ldr r1, [r4, r5]
007e2750  85 b1 ec eb                                      bl #0x30ed6c
007e2754  d1 6e 03 eb                                      bl #0x8be2a0
007e2758  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007e275c  01 00 80 e3                                      orr r0, r0, #1
007e2760  b2 00 c3 e1                                      strh r0, [r3, #2]
007e2764  14 d0 8d e2                                      add sp, sp, #0x14
007e2768  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007e276c, declared_size=84, range_size=84, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhase18IncrementTimeStampEv
; demangled: b2BroadPhase::IncrementTimeStamp()
; decoder-mode: arm
007e276c  5d 3a a0 e3                                      mov r3, #0x5d000
007e2770  38 30 83 e2                                      add r3, r3, #0x38
007e2774  b3 20 90 e1                                      ldrh r2, [r0, r3]
007e2778  ff 1f 0f e3                                      movw r1, #0xffff
007e277c  01 00 52 e1                                      cmp r2, r1
007e2780  01 20 82 12                                      addne r2, r2, #1
007e2784  b3 20 80 11                                      strhne r2, [r0, r3]
007e2788  1e ff 2f 11                                      bxne lr
007e278c  00 30 a0 e3                                      mov r3, #0
007e2790  03 20 80 e0                                      add r2, r0, r3
007e2794  10 30 83 e2                                      add r3, r3, #0x10
007e2798  12 29 82 e2                                      add r2, r2, #0x48000
007e279c  00 10 a0 e3                                      mov r1, #0
007e27a0  02 09 53 e3                                      cmp r3, #0x8000
007e27a4  be 11 c2 e1                                      strh r1, [r2, #0x1e]
007e27a8  f8 ff ff 1a                                      bne #0x7e2790
007e27ac  5d 3a a0 e3                                      mov r3, #0x5d000
007e27b0  38 30 83 e2                                      add r3, r3, #0x38
007e27b4  01 20 a0 e3                                      mov r2, #1
007e27b8  b3 20 80 e1                                      strh r2, [r0, r3]
007e27bc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e27c0, declared_size=96, range_size=96, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhase21IncrementOverlapCountEi
; demangled: b2BroadPhase::IncrementOverlapCount(int)
; decoder-mode: arm
007e27c0  01 32 80 e0                                      add r3, r0, r1, lsl #4
007e27c4  12 39 83 e2                                      add r3, r3, #0x48000
007e27c8  5d 2a a0 e3                                      mov r2, #0x5d000
007e27cc  18 30 83 e2                                      add r3, r3, #0x18
007e27d0  38 20 82 e2                                      add r2, r2, #0x38
007e27d4  b2 20 90 e1                                      ldrh r2, [r0, r2]
007e27d8  b6 c0 d3 e1                                      ldrh ip, [r3, #6]
007e27dc  02 00 5c e1                                      cmp ip, r2
007e27e0  b6 20 c3 31                                      strhlo r2, [r3, #6]
007e27e4  01 20 a0 33                                      movlo r2, #1
007e27e8  b4 20 c3 31                                      strhlo r2, [r3, #4]
007e27ec  1e ff 2f 31                                      bxlo lr
007e27f0  5d 2a a0 e3                                      mov r2, #0x5d000
007e27f4  02 c0 a0 e3                                      mov ip, #2
007e27f8  b4 c0 c3 e1                                      strh ip, [r3, #4]
007e27fc  18 20 82 e2                                      add r2, r2, #0x18
007e2800  02 30 90 e7                                      ldr r3, [r0, r2]
007e2804  2e 3a 83 e2                                      add r3, r3, #0x2e000
007e2808  83 30 80 e0                                      add r3, r0, r3, lsl #1
007e280c  b6 11 c3 e1                                      strh r1, [r3, #0x16]
007e2810  02 30 90 e7                                      ldr r3, [r0, r2]
007e2814  01 30 83 e2                                      add r3, r3, #1
007e2818  02 30 80 e7                                      str r3, [r0, r2]
007e281c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e2820, declared_size=384, range_size=384, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhase5QueryEPiS0_ttP7b2Boundii
; demangled: b2BroadPhase::Query(int*, int*, unsigned short, unsigned short, b2Bound*, int, int)
; decoder-mode: arm
007e2820  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e2824  0c d0 4d e2                                      sub sp, sp, #0xc
007e2828  38 c0 9d e5                                      ldr ip, [sp, #0x38]
007e282c  04 10 8d e5                                      str r1, [sp, #4]
007e2830  00 40 a0 e1                                      mov r4, r0
007e2834  01 10 5c e2                                      subs r1, ip, #1
007e2838  00 60 a0 43                                      movmi r6, #0
007e283c  02 50 a0 e1                                      mov r5, r2
007e2840  34 a0 9d e5                                      ldr sl, [sp, #0x34]
007e2844  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
007e2848  b0 83 dd e1                                      ldrh r8, [sp, #0x30]
007e284c  06 70 a0 41                                      movmi r7, r6
007e2850  49 00 00 4a                                      bmi #0x7e297c
007e2854  01 00 a0 e1                                      mov r0, r1
007e2858  00 70 a0 e3                                      mov r7, #0
007e285c  06 60 a0 e3                                      mov r6, #6
007e2860  07 20 80 e0                                      add r2, r0, r7
007e2864  c2 20 a0 e1                                      asr r2, r2, #1
007e2868  96 02 0c e0                                      mul ip, r6, r2
007e286c  bc c0 9a e1                                      ldrh ip, [sl, ip]
007e2870  0c 00 53 e1                                      cmp r3, ip
007e2874  01 00 42 32                                      sublo r0, r2, #1
007e2878  01 00 00 3a                                      blo #0x7e2884
007e287c  43 00 00 9a                                      bls #0x7e2990
007e2880  01 70 82 e2                                      add r7, r2, #1
007e2884  00 00 57 e1                                      cmp r7, r0
007e2888  f4 ff ff da                                      ble #0x7e2860
007e288c  00 60 a0 e3                                      mov r6, #0
007e2890  06 00 a0 e3                                      mov r0, #6
007e2894  06 30 81 e0                                      add r3, r1, r6
007e2898  c3 30 a0 e1                                      asr r3, r3, #1
007e289c  90 03 02 e0                                      mul r2, r0, r3
007e28a0  b2 20 9a e1                                      ldrh r2, [sl, r2]
007e28a4  02 00 58 e1                                      cmp r8, r2
007e28a8  01 10 43 32                                      sublo r1, r3, #1
007e28ac  01 00 00 3a                                      blo #0x7e28b8
007e28b0  38 00 00 9a                                      bls #0x7e2998
007e28b4  01 60 83 e2                                      add r6, r3, #1
007e28b8  06 00 51 e1                                      cmp r1, r6
007e28bc  f4 ff ff aa                                      bge #0x7e2894
007e28c0  06 00 57 e1                                      cmp r7, r6
007e28c4  10 00 00 aa                                      bge #0x7e290c
007e28c8  06 80 a0 e3                                      mov r8, #6
007e28cc  98 a7 28 e0                                      mla r8, r8, r7, sl
007e28d0  07 b0 a0 e1                                      mov fp, r7
007e28d4  02 00 00 ea                                      b #0x7e28e4
007e28d8  06 00 5b e1                                      cmp fp, r6
007e28dc  06 80 88 e2                                      add r8, r8, #6
007e28e0  09 00 00 0a                                      beq #0x7e290c
007e28e4  b0 30 d8 e1                                      ldrh r3, [r8]
007e28e8  01 b0 8b e2                                      add fp, fp, #1
007e28ec  01 00 13 e3                                      tst r3, #1
007e28f0  f8 ff ff 1a                                      bne #0x7e28d8
007e28f4  b2 10 d8 e1                                      ldrh r1, [r8, #2]
007e28f8  04 00 a0 e1                                      mov r0, r4
007e28fc  af ff ff eb                                      bl #0x7e27c0
007e2900  06 00 5b e1                                      cmp fp, r6
007e2904  06 80 88 e2                                      add r8, r8, #6
007e2908  f5 ff ff 1a                                      bne #0x7e28e4
007e290c  00 00 57 e3                                      cmp r7, #0
007e2910  19 00 00 da                                      ble #0x7e297c
007e2914  01 30 47 e2                                      sub r3, r7, #1
007e2918  06 20 a0 e3                                      mov r2, #6
007e291c  92 a3 2a e0                                      mla sl, r2, r3, sl
007e2920  b4 80 da e1                                      ldrh r8, [sl, #4]
007e2924  00 00 58 e3                                      cmp r8, #0
007e2928  03 00 00 1a                                      bne #0x7e293c
007e292c  12 00 00 ea                                      b #0x7e297c
007e2930  00 00 58 e3                                      cmp r8, #0
007e2934  06 a0 4a e2                                      sub sl, sl, #6
007e2938  0f 00 00 0a                                      beq #0x7e297c
007e293c  b0 30 da e1                                      ldrh r3, [sl]
007e2940  01 00 13 e3                                      tst r3, #1
007e2944  f9 ff ff 1a                                      bne #0x7e2930
007e2948  b2 10 da e1                                      ldrh r1, [sl, #2]
007e294c  81 31 89 e0                                      add r3, sb, r1, lsl #3
007e2950  09 39 83 e2                                      add r3, r3, #0x24000
007e2954  83 30 84 e0                                      add r3, r4, r3, lsl #1
007e2958  b8 31 d3 e1                                      ldrh r3, [r3, #0x18]
007e295c  07 00 53 e1                                      cmp r3, r7
007e2960  f2 ff ff ba                                      blt #0x7e2930
007e2964  04 00 a0 e1                                      mov r0, r4
007e2968  01 80 48 e2                                      sub r8, r8, #1
007e296c  93 ff ff eb                                      bl #0x7e27c0
007e2970  00 00 58 e3                                      cmp r8, #0
007e2974  06 a0 4a e2                                      sub sl, sl, #6
007e2978  ef ff ff 1a                                      bne #0x7e293c
007e297c  04 30 9d e5                                      ldr r3, [sp, #4]
007e2980  00 70 83 e5                                      str r7, [r3]
007e2984  00 60 85 e5                                      str r6, [r5]
007e2988  0c d0 8d e2                                      add sp, sp, #0xc
007e298c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e2990  72 70 ff e6                                      uxth r7, r2
007e2994  bc ff ff ea                                      b #0x7e288c
007e2998  73 60 ff e6                                      uxth r6, r3
007e299c  c7 ff ff ea                                      b #0x7e28c0

; FUNCTION 0x007e29a0, declared_size=292, range_size=292, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhase5QueryERK6b2AABBPPvi
; demangled: b2BroadPhase::Query(b2AABB const&, void**, int)
; decoder-mode: arm
007e29a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e29a4  5d 7a a0 e3                                      mov r7, #0x5d000
007e29a8  24 d0 4d e2                                      sub sp, sp, #0x24
007e29ac  00 40 a0 e1                                      mov r4, r0
007e29b0  34 70 87 e2                                      add r7, r7, #0x34
007e29b4  03 50 a0 e1                                      mov r5, r3
007e29b8  02 60 a0 e1                                      mov r6, r2
007e29bc  01 30 a0 e1                                      mov r3, r1
007e29c0  18 20 8d e2                                      add r2, sp, #0x18
007e29c4  1c 10 8d e2                                      add r1, sp, #0x1c
007e29c8  fa fe ff eb                                      bl #0x7e25b8
007e29cc  07 b0 94 e7                                      ldr fp, [r4, r7]
007e29d0  b8 c1 dd e1                                      ldrh ip, [sp, #0x18]
007e29d4  14 80 8d e2                                      add r8, sp, #0x14
007e29d8  10 a0 8d e2                                      add sl, sp, #0x10
007e29dc  05 e8 84 e2                                      add lr, r4, #0x50000
007e29e0  16 e0 8e e2                                      add lr, lr, #0x16
007e29e4  00 90 a0 e3                                      mov sb, #0
007e29e8  bc 31 dd e1                                      ldrh r3, [sp, #0x1c]
007e29ec  04 00 a0 e1                                      mov r0, r4
007e29f0  08 10 a0 e1                                      mov r1, r8
007e29f4  0a 20 a0 e1                                      mov r2, sl
007e29f8  8b b0 a0 e1                                      lsl fp, fp, #1
007e29fc  00 50 8d e8                                      stm sp, {ip, lr}
007e2a00  0c 90 8d e5                                      str sb, [sp, #0xc]
007e2a04  08 b0 8d e5                                      str fp, [sp, #8]
007e2a08  84 ff ff eb                                      bl #0x7e2820
007e2a0c  07 c0 94 e7                                      ldr ip, [r4, r7]
007e2a10  ba e1 dd e1                                      ldrh lr, [sp, #0x1a]
007e2a14  56 7a 84 e2                                      add r7, r4, #0x56000
007e2a18  8c c0 a0 e1                                      lsl ip, ip, #1
007e2a1c  be 31 dd e1                                      ldrh r3, [sp, #0x1e]
007e2a20  08 10 a0 e1                                      mov r1, r8
007e2a24  08 c0 8d e5                                      str ip, [sp, #8]
007e2a28  16 70 87 e2                                      add r7, r7, #0x16
007e2a2c  01 c0 a0 e3                                      mov ip, #1
007e2a30  0a 20 a0 e1                                      mov r2, sl
007e2a34  04 00 a0 e1                                      mov r0, r4
007e2a38  00 e0 8d e5                                      str lr, [sp]
007e2a3c  04 70 8d e5                                      str r7, [sp, #4]
007e2a40  0c c0 8d e5                                      str ip, [sp, #0xc]
007e2a44  75 ff ff eb                                      bl #0x7e2820
007e2a48  5d 1a a0 e3                                      mov r1, #0x5d000
007e2a4c  18 10 81 e2                                      add r1, r1, #0x18
007e2a50  01 30 94 e7                                      ldr r3, [r4, r1]
007e2a54  09 00 55 e1                                      cmp r5, sb
007e2a58  09 00 53 c1                                      cmpgt r3, sb
007e2a5c  00 30 a0 d3                                      movle r3, #0
007e2a60  01 30 a0 c3                                      movgt r3, #1
007e2a64  03 90 a0 d1                                      movle sb, r3
007e2a68  0c 00 00 da                                      ble #0x7e2aa0
007e2a6c  17 29 84 e2                                      add r2, r4, #0x5c000
007e2a70  16 20 82 e2                                      add r2, r2, #0x16
007e2a74  b2 30 d2 e0                                      ldrh r3, [r2], #2
007e2a78  03 32 84 e0                                      add r3, r4, r3, lsl #4
007e2a7c  12 39 83 e2                                      add r3, r3, #0x48000
007e2a80  20 30 83 e2                                      add r3, r3, #0x20
007e2a84  00 30 93 e5                                      ldr r3, [r3]
007e2a88  09 31 86 e7                                      str r3, [r6, sb, lsl #2]
007e2a8c  01 30 94 e7                                      ldr r3, [r4, r1]
007e2a90  01 90 89 e2                                      add sb, sb, #1
007e2a94  09 00 55 e1                                      cmp r5, sb
007e2a98  09 00 53 c1                                      cmpgt r3, sb
007e2a9c  f4 ff ff ca                                      bgt #0x7e2a74
007e2aa0  5d 3a a0 e3                                      mov r3, #0x5d000
007e2aa4  18 30 83 e2                                      add r3, r3, #0x18
007e2aa8  00 20 a0 e3                                      mov r2, #0
007e2aac  04 00 a0 e1                                      mov r0, r4
007e2ab0  03 20 84 e7                                      str r2, [r4, r3]
007e2ab4  2c ff ff eb                                      bl #0x7e276c
007e2ab8  09 00 a0 e1                                      mov r0, sb
007e2abc  24 d0 8d e2                                      add sp, sp, #0x24
007e2ac0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007e2ac4, declared_size=4, range_size=4, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhase8ValidateEv
; demangled: b2BroadPhase::Validate()
; decoder-mode: arm
007e2ac4  1e ff 2f e1                                      bx lr

; FUNCTION 0x007e2ac8, declared_size=4, range_size=4, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhase6CommitEv
; demangled: b2BroadPhase::Commit()
; decoder-mode: arm
007e2ac8  04 06 00 ea                                      b #0x7e42e0

; FUNCTION 0x007e2acc, declared_size=648, range_size=648, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhase12DestroyProxyEi
; demangled: b2BroadPhase::DestroyProxy(int)
; decoder-mode: arm
007e2acc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e2ad0  5d 3a a0 e3                                      mov r3, #0x5d000
007e2ad4  34 30 83 e2                                      add r3, r3, #0x34
007e2ad8  03 30 90 e7                                      ldr r3, [r0, r3]
007e2adc  00 40 a0 e1                                      mov r4, r0
007e2ae0  12 bb 81 e2                                      add fp, r1, #0x4800
007e2ae4  60 02 9f e5                                      ldr r0, [pc, #0x260]
007e2ae8  34 d0 4d e2                                      sub sp, sp, #0x34
007e2aec  01 b0 8b e2                                      add fp, fp, #1
007e2af0  01 50 a0 e1                                      mov r5, r1
007e2af4  83 30 a0 e1                                      lsl r3, r3, #1
007e2af8  0b 92 84 e0                                      add sb, r4, fp, lsl #4
007e2afc  2c 10 8d e2                                      add r1, sp, #0x2c
007e2b00  28 20 8d e2                                      add r2, sp, #0x28
007e2b04  00 00 8f e0                                      add r0, pc, r0
007e2b08  14 30 8d e5                                      str r3, [sp, #0x14]
007e2b0c  04 90 89 e2                                      add sb, sb, #4
007e2b10  02 70 43 e2                                      sub r7, r3, #2
007e2b14  00 60 a0 e3                                      mov r6, #0
007e2b18  1c 10 8d e5                                      str r1, [sp, #0x1c]
007e2b1c  18 20 8d e5                                      str r2, [sp, #0x18]
007e2b20  06 80 a0 e3                                      mov r8, #6
007e2b24  20 50 8d e5                                      str r5, [sp, #0x20]
007e2b28  24 b0 8d e5                                      str fp, [sp, #0x24]
007e2b2c  10 00 8d e5                                      str r0, [sp, #0x10]
007e2b30  b0 20 d9 e1                                      ldrh r2, [sb]
007e2b34  06 3a a0 e3                                      mov r3, #0x6000
007e2b38  93 06 05 e0                                      mul r5, r3, r6
007e2b3c  2c 20 8d e5                                      str r2, [sp, #0x2c]
007e2b40  b4 00 d9 e1                                      ldrh r0, [sb, #4]
007e2b44  98 02 03 e0                                      mul r3, r8, r2
007e2b48  92 88 21 e0                                      mla r1, r2, r8, r8
007e2b4c  05 58 85 e2                                      add r5, r5, #0x50000
007e2b50  01 e0 40 e2                                      sub lr, r0, #1
007e2b54  98 00 0c e0                                      mul ip, r8, r0
007e2b58  05 50 84 e0                                      add r5, r4, r5
007e2b5c  16 50 85 e2                                      add r5, r5, #0x16
007e2b60  0e 20 62 e0                                      rsb r2, r2, lr
007e2b64  28 00 8d e5                                      str r0, [sp, #0x28]
007e2b68  01 10 85 e0                                      add r1, r5, r1
007e2b6c  98 02 02 e0                                      mul r2, r8, r2
007e2b70  03 00 85 e0                                      add r0, r5, r3
007e2b74  bc b0 95 e1                                      ldrh fp, [r5, ip]
007e2b78  b3 a0 95 e1                                      ldrh sl, [r5, r3]
007e2b7c  ed ac ec eb                                      bl #0x30df38
007e2b80  28 30 9d e5                                      ldr r3, [sp, #0x28]
007e2b84  14 00 9d e5                                      ldr r0, [sp, #0x14]
007e2b88  93 88 21 e0                                      mla r1, r3, r8, r8
007e2b8c  00 20 63 e0                                      rsb r2, r3, r0
007e2b90  01 20 42 e2                                      sub r2, r2, #1
007e2b94  01 30 43 e2                                      sub r3, r3, #1
007e2b98  98 53 20 e0                                      mla r0, r8, r3, r5
007e2b9c  01 10 85 e0                                      add r1, r5, r1
007e2ba0  98 02 02 e0                                      mul r2, r8, r2
007e2ba4  e3 ac ec eb                                      bl #0x30df38
007e2ba8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007e2bac  07 00 53 e1                                      cmp r3, r7
007e2bb0  0e 00 00 aa                                      bge #0x7e2bf0
007e2bb4  98 53 22 e0                                      mla r2, r8, r3, r5
007e2bb8  02 20 82 e2                                      add r2, r2, #2
007e2bbc  b0 10 d2 e1                                      ldrh r1, [r2]
007e2bc0  b2 00 52 e1                                      ldrh r0, [r2, #-2]
007e2bc4  06 20 82 e2                                      add r2, r2, #6
007e2bc8  81 11 86 e0                                      add r1, r6, r1, lsl #3
007e2bcc  09 19 81 e2                                      add r1, r1, #0x24000
007e2bd0  01 00 10 e3                                      tst r0, #1
007e2bd4  81 10 84 e0                                      add r1, r4, r1, lsl #1
007e2bd8  b4 31 c1 01                                      strheq r3, [r1, #0x14]
007e2bdc  b8 31 c1 11                                      strhne r3, [r1, #0x18]
007e2be0  01 30 83 e2                                      add r3, r3, #1
007e2be4  07 00 53 e1                                      cmp r3, r7
007e2be8  f3 ff ff ba                                      blt #0x7e2bbc
007e2bec  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007e2bf0  28 20 9d e5                                      ldr r2, [sp, #0x28]
007e2bf4  01 20 42 e2                                      sub r2, r2, #1
007e2bf8  03 00 52 e1                                      cmp r2, r3
007e2bfc  09 00 00 da                                      ble #0x7e2c28
007e2c00  98 53 22 e0                                      mla r2, r8, r3, r5
007e2c04  04 20 82 e2                                      add r2, r2, #4
007e2c08  b0 10 d2 e1                                      ldrh r1, [r2]
007e2c0c  01 30 83 e2                                      add r3, r3, #1
007e2c10  01 10 41 e2                                      sub r1, r1, #1
007e2c14  b6 10 c2 e0                                      strh r1, [r2], #6
007e2c18  28 10 9d e5                                      ldr r1, [sp, #0x28]
007e2c1c  01 10 41 e2                                      sub r1, r1, #1
007e2c20  03 00 51 e1                                      cmp r1, r3
007e2c24  f7 ff ff ca                                      bgt #0x7e2c08
007e2c28  0c 60 8d e5                                      str r6, [sp, #0xc]
007e2c2c  0a 30 a0 e1                                      mov r3, sl
007e2c30  01 60 86 e2                                      add r6, r6, #1
007e2c34  04 00 a0 e1                                      mov r0, r4
007e2c38  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007e2c3c  18 20 9d e5                                      ldr r2, [sp, #0x18]
007e2c40  00 b0 8d e5                                      str fp, [sp]
007e2c44  a0 00 8d e9                                      stmib sp, {r5, r7}
007e2c48  f4 fe ff eb                                      bl #0x7e2820
007e2c4c  02 00 56 e3                                      cmp r6, #2
007e2c50  02 90 89 e2                                      add sb, sb, #2
007e2c54  b5 ff ff 1a                                      bne #0x7e2b30
007e2c58  5d 8a a0 e3                                      mov r8, #0x5d000
007e2c5c  18 80 88 e2                                      add r8, r8, #0x18
007e2c60  08 30 94 e7                                      ldr r3, [r4, r8]
007e2c64  20 50 9d e5                                      ldr r5, [sp, #0x20]
007e2c68  24 b0 9d e5                                      ldr fp, [sp, #0x24]
007e2c6c  00 00 53 e3                                      cmp r3, #0
007e2c70  0a 00 00 da                                      ble #0x7e2ca0
007e2c74  17 79 84 e2                                      add r7, r4, #0x5c000
007e2c78  16 70 87 e2                                      add r7, r7, #0x16
007e2c7c  00 60 a0 e3                                      mov r6, #0
007e2c80  04 00 a0 e1                                      mov r0, r4
007e2c84  05 10 a0 e1                                      mov r1, r5
007e2c88  b2 20 d7 e0                                      ldrh r2, [r7], #2
007e2c8c  64 05 00 eb                                      bl #0x7e4224
007e2c90  08 30 94 e7                                      ldr r3, [r4, r8]
007e2c94  01 60 86 e2                                      add r6, r6, #1
007e2c98  06 00 53 e1                                      cmp r3, r6
007e2c9c  f7 ff ff ca                                      bgt #0x7e2c80
007e2ca0  04 00 a0 e1                                      mov r0, r4
007e2ca4  8d 05 00 eb                                      bl #0x7e42e0
007e2ca8  5d 3a a0 e3                                      mov r3, #0x5d000
007e2cac  18 30 83 e2                                      add r3, r3, #0x18
007e2cb0  00 60 a0 e3                                      mov r6, #0
007e2cb4  03 60 84 e7                                      str r6, [r4, r3]
007e2cb8  04 00 a0 e1                                      mov r0, r4
007e2cbc  aa fe ff eb                                      bl #0x7e276c
007e2cc0  05 c2 84 e0                                      add ip, r4, r5, lsl #4
007e2cc4  12 39 8c e2                                      add r3, ip, #0x48000
007e2cc8  12 09 a0 e3                                      mov r0, #0x48000
007e2ccc  03 10 a0 e1                                      mov r1, r3
007e2cd0  20 00 80 e2                                      add r0, r0, #0x20
007e2cd4  00 60 8c e7                                      str r6, [ip, r0]
007e2cd8  0b b2 84 e0                                      add fp, r4, fp, lsl #4
007e2cdc  00 00 e0 e3                                      mvn r0, #0
007e2ce0  12 30 83 e2                                      add r3, r3, #0x12
007e2ce4  18 10 81 e2                                      add r1, r1, #0x18
007e2ce8  05 28 a0 e3                                      mov r2, #0x50000
007e2cec  b4 00 c1 e1                                      strh r0, [r1, #4]
007e2cf0  14 20 82 e2                                      add r2, r2, #0x14
007e2cf4  b4 00 cb e1                                      strh r0, [fp, #4]
007e2cf8  b4 00 c3 e1                                      strh r0, [r3, #4]
007e2cfc  b8 00 cb e1                                      strh r0, [fp, #8]
007e2d00  b8 00 c3 e1                                      strh r0, [r3, #8]
007e2d04  b2 10 94 e1                                      ldrh r1, [r4, r2]
007e2d08  5d 3a a0 e3                                      mov r3, #0x5d000
007e2d0c  34 30 83 e2                                      add r3, r3, #0x34
007e2d10  b4 10 cb e1                                      strh r1, [fp, #4]
007e2d14  b2 50 84 e1                                      strh r5, [r4, r2]
007e2d18  10 00 9d e5                                      ldr r0, [sp, #0x10]
007e2d1c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
007e2d20  03 10 94 e7                                      ldr r1, [r4, r3]
007e2d24  02 20 90 e7                                      ldr r2, [r0, r2]
007e2d28  01 10 41 e2                                      sub r1, r1, #1
007e2d2c  03 10 84 e7                                      str r1, [r4, r3]
007e2d30  00 30 d2 e5                                      ldrb r3, [r2]
007e2d34  06 00 53 e1                                      cmp r3, r6
007e2d38  01 00 00 0a                                      beq #0x7e2d44
007e2d3c  04 00 a0 e1                                      mov r0, r4
007e2d40  5f ff ff eb                                      bl #0x7e2ac4
007e2d44  34 d0 8d e2                                      add sp, sp, #0x34
007e2d48  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007e2d4c  8c 1f 1b 00 68 2d 00 00                          .byte 0x8c, 0x1f, 0x1b, 0x00, 0x68, 0x2d, 0x00, 0x00

; FUNCTION 0x007e2d54, declared_size=756, range_size=756, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhase11CreateProxyERK6b2AABBPv
; demangled: b2BroadPhase::CreateProxy(b2AABB const&, void*)
; decoder-mode: arm
007e2d54  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e2d58  05 38 a0 e3                                      mov r3, #0x50000
007e2d5c  14 30 83 e2                                      add r3, r3, #0x14
007e2d60  b3 50 90 e1                                      ldrh r5, [r0, r3]
007e2d64  12 e9 a0 e3                                      mov lr, #0x48000
007e2d68  20 e0 8e e2                                      add lr, lr, #0x20
007e2d6c  12 cb 85 e2                                      add ip, r5, #0x4800
007e2d70  01 c0 8c e2                                      add ip, ip, #1
007e2d74  0c 82 80 e0                                      add r8, r0, ip, lsl #4
007e2d78  b4 80 d8 e1                                      ldrh r8, [r8, #4]
007e2d7c  05 72 80 e0                                      add r7, r0, r5, lsl #4
007e2d80  12 69 87 e2                                      add r6, r7, #0x48000
007e2d84  b3 80 80 e1                                      strh r8, [r0, r3]
007e2d88  18 60 86 e2                                      add r6, r6, #0x18
007e2d8c  00 30 a0 e3                                      mov r3, #0
007e2d90  5d ca a0 e3                                      mov ip, #0x5d000
007e2d94  b4 30 c6 e1                                      strh r3, [r6, #4]
007e2d98  34 c0 8c e2                                      add ip, ip, #0x34
007e2d9c  0e 20 87 e7                                      str r2, [r7, lr]
007e2da0  0c e0 90 e7                                      ldr lr, [r0, ip]
007e2da4  3c d0 4d e2                                      sub sp, sp, #0x3c
007e2da8  30 c0 8d e2                                      add ip, sp, #0x30
007e2dac  34 b0 8d e2                                      add fp, sp, #0x34
007e2db0  01 30 a0 e1                                      mov r3, r1
007e2db4  0c 20 a0 e1                                      mov r2, ip
007e2db8  8e e0 a0 e1                                      lsl lr, lr, #1
007e2dbc  0b 10 a0 e1                                      mov r1, fp
007e2dc0  18 e0 8d e5                                      str lr, [sp, #0x18]
007e2dc4  14 c0 8d e5                                      str ip, [sp, #0x14]
007e2dc8  00 40 a0 e1                                      mov r4, r0
007e2dcc  f9 fd ff eb                                      bl #0x7e25b8
007e2dd0  68 e2 9f e5                                      ldr lr, [pc, #0x268]
007e2dd4  18 20 9d e5                                      ldr r2, [sp, #0x18]
007e2dd8  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007e2ddc  1c e0 8d e5                                      str lr, [sp, #0x1c]
007e2de0  01 a0 82 e2                                      add sl, r2, #1
007e2de4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007e2de8  00 90 a0 e3                                      mov sb, #0
007e2dec  2c 30 8d e2                                      add r3, sp, #0x2c
007e2df0  28 e0 8d e2                                      add lr, sp, #0x28
007e2df4  02 20 8f e0                                      add r2, pc, r2
007e2df8  09 70 a0 e1                                      mov r7, sb
007e2dfc  24 30 8d e5                                      str r3, [sp, #0x24]
007e2e00  20 e0 8d e5                                      str lr, [sp, #0x20]
007e2e04  06 60 a0 e3                                      mov r6, #6
007e2e08  05 80 a0 e1                                      mov r8, r5
007e2e0c  1c 20 8d e5                                      str r2, [sp, #0x1c]
007e2e10  06 3a a0 e3                                      mov r3, #0x6000
007e2e14  b9 e0 9c e1                                      ldrh lr, [ip, sb]
007e2e18  93 07 05 e0                                      mul r5, r3, r7
007e2e1c  b9 30 9b e1                                      ldrh r3, [fp, sb]
007e2e20  05 58 85 e2                                      add r5, r5, #0x50000
007e2e24  00 e0 8d e5                                      str lr, [sp]
007e2e28  18 e0 9d e5                                      ldr lr, [sp, #0x18]
007e2e2c  05 50 84 e0                                      add r5, r4, r5
007e2e30  16 50 85 e2                                      add r5, r5, #0x16
007e2e34  04 00 a0 e1                                      mov r0, r4
007e2e38  24 10 9d e5                                      ldr r1, [sp, #0x24]
007e2e3c  20 20 9d e5                                      ldr r2, [sp, #0x20]
007e2e40  08 e0 8d e5                                      str lr, [sp, #8]
007e2e44  14 c0 8d e5                                      str ip, [sp, #0x14]
007e2e48  04 50 8d e5                                      str r5, [sp, #4]
007e2e4c  0c 70 8d e5                                      str r7, [sp, #0xc]
007e2e50  72 fe ff eb                                      bl #0x7e2820
007e2e54  28 20 9d e5                                      ldr r2, [sp, #0x28]
007e2e58  18 30 9d e5                                      ldr r3, [sp, #0x18]
007e2e5c  96 02 01 e0                                      mul r1, r6, r2
007e2e60  03 20 62 e0                                      rsb r2, r2, r3
007e2e64  0c 00 81 e2                                      add r0, r1, #0xc
007e2e68  96 02 02 e0                                      mul r2, r6, r2
007e2e6c  01 10 85 e0                                      add r1, r5, r1
007e2e70  00 00 85 e0                                      add r0, r5, r0
007e2e74  2f ac ec eb                                      bl #0x30df38
007e2e78  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
007e2e7c  28 20 9d e5                                      ldr r2, [sp, #0x28]
007e2e80  91 66 20 e0                                      mla r0, r1, r6, r6
007e2e84  02 20 61 e0                                      rsb r2, r1, r2
007e2e88  96 02 02 e0                                      mul r2, r6, r2
007e2e8c  00 00 85 e0                                      add r0, r5, r0
007e2e90  96 51 21 e0                                      mla r1, r6, r1, r5
007e2e94  27 ac ec eb                                      bl #0x30df38
007e2e98  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007e2e9c  28 20 9d e5                                      ldr r2, [sp, #0x28]
007e2ea0  b9 e0 9b e1                                      ldrh lr, [fp, sb]
007e2ea4  96 03 03 e0                                      mul r3, r6, r3
007e2ea8  01 20 82 e2                                      add r2, r2, #1
007e2eac  28 20 8d e5                                      str r2, [sp, #0x28]
007e2eb0  b3 e0 85 e1                                      strh lr, [r5, r3]
007e2eb4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007e2eb8  96 53 23 e0                                      mla r3, r6, r3, r5
007e2ebc  b2 80 c3 e1                                      strh r8, [r3, #2]
007e2ec0  28 30 9d e5                                      ldr r3, [sp, #0x28]
007e2ec4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
007e2ec8  96 03 03 e0                                      mul r3, r6, r3
007e2ecc  b9 20 9c e1                                      ldrh r2, [ip, sb]
007e2ed0  b3 20 85 e1                                      strh r2, [r5, r3]
007e2ed4  28 30 9d e5                                      ldr r3, [sp, #0x28]
007e2ed8  96 53 23 e0                                      mla r3, r6, r3, r5
007e2edc  b2 80 c3 e1                                      strh r8, [r3, #2]
007e2ee0  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007e2ee4  00 00 53 e3                                      cmp r3, #0
007e2ee8  96 53 22 e0                                      mla r2, r6, r3, r5
007e2eec  01 30 43 12                                      subne r3, r3, #1
007e2ef0  96 53 23 10                                      mlane r3, r6, r3, r5
007e2ef4  b4 30 d3 11                                      ldrhne r3, [r3, #4]
007e2ef8  b4 30 c2 e1                                      strh r3, [r2, #4]
007e2efc  28 30 9d e5                                      ldr r3, [sp, #0x28]
007e2f00  01 20 43 e2                                      sub r2, r3, #1
007e2f04  96 52 22 e0                                      mla r2, r6, r2, r5
007e2f08  96 53 23 e0                                      mla r3, r6, r3, r5
007e2f0c  b4 20 d2 e1                                      ldrh r2, [r2, #4]
007e2f10  b4 20 c3 e1                                      strh r2, [r3, #4]
007e2f14  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007e2f18  28 20 9d e5                                      ldr r2, [sp, #0x28]
007e2f1c  02 00 53 e1                                      cmp r3, r2
007e2f20  09 00 00 aa                                      bge #0x7e2f4c
007e2f24  96 53 22 e0                                      mla r2, r6, r3, r5
007e2f28  04 20 82 e2                                      add r2, r2, #4
007e2f2c  b0 10 d2 e1                                      ldrh r1, [r2]
007e2f30  01 30 83 e2                                      add r3, r3, #1
007e2f34  01 10 81 e2                                      add r1, r1, #1
007e2f38  b6 10 c2 e0                                      strh r1, [r2], #6
007e2f3c  28 10 9d e5                                      ldr r1, [sp, #0x28]
007e2f40  03 00 51 e1                                      cmp r1, r3
007e2f44  f8 ff ff ca                                      bgt #0x7e2f2c
007e2f48  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
007e2f4c  03 00 5a e1                                      cmp sl, r3
007e2f50  0d 00 00 ba                                      blt #0x7e2f8c
007e2f54  96 53 25 e0                                      mla r5, r6, r3, r5
007e2f58  02 50 85 e2                                      add r5, r5, #2
007e2f5c  b0 20 d5 e1                                      ldrh r2, [r5]
007e2f60  b2 10 55 e1                                      ldrh r1, [r5, #-2]
007e2f64  06 50 85 e2                                      add r5, r5, #6
007e2f68  82 21 87 e0                                      add r2, r7, r2, lsl #3
007e2f6c  09 29 82 e2                                      add r2, r2, #0x24000
007e2f70  01 00 11 e3                                      tst r1, #1
007e2f74  82 20 84 e0                                      add r2, r4, r2, lsl #1
007e2f78  b4 31 c2 01                                      strheq r3, [r2, #0x14]
007e2f7c  b8 31 c2 11                                      strhne r3, [r2, #0x18]
007e2f80  01 30 83 e2                                      add r3, r3, #1
007e2f84  0a 00 53 e1                                      cmp r3, sl
007e2f88  f3 ff ff da                                      ble #0x7e2f5c
007e2f8c  01 70 87 e2                                      add r7, r7, #1
007e2f90  02 00 57 e3                                      cmp r7, #2
007e2f94  02 90 89 e2                                      add sb, sb, #2
007e2f98  9c ff ff 1a                                      bne #0x7e2e10
007e2f9c  5d 3a a0 e3                                      mov r3, #0x5d000
007e2fa0  34 30 83 e2                                      add r3, r3, #0x34
007e2fa4  03 20 94 e7                                      ldr r2, [r4, r3]
007e2fa8  08 50 a0 e1                                      mov r5, r8
007e2fac  5d 8a a0 e3                                      mov r8, #0x5d000
007e2fb0  01 20 82 e2                                      add r2, r2, #1
007e2fb4  18 80 88 e2                                      add r8, r8, #0x18
007e2fb8  03 20 84 e7                                      str r2, [r4, r3]
007e2fbc  08 30 94 e7                                      ldr r3, [r4, r8]
007e2fc0  00 00 53 e3                                      cmp r3, #0
007e2fc4  0a 00 00 da                                      ble #0x7e2ff4
007e2fc8  17 79 84 e2                                      add r7, r4, #0x5c000
007e2fcc  16 70 87 e2                                      add r7, r7, #0x16
007e2fd0  00 60 a0 e3                                      mov r6, #0
007e2fd4  04 00 a0 e1                                      mov r0, r4
007e2fd8  05 10 a0 e1                                      mov r1, r5
007e2fdc  b2 20 d7 e0                                      ldrh r2, [r7], #2
007e2fe0  6a 04 00 eb                                      bl #0x7e4190
007e2fe4  08 30 94 e7                                      ldr r3, [r4, r8]
007e2fe8  01 60 86 e2                                      add r6, r6, #1
007e2fec  06 00 53 e1                                      cmp r3, r6
007e2ff0  f7 ff ff ca                                      bgt #0x7e2fd4
007e2ff4  04 00 a0 e1                                      mov r0, r4
007e2ff8  b8 04 00 eb                                      bl #0x7e42e0
007e2ffc  40 30 9f e5                                      ldr r3, [pc, #0x40]
007e3000  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
007e3004  03 30 9e e7                                      ldr r3, [lr, r3]
007e3008  00 30 d3 e5                                      ldrb r3, [r3]
007e300c  00 00 53 e3                                      cmp r3, #0
007e3010  01 00 00 0a                                      beq #0x7e301c
007e3014  04 00 a0 e1                                      mov r0, r4
007e3018  a9 fe ff eb                                      bl #0x7e2ac4
007e301c  5d 3a a0 e3                                      mov r3, #0x5d000
007e3020  18 30 83 e2                                      add r3, r3, #0x18
007e3024  00 20 a0 e3                                      mov r2, #0
007e3028  04 00 a0 e1                                      mov r0, r4
007e302c  03 20 84 e7                                      str r2, [r4, r3]
007e3030  cd fd ff eb                                      bl #0x7e276c
007e3034  05 00 a0 e1                                      mov r0, r5
007e3038  3c d0 8d e2                                      add sp, sp, #0x3c
007e303c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
007e3040  9c 1c 1b 00 68 2d 00 00                          .byte 0x9c, 0x1c, 0x1b, 0x00, 0x68, 0x2d, 0x00, 0x00

; FUNCTION 0x007e3048, declared_size=308, range_size=308, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhaseC1ERK6b2AABBP14b2PairCallback
; demangled: b2BroadPhase::b2BroadPhase(b2AABB const&, b2PairCallback*)
; decoder-mode: arm
007e3048  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007e304c  00 40 a0 e1                                      mov r4, r0
007e3050  02 60 a0 e1                                      mov r6, r2
007e3054  01 50 a0 e1                                      mov r5, r1
007e3058  7d 03 00 eb                                      bl #0x7e3e54
007e305c  06 20 a0 e1                                      mov r2, r6
007e3060  04 00 a0 e1                                      mov r0, r4
007e3064  04 10 a0 e1                                      mov r1, r4
007e3068  9f 03 00 eb                                      bl #0x7e3eec
007e306c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
007e3070  5d ca 84 e2                                      add ip, r4, #0x5d000
007e3074  1c c0 8c e2                                      add ip, ip, #0x1c
007e3078  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007e307c  5d 3a a0 e3                                      mov r3, #0x5d000
007e3080  34 30 83 e2                                      add r3, r3, #0x34
007e3084  00 60 a0 e3                                      mov r6, #0
007e3088  03 60 84 e7                                      str r6, [r4, r3]
007e308c  04 10 95 e5                                      ldr r1, [r5, #4]
007e3090  0c 00 95 e5                                      ldr r0, [r5, #0xc]
007e3094  c4 ac ec eb                                      bl #0x30e3ac
007e3098  00 10 95 e5                                      ldr r1, [r5]
007e309c  00 70 a0 e1                                      mov r7, r0
007e30a0  08 00 95 e5                                      ldr r0, [r5, #8]
007e30a4  c0 ac ec eb                                      bl #0x30e3ac
007e30a8  00 10 a0 e1                                      mov r1, r0
007e30ac  00 0f 0f e3                                      movw r0, #0xff00
007e30b0  7f 07 44 e3                                      movt r0, #0x477f
007e30b4  f6 ae ec eb                                      bl #0x30ec94
007e30b8  5d 3a a0 e3                                      mov r3, #0x5d000
007e30bc  2c 30 83 e2                                      add r3, r3, #0x2c
007e30c0  03 00 84 e7                                      str r0, [r4, r3]
007e30c4  00 0f 0f e3                                      movw r0, #0xff00
007e30c8  07 10 a0 e1                                      mov r1, r7
007e30cc  7f 07 44 e3                                      movt r0, #0x477f
007e30d0  ef ae ec eb                                      bl #0x30ec94
007e30d4  5d 3a a0 e3                                      mov r3, #0x5d000
007e30d8  30 30 83 e2                                      add r3, r3, #0x30
007e30dc  12 29 84 e2                                      add r2, r4, #0x48000
007e30e0  03 00 84 e7                                      str r0, [r4, r3]
007e30e4  14 20 82 e2                                      add r2, r2, #0x14
007e30e8  06 30 a0 e1                                      mov r3, r6
007e30ec  ff 17 00 e3                                      movw r1, #0x7ff
007e30f0  01 60 86 e2                                      add r6, r6, #1
007e30f4  76 60 ff e6                                      uxth r6, r6
007e30f8  00 00 a0 e3                                      mov r0, #0
007e30fc  00 80 e0 e3                                      mvn r8, #0
007e3100  01 00 56 e1                                      cmp r6, r1
007e3104  b0 60 c2 e1                                      strh r6, [r2]
007e3108  ba 00 c2 e1                                      strh r0, [r2, #0xa]
007e310c  b8 80 c2 e1                                      strh r8, [r2, #8]
007e3110  0c 30 82 e5                                      str r3, [r2, #0xc]
007e3114  10 20 82 e2                                      add r2, r2, #0x10
007e3118  f4 ff ff 1a                                      bne #0x7e30f0
007e311c  05 78 a0 e3                                      mov r7, #0x50000
007e3120  07 60 a0 e1                                      mov r6, r7
007e3124  07 50 a0 e1                                      mov r5, r7
007e3128  07 c0 a0 e1                                      mov ip, r7
007e312c  07 00 a0 e1                                      mov r0, r7
007e3130  5d 1a a0 e3                                      mov r1, #0x5d000
007e3134  01 20 a0 e1                                      mov r2, r1
007e3138  04 70 87 e2                                      add r7, r7, #4
007e313c  0e 60 86 e2                                      add r6, r6, #0xe
007e3140  0c 50 85 e2                                      add r5, r5, #0xc
007e3144  10 c0 8c e2                                      add ip, ip, #0x10
007e3148  14 00 80 e2                                      add r0, r0, #0x14
007e314c  b7 80 84 e1                                      strh r8, [r4, r7]
007e3150  38 10 81 e2                                      add r1, r1, #0x38
007e3154  b6 30 84 e1                                      strh r3, [r4, r6]
007e3158  18 20 82 e2                                      add r2, r2, #0x18
007e315c  b5 80 84 e1                                      strh r8, [r4, r5]
007e3160  0c 30 84 e7                                      str r3, [r4, ip]
007e3164  b0 30 84 e1                                      strh r3, [r4, r0]
007e3168  01 00 a0 e3                                      mov r0, #1
007e316c  b1 00 84 e1                                      strh r0, [r4, r1]
007e3170  02 30 84 e7                                      str r3, [r4, r2]
007e3174  04 00 a0 e1                                      mov r0, r4
007e3178  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007e317c, declared_size=308, range_size=308, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhaseC2ERK6b2AABBP14b2PairCallback
; demangled: b2BroadPhase::b2BroadPhase(b2AABB const&, b2PairCallback*)
; decoder-mode: arm
007e317c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007e3180  00 40 a0 e1                                      mov r4, r0
007e3184  02 60 a0 e1                                      mov r6, r2
007e3188  01 50 a0 e1                                      mov r5, r1
007e318c  30 03 00 eb                                      bl #0x7e3e54
007e3190  06 20 a0 e1                                      mov r2, r6
007e3194  04 00 a0 e1                                      mov r0, r4
007e3198  04 10 a0 e1                                      mov r1, r4
007e319c  52 03 00 eb                                      bl #0x7e3eec
007e31a0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
007e31a4  5d ca 84 e2                                      add ip, r4, #0x5d000
007e31a8  1c c0 8c e2                                      add ip, ip, #0x1c
007e31ac  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
007e31b0  5d 3a a0 e3                                      mov r3, #0x5d000
007e31b4  34 30 83 e2                                      add r3, r3, #0x34
007e31b8  00 60 a0 e3                                      mov r6, #0
007e31bc  03 60 84 e7                                      str r6, [r4, r3]
007e31c0  04 10 95 e5                                      ldr r1, [r5, #4]
007e31c4  0c 00 95 e5                                      ldr r0, [r5, #0xc]
007e31c8  77 ac ec eb                                      bl #0x30e3ac
007e31cc  00 10 95 e5                                      ldr r1, [r5]
007e31d0  00 70 a0 e1                                      mov r7, r0
007e31d4  08 00 95 e5                                      ldr r0, [r5, #8]
007e31d8  73 ac ec eb                                      bl #0x30e3ac
007e31dc  00 10 a0 e1                                      mov r1, r0
007e31e0  00 0f 0f e3                                      movw r0, #0xff00
007e31e4  7f 07 44 e3                                      movt r0, #0x477f
007e31e8  a9 ae ec eb                                      bl #0x30ec94
007e31ec  5d 3a a0 e3                                      mov r3, #0x5d000
007e31f0  2c 30 83 e2                                      add r3, r3, #0x2c
007e31f4  03 00 84 e7                                      str r0, [r4, r3]
007e31f8  00 0f 0f e3                                      movw r0, #0xff00
007e31fc  07 10 a0 e1                                      mov r1, r7
007e3200  7f 07 44 e3                                      movt r0, #0x477f
007e3204  a2 ae ec eb                                      bl #0x30ec94
007e3208  5d 3a a0 e3                                      mov r3, #0x5d000
007e320c  30 30 83 e2                                      add r3, r3, #0x30
007e3210  12 29 84 e2                                      add r2, r4, #0x48000
007e3214  03 00 84 e7                                      str r0, [r4, r3]
007e3218  14 20 82 e2                                      add r2, r2, #0x14
007e321c  06 30 a0 e1                                      mov r3, r6
007e3220  ff 17 00 e3                                      movw r1, #0x7ff
007e3224  01 60 86 e2                                      add r6, r6, #1
007e3228  76 60 ff e6                                      uxth r6, r6
007e322c  00 00 a0 e3                                      mov r0, #0
007e3230  00 80 e0 e3                                      mvn r8, #0
007e3234  01 00 56 e1                                      cmp r6, r1
007e3238  b0 60 c2 e1                                      strh r6, [r2]
007e323c  ba 00 c2 e1                                      strh r0, [r2, #0xa]
007e3240  b8 80 c2 e1                                      strh r8, [r2, #8]
007e3244  0c 30 82 e5                                      str r3, [r2, #0xc]
007e3248  10 20 82 e2                                      add r2, r2, #0x10
007e324c  f4 ff ff 1a                                      bne #0x7e3224
007e3250  05 78 a0 e3                                      mov r7, #0x50000
007e3254  07 60 a0 e1                                      mov r6, r7
007e3258  07 50 a0 e1                                      mov r5, r7
007e325c  07 c0 a0 e1                                      mov ip, r7
007e3260  07 00 a0 e1                                      mov r0, r7
007e3264  5d 1a a0 e3                                      mov r1, #0x5d000
007e3268  01 20 a0 e1                                      mov r2, r1
007e326c  04 70 87 e2                                      add r7, r7, #4
007e3270  0e 60 86 e2                                      add r6, r6, #0xe
007e3274  0c 50 85 e2                                      add r5, r5, #0xc
007e3278  10 c0 8c e2                                      add ip, ip, #0x10
007e327c  14 00 80 e2                                      add r0, r0, #0x14
007e3280  b7 80 84 e1                                      strh r8, [r4, r7]
007e3284  38 10 81 e2                                      add r1, r1, #0x38
007e3288  b6 30 84 e1                                      strh r3, [r4, r6]
007e328c  18 20 82 e2                                      add r2, r2, #0x18
007e3290  b5 80 84 e1                                      strh r8, [r4, r5]
007e3294  0c 30 84 e7                                      str r3, [r4, ip]
007e3298  b0 30 84 e1                                      strh r3, [r4, r0]
007e329c  01 00 a0 e3                                      mov r0, #1
007e32a0  b1 00 84 e1                                      strh r0, [r4, r1]
007e32a4  02 30 84 e7                                      str r3, [r4, r2]
007e32a8  04 00 a0 e1                                      mov r0, r4
007e32ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007e3344, declared_size=1872, range_size=1872, mode=arm
; class-group: b2BroadPhase
; alias: _ZN12b2BroadPhase9MoveProxyEiRK6b2AABB
; demangled: b2BroadPhase::MoveProxy(int, b2AABB const&)
; decoder-mode: arm
007e3344  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007e3348  3c 37 9f e5                                      ldr r3, [pc, #0x73c]
007e334c  44 d0 4d e2                                      sub sp, sp, #0x44
007e3350  02 0b 51 e3                                      cmp r1, #0x800
007e3354  03 30 8f e0                                      add r3, pc, r3
007e3358  00 30 8d e5                                      str r3, [sp]
007e335c  08 10 8d e5                                      str r1, [sp, #8]
007e3360  00 40 a0 e1                                      mov r4, r0
007e3364  02 50 a0 e1                                      mov r5, r2
007e3368  01 00 00 ba                                      blt #0x7e3374
007e336c  44 d0 8d e2                                      add sp, sp, #0x44
007e3370  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007e3374  02 00 a0 e1                                      mov r0, r2
007e3378  cc ff ff eb                                      bl #0x7e32b0
007e337c  00 00 50 e3                                      cmp r0, #0
007e3380  f9 ff ff 0a                                      beq #0x7e336c
007e3384  5d 3a a0 e3                                      mov r3, #0x5d000
007e3388  38 c0 8d e2                                      add ip, sp, #0x38
007e338c  34 30 83 e2                                      add r3, r3, #0x34
007e3390  03 90 94 e7                                      ldr sb, [r4, r3]
007e3394  0c 10 a0 e1                                      mov r1, ip
007e3398  04 20 8c e2                                      add r2, ip, #4
007e339c  05 30 a0 e1                                      mov r3, r5
007e33a0  04 00 a0 e1                                      mov r0, r4
007e33a4  14 c0 8d e5                                      str ip, [sp, #0x14]
007e33a8  82 fc ff eb                                      bl #0x7e25b8
007e33ac  08 00 9d e5                                      ldr r0, [sp, #8]
007e33b0  06 30 a0 e3                                      mov r3, #6
007e33b4  00 c0 a0 e3                                      mov ip, #0
007e33b8  12 7b 80 e2                                      add r7, r0, #0x4800
007e33bc  01 70 87 e2                                      add r7, r7, #1
007e33c0  07 72 84 e0                                      add r7, r4, r7, lsl #4
007e33c4  b4 10 d7 e1                                      ldrh r1, [r7, #4]
007e33c8  00 22 84 e0                                      add r2, r4, r0, lsl #4
007e33cc  12 29 82 e2                                      add r2, r2, #0x48000
007e33d0  93 41 21 e0                                      mla r1, r3, r1, r4
007e33d4  12 20 82 e2                                      add r2, r2, #0x12
007e33d8  05 18 81 e2                                      add r1, r1, #0x50000
007e33dc  10 10 81 e2                                      add r1, r1, #0x10
007e33e0  b6 10 d1 e1                                      ldrh r1, [r1, #6]
007e33e4  30 00 8d e2                                      add r0, sp, #0x30
007e33e8  89 90 a0 e1                                      lsl sb, sb, #1
007e33ec  b0 13 cd e1                                      strh r1, [sp, #0x30]
007e33f0  b8 10 d7 e1                                      ldrh r1, [r7, #8]
007e33f4  28 c0 8d e5                                      str ip, [sp, #0x28]
007e33f8  04 70 87 e2                                      add r7, r7, #4
007e33fc  93 41 21 e0                                      mla r1, r3, r1, r4
007e3400  01 90 49 e2                                      sub sb, sb, #1
007e3404  05 18 81 e2                                      add r1, r1, #0x50000
007e3408  10 10 81 e2                                      add r1, r1, #0x10
007e340c  b6 10 d1 e1                                      ldrh r1, [r1, #6]
007e3410  0c 80 a0 e1                                      mov r8, ip
007e3414  b4 13 cd e1                                      strh r1, [sp, #0x34]
007e3418  b4 10 d2 e1                                      ldrh r1, [r2, #4]
007e341c  93 41 21 e0                                      mla r1, r3, r1, r4
007e3420  56 1a 81 e2                                      add r1, r1, #0x56000
007e3424  10 10 81 e2                                      add r1, r1, #0x10
007e3428  b6 10 d1 e1                                      ldrh r1, [r1, #6]
007e342c  b2 13 cd e1                                      strh r1, [sp, #0x32]
007e3430  b8 20 d2 e1                                      ldrh r2, [r2, #8]
007e3434  20 00 8d e5                                      str r0, [sp, #0x20]
007e3438  93 42 23 e0                                      mla r3, r3, r2, r4
007e343c  56 3a 83 e2                                      add r3, r3, #0x56000
007e3440  10 30 83 e2                                      add r3, r3, #0x10
007e3444  b6 30 d3 e1                                      ldrh r3, [r3, #6]
007e3448  b6 33 cd e1                                      strh r3, [sp, #0x36]
007e344c  b0 20 d7 e1                                      ldrh r2, [r7]
007e3450  06 1a a0 e3                                      mov r1, #0x6000
007e3454  14 00 9d e5                                      ldr r0, [sp, #0x14]
007e3458  1c 20 8d e5                                      str r2, [sp, #0x1c]
007e345c  b4 30 d7 e1                                      ldrh r3, [r7, #4]
007e3460  91 08 0b e0                                      mul fp, r1, r8
007e3464  28 10 9d e5                                      ldr r1, [sp, #0x28]
007e3468  06 c0 a0 e3                                      mov ip, #6
007e346c  18 30 8d e5                                      str r3, [sp, #0x18]
007e3470  9c 02 03 e0                                      mul r3, ip, r2
007e3474  b1 20 b0 e1                                      ldrh r2, [r0, r1]!
007e3478  05 b8 8b e2                                      add fp, fp, #0x50000
007e347c  18 10 9d e5                                      ldr r1, [sp, #0x18]
007e3480  10 b0 8b e2                                      add fp, fp, #0x10
007e3484  b4 00 d0 e1                                      ldrh r0, [r0, #4]
007e3488  0b b0 84 e0                                      add fp, r4, fp
007e348c  04 20 8d e5                                      str r2, [sp, #4]
007e3490  9c 01 02 e0                                      mul r2, ip, r1
007e3494  0c c0 8b e0                                      add ip, fp, ip
007e3498  10 c0 8d e5                                      str ip, [sp, #0x10]
007e349c  b3 10 9c e1                                      ldrh r1, [ip, r3]
007e34a0  0c 00 8d e5                                      str r0, [sp, #0xc]
007e34a4  b2 00 9c e1                                      ldrh r0, [ip, r2]
007e34a8  04 c0 9d e5                                      ldr ip, [sp, #4]
007e34ac  01 10 5c e0                                      subs r1, ip, r1
007e34b0  2c 10 8d e5                                      str r1, [sp, #0x2c]
007e34b4  10 10 9d e5                                      ldr r1, [sp, #0x10]
007e34b8  b3 c0 81 e1                                      strh ip, [r1, r3]
007e34bc  0c c0 9d e5                                      ldr ip, [sp, #0xc]
007e34c0  0c 00 60 e0                                      rsb r0, r0, ip
007e34c4  b2 c0 81 e1                                      strh ip, [r1, r2]
007e34c8  24 00 8d e5                                      str r0, [sp, #0x24]
007e34cc  ca 00 00 4a                                      bmi #0x7e37fc
007e34d0  24 10 9d e5                                      ldr r1, [sp, #0x24]
007e34d4  00 00 51 e3                                      cmp r1, #0
007e34d8  33 00 00 da                                      ble #0x7e35ac
007e34dc  18 20 9d e5                                      ldr r2, [sp, #0x18]
007e34e0  09 00 52 e1                                      cmp r2, sb
007e34e4  30 00 00 aa                                      bge #0x7e35ac
007e34e8  06 30 a0 e3                                      mov r3, #6
007e34ec  92 33 26 e0                                      mla r6, r2, r3, r3
007e34f0  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007e34f4  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e34f8  b6 30 9c e1                                      ldrh r3, [ip, r6]
007e34fc  06 60 8c e0                                      add r6, ip, r6
007e3500  00 00 53 e1                                      cmp r3, r0
007e3504  28 00 00 8a                                      bhi #0x7e35ac
007e3508  02 60 86 e2                                      add r6, r6, #2
007e350c  06 10 a0 e3                                      mov r1, #6
007e3510  91 02 05 e0                                      mul r5, r1, r2
007e3514  b2 30 d6 e1                                      ldrh r3, [r6, #2]
007e3518  02 a0 a0 e1                                      mov sl, r2
007e351c  b2 20 56 e1                                      ldrh r2, [r6, #-2]
007e3520  0c 50 85 e2                                      add r5, r5, #0xc
007e3524  01 30 83 e2                                      add r3, r3, #1
007e3528  01 00 12 e3                                      tst r2, #1
007e352c  05 50 8c e0                                      add r5, ip, r5
007e3530  b0 b0 d6 e1                                      ldrh fp, [r6]
007e3534  b2 30 c6 e1                                      strh r3, [r6, #2]
007e3538  71 00 00 0a                                      beq #0x7e3704
007e353c  8b b1 88 e0                                      add fp, r8, fp, lsl #3
007e3540  09 b9 8b e2                                      add fp, fp, #0x24000
007e3544  08 b0 8b e2                                      add fp, fp, #8
007e3548  8b b0 84 e0                                      add fp, r4, fp, lsl #1
007e354c  b8 30 db e1                                      ldrh r3, [fp, #8]
007e3550  01 30 43 e2                                      sub r3, r3, #1
007e3554  b8 30 cb e1                                      strh r3, [fp, #8]
007e3558  b8 30 55 e1                                      ldrh r3, [r5, #-8]
007e355c  01 30 43 e2                                      sub r3, r3, #1
007e3560  b8 30 45 e1                                      strh r3, [r5, #-8]
007e3564  b4 30 d7 e1                                      ldrh r3, [r7, #4]
007e3568  01 a0 8a e2                                      add sl, sl, #1
007e356c  09 00 5a e1                                      cmp sl, sb
007e3570  01 30 83 e2                                      add r3, r3, #1
007e3574  b4 30 c7 e1                                      strh r3, [r7, #4]
007e3578  b2 c0 56 e1                                      ldrh ip, [r6, #-2]
007e357c  bc 30 55 e1                                      ldrh r3, [r5, #-0xc]
007e3580  ba 20 55 e1                                      ldrh r2, [r5, #-0xa]
007e3584  bc c0 45 e1                                      strh ip, [r5, #-0xc]
007e3588  b0 00 d6 e1                                      ldrh r0, [r6]
007e358c  b8 10 55 e1                                      ldrh r1, [r5, #-8]
007e3590  ba 00 45 e1                                      strh r0, [r5, #-0xa]
007e3594  b2 c0 d6 e1                                      ldrh ip, [r6, #2]
007e3598  b8 c0 45 e1                                      strh ip, [r5, #-8]
007e359c  b2 10 c6 e1                                      strh r1, [r6, #2]
007e35a0  b0 20 c6 e1                                      strh r2, [r6]
007e35a4  b2 30 46 e1                                      strh r3, [r6, #-2]
007e35a8  49 00 00 1a                                      bne #0x7e36d4
007e35ac  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
007e35b0  00 00 51 e3                                      cmp r1, #0
007e35b4  33 00 00 da                                      ble #0x7e3688
007e35b8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
007e35bc  09 00 52 e1                                      cmp r2, sb
007e35c0  30 00 00 aa                                      bge #0x7e3688
007e35c4  06 30 a0 e3                                      mov r3, #6
007e35c8  92 33 26 e0                                      mla r6, r2, r3, r3
007e35cc  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007e35d0  04 00 9d e5                                      ldr r0, [sp, #4]
007e35d4  b6 30 9c e1                                      ldrh r3, [ip, r6]
007e35d8  06 60 8c e0                                      add r6, ip, r6
007e35dc  00 00 53 e1                                      cmp r3, r0
007e35e0  28 00 00 8a                                      bhi #0x7e3688
007e35e4  02 60 86 e2                                      add r6, r6, #2
007e35e8  06 10 a0 e3                                      mov r1, #6
007e35ec  91 02 05 e0                                      mul r5, r1, r2
007e35f0  b2 30 d6 e1                                      ldrh r3, [r6, #2]
007e35f4  02 a0 a0 e1                                      mov sl, r2
007e35f8  b2 20 56 e1                                      ldrh r2, [r6, #-2]
007e35fc  0c 50 85 e2                                      add r5, r5, #0xc
007e3600  01 30 43 e2                                      sub r3, r3, #1
007e3604  01 00 12 e3                                      tst r2, #1
007e3608  05 50 8c e0                                      add r5, ip, r5
007e360c  b0 b0 d6 e1                                      ldrh fp, [r6]
007e3610  b2 30 c6 e1                                      strh r3, [r6, #2]
007e3614  5a 00 00 1a                                      bne #0x7e3784
007e3618  8b b1 88 e0                                      add fp, r8, fp, lsl #3
007e361c  09 b9 8b e2                                      add fp, fp, #0x24000
007e3620  08 b0 8b e2                                      add fp, fp, #8
007e3624  8b b0 84 e0                                      add fp, r4, fp, lsl #1
007e3628  b4 30 db e1                                      ldrh r3, [fp, #4]
007e362c  01 30 43 e2                                      sub r3, r3, #1
007e3630  b4 30 cb e1                                      strh r3, [fp, #4]
007e3634  b8 30 55 e1                                      ldrh r3, [r5, #-8]
007e3638  01 30 83 e2                                      add r3, r3, #1
007e363c  b8 30 45 e1                                      strh r3, [r5, #-8]
007e3640  b0 30 d7 e1                                      ldrh r3, [r7]
007e3644  01 a0 8a e2                                      add sl, sl, #1
007e3648  09 00 5a e1                                      cmp sl, sb
007e364c  01 30 83 e2                                      add r3, r3, #1
007e3650  b0 30 c7 e1                                      strh r3, [r7]
007e3654  b2 c0 56 e1                                      ldrh ip, [r6, #-2]
007e3658  bc 30 55 e1                                      ldrh r3, [r5, #-0xc]
007e365c  ba 20 55 e1                                      ldrh r2, [r5, #-0xa]
007e3660  bc c0 45 e1                                      strh ip, [r5, #-0xc]
007e3664  b0 00 d6 e1                                      ldrh r0, [r6]
007e3668  b8 10 55 e1                                      ldrh r1, [r5, #-8]
007e366c  ba 00 45 e1                                      strh r0, [r5, #-0xa]
007e3670  b2 c0 d6 e1                                      ldrh ip, [r6, #2]
007e3674  b8 c0 45 e1                                      strh ip, [r5, #-8]
007e3678  b2 10 c6 e1                                      strh r1, [r6, #2]
007e367c  b0 20 c6 e1                                      strh r2, [r6]
007e3680  b2 30 46 e1                                      strh r3, [r6, #-2]
007e3684  32 00 00 1a                                      bne #0x7e3754
007e3688  24 10 9d e5                                      ldr r1, [sp, #0x24]
007e368c  00 00 51 e3                                      cmp r1, #0
007e3690  a5 00 00 ba                                      blt #0x7e392c
007e3694  28 10 9d e5                                      ldr r1, [sp, #0x28]
007e3698  01 80 88 e2                                      add r8, r8, #1
007e369c  02 00 58 e3                                      cmp r8, #2
007e36a0  02 10 81 e2                                      add r1, r1, #2
007e36a4  02 70 87 e2                                      add r7, r7, #2
007e36a8  28 10 8d e5                                      str r1, [sp, #0x28]
007e36ac  66 ff ff 1a                                      bne #0x7e344c
007e36b0  d8 33 9f e5                                      ldr r3, [pc, #0x3d8]
007e36b4  00 20 9d e5                                      ldr r2, [sp]
007e36b8  03 30 92 e7                                      ldr r3, [r2, r3]
007e36bc  00 30 d3 e5                                      ldrb r3, [r3]
007e36c0  00 00 53 e3                                      cmp r3, #0
007e36c4  28 ff ff 0a                                      beq #0x7e336c
007e36c8  04 00 a0 e1                                      mov r0, r4
007e36cc  fc fc ff eb                                      bl #0x7e2ac4
007e36d0  25 ff ff ea                                      b #0x7e336c
007e36d4  b6 30 d5 e0                                      ldrh r3, [r5], #6
007e36d8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e36dc  06 60 86 e2                                      add r6, r6, #6
007e36e0  03 00 50 e1                                      cmp r0, r3
007e36e4  b0 ff ff 3a                                      blo #0x7e35ac
007e36e8  b2 30 d6 e1                                      ldrh r3, [r6, #2]
007e36ec  b2 20 56 e1                                      ldrh r2, [r6, #-2]
007e36f0  b0 b0 d6 e1                                      ldrh fp, [r6]
007e36f4  01 30 83 e2                                      add r3, r3, #1
007e36f8  01 00 12 e3                                      tst r2, #1
007e36fc  b2 30 c6 e1                                      strh r3, [r6, #2]
007e3700  8d ff ff 1a                                      bne #0x7e353c
007e3704  12 3b 8b e2                                      add r3, fp, #0x4800
007e3708  01 30 83 e2                                      add r3, r3, #1
007e370c  03 32 84 e0                                      add r3, r4, r3, lsl #4
007e3710  04 20 83 e2                                      add r2, r3, #4
007e3714  14 10 9d e5                                      ldr r1, [sp, #0x14]
007e3718  04 00 a0 e1                                      mov r0, r4
007e371c  82 fb ff eb                                      bl #0x7e252c
007e3720  00 00 50 e3                                      cmp r0, #0
007e3724  2f 00 00 1a                                      bne #0x7e37e8
007e3728  8b b1 88 e0                                      add fp, r8, fp, lsl #3
007e372c  09 b9 8b e2                                      add fp, fp, #0x24000
007e3730  08 b0 8b e2                                      add fp, fp, #8
007e3734  8b b0 84 e0                                      add fp, r4, fp, lsl #1
007e3738  b4 30 db e1                                      ldrh r3, [fp, #4]
007e373c  01 30 43 e2                                      sub r3, r3, #1
007e3740  b4 30 cb e1                                      strh r3, [fp, #4]
007e3744  b8 30 55 e1                                      ldrh r3, [r5, #-8]
007e3748  01 30 83 e2                                      add r3, r3, #1
007e374c  b8 30 45 e1                                      strh r3, [r5, #-8]
007e3750  83 ff ff ea                                      b #0x7e3564
007e3754  b6 30 d5 e0                                      ldrh r3, [r5], #6
007e3758  04 00 9d e5                                      ldr r0, [sp, #4]
007e375c  06 60 86 e2                                      add r6, r6, #6
007e3760  03 00 50 e1                                      cmp r0, r3
007e3764  c7 ff ff 3a                                      blo #0x7e3688
007e3768  b2 30 d6 e1                                      ldrh r3, [r6, #2]
007e376c  b2 20 56 e1                                      ldrh r2, [r6, #-2]
007e3770  b0 b0 d6 e1                                      ldrh fp, [r6]
007e3774  01 30 43 e2                                      sub r3, r3, #1
007e3778  01 00 12 e3                                      tst r2, #1
007e377c  b2 30 c6 e1                                      strh r3, [r6, #2]
007e3780  a4 ff ff 0a                                      beq #0x7e3618
007e3784  12 3b 8b e2                                      add r3, fp, #0x4800
007e3788  01 30 83 e2                                      add r3, r3, #1
007e378c  03 32 84 e0                                      add r3, r4, r3, lsl #4
007e3790  04 20 83 e2                                      add r2, r3, #4
007e3794  20 10 9d e5                                      ldr r1, [sp, #0x20]
007e3798  04 00 a0 e1                                      mov r0, r4
007e379c  62 fb ff eb                                      bl #0x7e252c
007e37a0  00 00 50 e3                                      cmp r0, #0
007e37a4  0a 00 00 1a                                      bne #0x7e37d4
007e37a8  8b b1 88 e0                                      add fp, r8, fp, lsl #3
007e37ac  09 b9 8b e2                                      add fp, fp, #0x24000
007e37b0  08 b0 8b e2                                      add fp, fp, #8
007e37b4  8b b0 84 e0                                      add fp, r4, fp, lsl #1
007e37b8  b8 30 db e1                                      ldrh r3, [fp, #8]
007e37bc  01 30 43 e2                                      sub r3, r3, #1
007e37c0  b8 30 cb e1                                      strh r3, [fp, #8]
007e37c4  b8 30 55 e1                                      ldrh r3, [r5, #-8]
007e37c8  01 30 43 e2                                      sub r3, r3, #1
007e37cc  b8 30 45 e1                                      strh r3, [r5, #-8]
007e37d0  9a ff ff ea                                      b #0x7e3640
007e37d4  04 00 a0 e1                                      mov r0, r4
007e37d8  08 10 9d e5                                      ldr r1, [sp, #8]
007e37dc  0b 20 a0 e1                                      mov r2, fp
007e37e0  8f 02 00 eb                                      bl #0x7e4224
007e37e4  ef ff ff ea                                      b #0x7e37a8
007e37e8  04 00 a0 e1                                      mov r0, r4
007e37ec  08 10 9d e5                                      ldr r1, [sp, #8]
007e37f0  0b 20 a0 e1                                      mov r2, fp
007e37f4  65 02 00 eb                                      bl #0x7e4190
007e37f8  ca ff ff ea                                      b #0x7e3728
007e37fc  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007e3800  00 00 50 e3                                      cmp r0, #0
007e3804  31 ff ff 0a                                      beq #0x7e34d0
007e3808  01 50 40 e2                                      sub r5, r0, #1
007e380c  06 10 a0 e3                                      mov r1, #6
007e3810  91 05 05 e0                                      mul r5, r1, r5
007e3814  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007e3818  04 00 9d e5                                      ldr r0, [sp, #4]
007e381c  b5 20 9c e1                                      ldrh r2, [ip, r5]
007e3820  05 50 8c e0                                      add r5, ip, r5
007e3824  00 00 52 e1                                      cmp r2, r0
007e3828  28 ff ff 9a                                      bls #0x7e34d0
007e382c  0c 30 43 e2                                      sub r3, r3, #0xc
007e3830  02 50 85 e2                                      add r5, r5, #2
007e3834  03 60 8c e0                                      add r6, ip, r3
007e3838  08 b0 8b e2                                      add fp, fp, #8
007e383c  1f 00 00 ea                                      b #0x7e38c0
007e3840  8a 31 88 e0                                      add r3, r8, sl, lsl #3
007e3844  09 39 83 e2                                      add r3, r3, #0x24000
007e3848  08 30 83 e2                                      add r3, r3, #8
007e384c  83 30 84 e0                                      add r3, r4, r3, lsl #1
007e3850  b4 20 d3 e1                                      ldrh r2, [r3, #4]
007e3854  01 20 82 e2                                      add r2, r2, #1
007e3858  b4 20 c3 e1                                      strh r2, [r3, #4]
007e385c  b0 31 d6 e1                                      ldrh r3, [r6, #0x10]
007e3860  01 30 43 e2                                      sub r3, r3, #1
007e3864  b0 31 c6 e1                                      strh r3, [r6, #0x10]
007e3868  b0 30 d7 e1                                      ldrh r3, [r7]
007e386c  0b 00 55 e1                                      cmp r5, fp
007e3870  01 30 43 e2                                      sub r3, r3, #1
007e3874  b0 30 c7 e1                                      strh r3, [r7]
007e3878  b2 c0 55 e1                                      ldrh ip, [r5, #-2]
007e387c  bc 30 d6 e1                                      ldrh r3, [r6, #0xc]
007e3880  be 20 d6 e1                                      ldrh r2, [r6, #0xe]
007e3884  bc c0 c6 e1                                      strh ip, [r6, #0xc]
007e3888  b0 00 d5 e1                                      ldrh r0, [r5]
007e388c  b0 11 d6 e1                                      ldrh r1, [r6, #0x10]
007e3890  be 00 c6 e1                                      strh r0, [r6, #0xe]
007e3894  b2 c0 d5 e1                                      ldrh ip, [r5, #2]
007e3898  b0 c1 c6 e1                                      strh ip, [r6, #0x10]
007e389c  b2 10 c5 e1                                      strh r1, [r5, #2]
007e38a0  b0 20 c5 e1                                      strh r2, [r5]
007e38a4  b2 30 45 e1                                      strh r3, [r5, #-2]
007e38a8  08 ff ff 0a                                      beq #0x7e34d0
007e38ac  b6 30 56 e0                                      ldrh r3, [r6], #-6
007e38b0  04 00 9d e5                                      ldr r0, [sp, #4]
007e38b4  06 50 45 e2                                      sub r5, r5, #6
007e38b8  03 00 50 e1                                      cmp r0, r3
007e38bc  03 ff ff 2a                                      bhs #0x7e34d0
007e38c0  b2 30 d5 e1                                      ldrh r3, [r5, #2]
007e38c4  b2 20 55 e1                                      ldrh r2, [r5, #-2]
007e38c8  b0 a0 d5 e1                                      ldrh sl, [r5]
007e38cc  01 30 83 e2                                      add r3, r3, #1
007e38d0  01 00 12 e3                                      tst r2, #1
007e38d4  b2 30 c5 e1                                      strh r3, [r5, #2]
007e38d8  d8 ff ff 0a                                      beq #0x7e3840
007e38dc  12 3b 8a e2                                      add r3, sl, #0x4800
007e38e0  01 30 83 e2                                      add r3, r3, #1
007e38e4  03 32 84 e0                                      add r3, r4, r3, lsl #4
007e38e8  04 20 83 e2                                      add r2, r3, #4
007e38ec  14 10 9d e5                                      ldr r1, [sp, #0x14]
007e38f0  04 00 a0 e1                                      mov r0, r4
007e38f4  0c fb ff eb                                      bl #0x7e252c
007e38f8  00 00 50 e3                                      cmp r0, #0
007e38fc  5d 00 00 1a                                      bne #0x7e3a78
007e3900  8a 31 88 e0                                      add r3, r8, sl, lsl #3
007e3904  09 39 83 e2                                      add r3, r3, #0x24000
007e3908  08 30 83 e2                                      add r3, r3, #8
007e390c  83 30 84 e0                                      add r3, r4, r3, lsl #1
007e3910  b8 20 d3 e1                                      ldrh r2, [r3, #8]
007e3914  01 20 82 e2                                      add r2, r2, #1
007e3918  b8 20 c3 e1                                      strh r2, [r3, #8]
007e391c  b0 31 d6 e1                                      ldrh r3, [r6, #0x10]
007e3920  01 30 83 e2                                      add r3, r3, #1
007e3924  b0 31 c6 e1                                      strh r3, [r6, #0x10]
007e3928  ce ff ff ea                                      b #0x7e3868
007e392c  18 20 9d e5                                      ldr r2, [sp, #0x18]
007e3930  00 00 52 e3                                      cmp r2, #0
007e3934  56 ff ff 0a                                      beq #0x7e3694
007e3938  06 30 a0 e3                                      mov r3, #6
007e393c  01 50 42 e2                                      sub r5, r2, #1
007e3940  93 05 05 e0                                      mul r5, r3, r5
007e3944  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007e3948  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e394c  b5 30 9c e1                                      ldrh r3, [ip, r5]
007e3950  05 50 8c e0                                      add r5, ip, r5
007e3954  00 00 53 e1                                      cmp r3, r0
007e3958  4d ff ff 9a                                      bls #0x7e3694
007e395c  06 10 a0 e3                                      mov r1, #6
007e3960  91 02 03 e0                                      mul r3, r1, r2
007e3964  02 50 85 e2                                      add r5, r5, #2
007e3968  0c 30 43 e2                                      sub r3, r3, #0xc
007e396c  03 60 8c e0                                      add r6, ip, r3
007e3970  02 b0 8c e2                                      add fp, ip, #2
007e3974  1f 00 00 ea                                      b #0x7e39f8
007e3978  8a 31 88 e0                                      add r3, r8, sl, lsl #3
007e397c  09 39 83 e2                                      add r3, r3, #0x24000
007e3980  08 30 83 e2                                      add r3, r3, #8
007e3984  83 30 84 e0                                      add r3, r4, r3, lsl #1
007e3988  b8 20 d3 e1                                      ldrh r2, [r3, #8]
007e398c  01 20 82 e2                                      add r2, r2, #1
007e3990  b8 20 c3 e1                                      strh r2, [r3, #8]
007e3994  b0 31 d6 e1                                      ldrh r3, [r6, #0x10]
007e3998  01 30 83 e2                                      add r3, r3, #1
007e399c  b0 31 c6 e1                                      strh r3, [r6, #0x10]
007e39a0  b4 30 d7 e1                                      ldrh r3, [r7, #4]
007e39a4  0b 00 55 e1                                      cmp r5, fp
007e39a8  01 30 43 e2                                      sub r3, r3, #1
007e39ac  b4 30 c7 e1                                      strh r3, [r7, #4]
007e39b0  b2 c0 55 e1                                      ldrh ip, [r5, #-2]
007e39b4  bc 30 d6 e1                                      ldrh r3, [r6, #0xc]
007e39b8  be 20 d6 e1                                      ldrh r2, [r6, #0xe]
007e39bc  bc c0 c6 e1                                      strh ip, [r6, #0xc]
007e39c0  b0 00 d5 e1                                      ldrh r0, [r5]
007e39c4  b0 11 d6 e1                                      ldrh r1, [r6, #0x10]
007e39c8  be 00 c6 e1                                      strh r0, [r6, #0xe]
007e39cc  b2 c0 d5 e1                                      ldrh ip, [r5, #2]
007e39d0  b0 c1 c6 e1                                      strh ip, [r6, #0x10]
007e39d4  b2 10 c5 e1                                      strh r1, [r5, #2]
007e39d8  b0 20 c5 e1                                      strh r2, [r5]
007e39dc  b2 30 45 e1                                      strh r3, [r5, #-2]
007e39e0  2b ff ff 0a                                      beq #0x7e3694
007e39e4  b6 30 56 e0                                      ldrh r3, [r6], #-6
007e39e8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007e39ec  06 50 45 e2                                      sub r5, r5, #6
007e39f0  03 00 50 e1                                      cmp r0, r3
007e39f4  26 ff ff 2a                                      bhs #0x7e3694
007e39f8  b2 30 d5 e1                                      ldrh r3, [r5, #2]
007e39fc  b2 20 55 e1                                      ldrh r2, [r5, #-2]
007e3a00  b0 a0 d5 e1                                      ldrh sl, [r5]
007e3a04  01 30 43 e2                                      sub r3, r3, #1
007e3a08  01 00 12 e3                                      tst r2, #1
007e3a0c  b2 30 c5 e1                                      strh r3, [r5, #2]
007e3a10  d8 ff ff 1a                                      bne #0x7e3978
007e3a14  12 3b 8a e2                                      add r3, sl, #0x4800
007e3a18  01 30 83 e2                                      add r3, r3, #1
007e3a1c  03 32 84 e0                                      add r3, r4, r3, lsl #4
007e3a20  04 20 83 e2                                      add r2, r3, #4
007e3a24  20 10 9d e5                                      ldr r1, [sp, #0x20]
007e3a28  04 00 a0 e1                                      mov r0, r4
007e3a2c  be fa ff eb                                      bl #0x7e252c
007e3a30  00 00 50 e3                                      cmp r0, #0
007e3a34  0a 00 00 1a                                      bne #0x7e3a64
007e3a38  8a 31 88 e0                                      add r3, r8, sl, lsl #3
007e3a3c  09 39 83 e2                                      add r3, r3, #0x24000
007e3a40  08 30 83 e2                                      add r3, r3, #8
007e3a44  83 30 84 e0                                      add r3, r4, r3, lsl #1
007e3a48  b4 20 d3 e1                                      ldrh r2, [r3, #4]
007e3a4c  01 20 82 e2                                      add r2, r2, #1
007e3a50  b4 20 c3 e1                                      strh r2, [r3, #4]
007e3a54  b0 31 d6 e1                                      ldrh r3, [r6, #0x10]
007e3a58  01 30 43 e2                                      sub r3, r3, #1
007e3a5c  b0 31 c6 e1                                      strh r3, [r6, #0x10]
007e3a60  ce ff ff ea                                      b #0x7e39a0
007e3a64  04 00 a0 e1                                      mov r0, r4
007e3a68  08 10 9d e5                                      ldr r1, [sp, #8]
007e3a6c  0a 20 a0 e1                                      mov r2, sl
007e3a70  eb 01 00 eb                                      bl #0x7e4224
007e3a74  ef ff ff ea                                      b #0x7e3a38
007e3a78  04 00 a0 e1                                      mov r0, r4
007e3a7c  08 10 9d e5                                      ldr r1, [sp, #8]
007e3a80  0a 20 a0 e1                                      mov r2, sl
007e3a84  c1 01 00 eb                                      bl #0x7e4190
007e3a88  9c ff ff ea                                      b #0x7e3900
; mapping-symbol data/literal pool
007e3a8c  3c 17 1b 00 68 2d 00 00                          .byte 0x3c, 0x17, 0x1b, 0x00, 0x68, 0x2d, 0x00, 0x00
