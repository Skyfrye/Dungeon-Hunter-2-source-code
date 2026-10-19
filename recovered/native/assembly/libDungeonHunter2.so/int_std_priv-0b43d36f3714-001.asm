; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00369350, declared_size=304, range_size=304, mode=arm
; class-group: int* std::priv
; alias: _ZNSt4priv6__findIPiiEET_S2_S2_RKT0_RKSt26random_access_iterator_tag
; demangled: int* std::priv::__find<int*, int>(int*, int*, int const&, std::random_access_iterator_tag const&)
; decoder-mode: arm
00369350  00 30 a0 e1                                      mov r3, r0
00369354  01 00 60 e0                                      rsb r0, r0, r1
00369358  40 c2 a0 e1                                      asr ip, r0, #4
0036935c  00 00 5c e3                                      cmp ip, #0
00369360  30 00 2d e9                                      push {r4, r5}
00369364  40 41 a0 e1                                      asr r4, r0, #2
00369368  03 00 a0 d1                                      movle r0, r3
0036936c  21 00 00 da                                      ble #0x3693f8
00369370  00 00 93 e5                                      ldr r0, [r3]
00369374  00 40 92 e5                                      ldr r4, [r2]
00369378  04 00 50 e1                                      cmp r0, r4
0036937c  03 00 a0 01                                      moveq r0, r3
00369380  23 00 00 0a                                      beq #0x369414
00369384  04 50 93 e5                                      ldr r5, [r3, #4]
00369388  04 00 83 e2                                      add r0, r3, #4
0036938c  05 00 54 e1                                      cmp r4, r5
00369390  1f 00 00 0a                                      beq #0x369414
00369394  04 50 b0 e5                                      ldr r5, [r0, #4]!
00369398  05 00 54 e1                                      cmp r4, r5
0036939c  1c 00 00 0a                                      beq #0x369414
003693a0  04 50 b0 e5                                      ldr r5, [r0, #4]!
003693a4  05 00 54 e1                                      cmp r4, r5
003693a8  0d 00 00 1a                                      bne #0x3693e4
003693ac  18 00 00 ea                                      b #0x369414
003693b0  10 00 93 e5                                      ldr r0, [r3, #0x10]
003693b4  04 00 50 e1                                      cmp r0, r4
003693b8  22 00 00 0a                                      beq #0x369448
003693bc  14 00 93 e5                                      ldr r0, [r3, #0x14]
003693c0  04 00 50 e1                                      cmp r0, r4
003693c4  21 00 00 0a                                      beq #0x369450
003693c8  18 00 93 e5                                      ldr r0, [r3, #0x18]
003693cc  04 00 50 e1                                      cmp r0, r4
003693d0  20 00 00 0a                                      beq #0x369458
003693d4  10 30 83 e2                                      add r3, r3, #0x10
003693d8  0c 00 93 e5                                      ldr r0, [r3, #0xc]
003693dc  00 00 54 e1                                      cmp r4, r0
003693e0  1e 00 00 0a                                      beq #0x369460
003693e4  01 c0 5c e2                                      subs ip, ip, #1
003693e8  f0 ff ff 1a                                      bne #0x3693b0
003693ec  10 00 83 e2                                      add r0, r3, #0x10
003693f0  01 40 60 e0                                      rsb r4, r0, r1
003693f4  44 41 a0 e1                                      asr r4, r4, #2
003693f8  02 00 54 e3                                      cmp r4, #2
003693fc  06 00 00 0a                                      beq #0x36941c
00369400  03 00 54 e3                                      cmp r4, #3
00369404  17 00 00 0a                                      beq #0x369468
00369408  01 00 54 e3                                      cmp r4, #1
0036940c  0b 00 00 0a                                      beq #0x369440
00369410  01 00 a0 e1                                      mov r0, r1
00369414  30 00 bd e8                                      pop {r4, r5}
00369418  1e ff 2f e1                                      bx lr
0036941c  00 30 92 e5                                      ldr r3, [r2]
00369420  00 20 90 e5                                      ldr r2, [r0]
00369424  03 00 52 e1                                      cmp r2, r3
00369428  f9 ff ff 0a                                      beq #0x369414
0036942c  04 00 80 e2                                      add r0, r0, #4
00369430  00 20 90 e5                                      ldr r2, [r0]
00369434  03 00 52 e1                                      cmp r2, r3
00369438  01 00 a0 11                                      movne r0, r1
0036943c  f4 ff ff ea                                      b #0x369414
00369440  00 30 92 e5                                      ldr r3, [r2]
00369444  f9 ff ff ea                                      b #0x369430
00369448  10 00 83 e2                                      add r0, r3, #0x10
0036944c  f0 ff ff ea                                      b #0x369414
00369450  14 00 83 e2                                      add r0, r3, #0x14
00369454  ee ff ff ea                                      b #0x369414
00369458  18 00 83 e2                                      add r0, r3, #0x18
0036945c  ec ff ff ea                                      b #0x369414
00369460  0c 00 83 e2                                      add r0, r3, #0xc
00369464  ea ff ff ea                                      b #0x369414
00369468  00 30 92 e5                                      ldr r3, [r2]
0036946c  00 20 90 e5                                      ldr r2, [r0]
00369470  03 00 52 e1                                      cmp r2, r3
00369474  e6 ff ff 0a                                      beq #0x369414
00369478  04 00 80 e2                                      add r0, r0, #4
0036947c  e7 ff ff ea                                      b #0x369420

; FUNCTION 0x007b26a0, declared_size=292, range_size=292, mode=arm
; class-group: int* std::priv
; alias: _ZNSt4priv21__unguarded_partitionIPiiN7gameswf16ear_clip_wrapperIfNS2_20ear_clip_triangulate17ear_clip_array_ioIfEES6_E17vert_index_sorterEEET_S9_S9_T0_T1_
; demangled: int* std::priv::__unguarded_partition<int*, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter>(int*, int*, int, gameswf::ear_clip_wrapper<float, gameswf::ear_clip_triangulate::ear_clip_array_io<float>, gameswf::ear_clip_triangulate::ear_clip_array_io<float> >::vert_index_sorter)
; decoder-mode: arm
007b26a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007b26a4  14 90 a0 e3                                      mov sb, #0x14
007b26a8  99 02 02 e0                                      mul r2, sb, r2
007b26ac  14 d0 4d e2                                      sub sp, sp, #0x14
007b26b0  05 00 8d e9                                      stmib sp, {r0, r2}
007b26b4  01 b0 a0 e1                                      mov fp, r1
007b26b8  0c 30 8d e5                                      str r3, [sp, #0xc]
007b26bc  27 00 00 ea                                      b #0x7b2760
007b26c0  0c 6f ed eb                                      bl #0x30e2f8
007b26c4  00 00 50 e3                                      cmp r0, #0
007b26c8  05 00 00 1a                                      bne #0x7b26e4
007b26cc  00 30 9d e5                                      ldr r3, [sp]
007b26d0  04 00 9a e5                                      ldr r0, [sl, #4]
007b26d4  04 10 93 e5                                      ldr r1, [r3, #4]
007b26d8  0b 70 ed eb                                      bl #0x30e70c
007b26dc  00 00 50 e3                                      cmp r0, #0
007b26e0  30 00 00 1a                                      bne #0x7b27a8
007b26e4  04 70 8d e5                                      str r7, [sp, #4]
007b26e8  0b 70 a0 e1                                      mov r7, fp
007b26ec  04 a0 17 e5                                      ldr sl, [r7, #-4]
007b26f0  05 10 a0 e1                                      mov r1, r5
007b26f4  99 0a 0b e0                                      mul fp, sb, sl
007b26f8  0b 60 94 e7                                      ldr r6, [r4, fp]
007b26fc  0b b0 84 e0                                      add fp, r4, fp
007b2700  06 00 a0 e1                                      mov r0, r6
007b2704  fb 6e ed eb                                      bl #0x30e2f8
007b2708  00 00 50 e3                                      cmp r0, #0
007b270c  05 10 a0 e1                                      mov r1, r5
007b2710  06 00 a0 e1                                      mov r0, r6
007b2714  25 00 00 1a                                      bne #0x7b27b0
007b2718  fb 6f ed eb                                      bl #0x30e70c
007b271c  00 00 50 e3                                      cmp r0, #0
007b2720  05 00 00 1a                                      bne #0x7b273c
007b2724  00 30 9d e5                                      ldr r3, [sp]
007b2728  04 10 9b e5                                      ldr r1, [fp, #4]
007b272c  04 00 93 e5                                      ldr r0, [r3, #4]
007b2730  f5 6f ed eb                                      bl #0x30e70c
007b2734  00 00 50 e3                                      cmp r0, #0
007b2738  1c 00 00 1a                                      bne #0x7b27b0
007b273c  04 30 9d e5                                      ldr r3, [sp, #4]
007b2740  04 70 47 e2                                      sub r7, r7, #4
007b2744  07 b0 a0 e1                                      mov fp, r7
007b2748  03 00 57 e1                                      cmp r7, r3
007b274c  19 00 00 9a                                      bls #0x7b27b8
007b2750  04 30 9d e5                                      ldr r3, [sp, #4]
007b2754  04 a0 83 e4                                      str sl, [r3], #4
007b2758  04 30 8d e5                                      str r3, [sp, #4]
007b275c  00 80 87 e5                                      str r8, [r7]
007b2760  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007b2764  04 70 9d e5                                      ldr r7, [sp, #4]
007b2768  00 40 93 e5                                      ldr r4, [r3]
007b276c  08 30 9d e5                                      ldr r3, [sp, #8]
007b2770  03 50 94 e7                                      ldr r5, [r4, r3]
007b2774  03 30 84 e0                                      add r3, r4, r3
007b2778  00 30 8d e5                                      str r3, [sp]
007b277c  00 80 97 e5                                      ldr r8, [r7]
007b2780  05 10 a0 e1                                      mov r1, r5
007b2784  99 08 0a e0                                      mul sl, sb, r8
007b2788  0a 60 94 e7                                      ldr r6, [r4, sl]
007b278c  0a a0 84 e0                                      add sl, r4, sl
007b2790  06 00 a0 e1                                      mov r0, r6
007b2794  dc 6f ed eb                                      bl #0x30e70c
007b2798  00 00 50 e3                                      cmp r0, #0
007b279c  05 10 a0 e1                                      mov r1, r5
007b27a0  06 00 a0 e1                                      mov r0, r6
007b27a4  c5 ff ff 0a                                      beq #0x7b26c0
007b27a8  04 70 87 e2                                      add r7, r7, #4
007b27ac  f2 ff ff ea                                      b #0x7b277c
007b27b0  04 70 47 e2                                      sub r7, r7, #4
007b27b4  cc ff ff ea                                      b #0x7b26ec
007b27b8  03 00 a0 e1                                      mov r0, r3
007b27bc  14 d0 8d e2                                      add sp, sp, #0x14
007b27c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
