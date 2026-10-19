; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a2090, declared_size=8, range_size=8, mode=arm
; class-group: SlotContainer
; alias: _ZNK13SlotContainer11IsUpdatableEv
; demangled: SlotContainer::IsUpdatable() const
; decoder-mode: arm
003a2090  01 00 a0 e3                                      mov r0, #1
003a2094  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a2098, declared_size=64, range_size=64, mode=arm
; class-group: SlotContainer
; alias: _ZNK13SlotContainer21GetLootFixedNumPowersEv
; demangled: SlotContainer::GetLootFixedNumPowers() const
; decoder-mode: arm
003a2098  34 17 90 e5                                      ldr r1, [r0, #0x734]
003a209c  38 37 90 e5                                      ldr r3, [r0, #0x738]
003a20a0  03 30 61 e0                                      rsb r3, r1, r3
003a20a4  43 31 a0 e1                                      asr r3, r3, #2
003a20a8  83 20 83 e0                                      add r2, r3, r3, lsl #1
003a20ac  02 22 82 e0                                      add r2, r2, r2, lsl #4
003a20b0  02 24 82 e0                                      add r2, r2, r2, lsl #8
003a20b4  02 28 82 e0                                      add r2, r2, r2, lsl #16
003a20b8  02 31 83 e0                                      add r3, r3, r2, lsl #2
003a20bc  00 00 53 e3                                      cmp r3, #0
003a20c0  2c 37 90 15                                      ldrne r3, [r0, #0x72c]
003a20c4  14 20 a0 13                                      movne r2, #0x14
003a20c8  00 00 e0 03                                      mvneq r0, #0
003a20cc  92 03 03 10                                      mulne r3, r2, r3
003a20d0  03 00 91 17                                      ldrne r0, [r1, r3]
003a20d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a20d8, declared_size=336, range_size=336, mode=arm
; class-group: SlotContainer
; alias: _ZN13SlotContainer6UpdateEv
; demangled: SlotContainer::Update()
; decoder-mode: arm
003a20d8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003a20dc  38 27 90 e5                                      ldr r2, [r0, #0x738]
003a20e0  34 37 90 e5                                      ldr r3, [r0, #0x734]
003a20e4  34 41 9f e5                                      ldr r4, [pc, #0x134]
003a20e8  1c d0 4d e2                                      sub sp, sp, #0x1c
003a20ec  02 30 63 e0                                      rsb r3, r3, r2
003a20f0  43 31 a0 e1                                      asr r3, r3, #2
003a20f4  04 40 8f e0                                      add r4, pc, r4
003a20f8  83 20 83 e0                                      add r2, r3, r3, lsl #1
003a20fc  00 50 a0 e1                                      mov r5, r0
003a2100  02 22 82 e0                                      add r2, r2, r2, lsl #4
003a2104  02 24 82 e0                                      add r2, r2, r2, lsl #8
003a2108  02 28 82 e0                                      add r2, r2, r2, lsl #16
003a210c  02 31 83 e0                                      add r3, r3, r2, lsl #2
003a2110  00 00 53 e3                                      cmp r3, #0
003a2114  0b 00 00 0a                                      beq #0x3a2148
003a2118  94 33 90 e5                                      ldr r3, [r0, #0x394]
003a211c  03 30 43 e2                                      sub r3, r3, #3
003a2120  01 00 53 e3                                      cmp r3, #1
003a2124  07 00 00 9a                                      bls #0x3a2148
003a2128  f4 60 9f e5                                      ldr r6, [pc, #0xf4]
003a212c  30 77 90 e5                                      ldr r7, [r0, #0x730]
003a2130  06 00 94 e7                                      ldr r0, [r4, r6]
003a2134  4c f5 fd eb                                      bl #0x31f66c
003a2138  07 00 60 e0                                      rsb r0, r0, r7
003a213c  00 00 50 e3                                      cmp r0, #0
003a2140  30 07 85 e5                                      str r0, [r5, #0x730]
003a2144  01 00 00 da                                      ble #0x3a2150
003a2148  1c d0 8d e2                                      add sp, sp, #0x1c
003a214c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003a2150  34 17 95 e5                                      ldr r1, [r5, #0x734]
003a2154  38 37 95 e5                                      ldr r3, [r5, #0x738]
003a2158  2c 27 95 e5                                      ldr r2, [r5, #0x72c]
003a215c  03 30 61 e0                                      rsb r3, r1, r3
003a2160  43 31 a0 e1                                      asr r3, r3, #2
003a2164  01 20 82 e2                                      add r2, r2, #1
003a2168  83 00 83 e0                                      add r0, r3, r3, lsl #1
003a216c  2c 27 85 e5                                      str r2, [r5, #0x72c]
003a2170  00 02 80 e0                                      add r0, r0, r0, lsl #4
003a2174  00 04 80 e0                                      add r0, r0, r0, lsl #8
003a2178  00 08 80 e0                                      add r0, r0, r0, lsl #16
003a217c  00 31 83 e0                                      add r3, r3, r0, lsl #2
003a2180  03 00 52 e1                                      cmp r2, r3
003a2184  14 30 a0 b3                                      movlt r3, #0x14
003a2188  93 02 02 b0                                      mullt r2, r3, r2
003a218c  00 20 a0 a3                                      movge r2, #0
003a2190  2c 27 85 a5                                      strge r2, [r5, #0x72c]
003a2194  02 10 81 e0                                      add r1, r1, r2
003a2198  40 37 95 e5                                      ldr r3, [r5, #0x740]
003a219c  04 20 91 e5                                      ldr r2, [r1, #4]
003a21a0  00 00 53 e3                                      cmp r3, #0
003a21a4  30 27 85 e5                                      str r2, [r5, #0x730]
003a21a8  e6 ff ff 0a                                      beq #0x3a2148
003a21ac  06 20 94 e7                                      ldr r2, [r4, r6]
003a21b0  14 40 8d e2                                      add r4, sp, #0x14
003a21b4  04 10 a0 e1                                      mov r1, r4
003a21b8  10 20 92 e5                                      ldr r2, [r2, #0x10]
003a21bc  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
003a21c0  14 30 8d e5                                      str r3, [sp, #0x14]
003a21c4  00 c0 93 e5                                      ldr ip, [r3]
003a21c8  08 20 8d e2                                      add r2, sp, #8
003a21cc  01 c0 8c e2                                      add ip, ip, #1
003a21d0  00 c0 83 e5                                      str ip, [r3]
003a21d4  34 e7 95 e5                                      ldr lr, [r5, #0x734]
003a21d8  2c c7 95 e5                                      ldr ip, [r5, #0x72c]
003a21dc  14 50 a0 e3                                      mov r5, #0x14
003a21e0  cd 3c 0c e3                                      movw r3, #0xcccd
003a21e4  95 ec 2c e0                                      mla ip, r5, ip, lr
003a21e8  cc 3d 43 e3                                      movt r3, #0x3dcc
003a21ec  08 e0 9c e5                                      ldr lr, [ip, #8]
003a21f0  08 e0 8d e5                                      str lr, [sp, #8]
003a21f4  0c e0 9c e5                                      ldr lr, [ip, #0xc]
003a21f8  0c e0 8d e5                                      str lr, [sp, #0xc]
003a21fc  10 c0 9c e5                                      ldr ip, [ip, #0x10]
003a2200  bf e4 a0 e3                                      mov lr, #0xbf000000
003a2204  02 e5 8e e2                                      add lr, lr, #0x800000
003a2208  00 e0 8d e5                                      str lr, [sp]
003a220c  10 c0 8d e5                                      str ip, [sp, #0x10]
003a2210  79 c1 fe eb                                      bl #0x3527fc
003a2214  04 00 a0 e1                                      mov r0, r4
003a2218  72 ba fd eb                                      bl #0x310be8
003a221c  c9 ff ff ea                                      b #0x3a2148
; mapping-symbol data/literal pool
003a2220  9c 29 5f 00 f4 37 00 00                          .byte 0x9c, 0x29, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003a2444, declared_size=8, range_size=8, mode=arm
; class-group: SlotContainer
; alias: _ZThn36_N13SlotContainerD1Ev
; demangled: non-virtual thunk to SlotContainer::~SlotContainer()
; decoder-mode: arm
003a2444  24 00 40 e2                                      sub r0, r0, #0x24
003a2448  ff ff ff ea                                      b #0x3a244c

; FUNCTION 0x003a244c, declared_size=156, range_size=156, mode=arm
; class-group: SlotContainer
; alias: _ZN13SlotContainerD1Ev
; demangled: SlotContainer::~SlotContainer()
; decoder-mode: arm
003a244c  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
003a2450  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003a2454  10 40 2d e9                                      push {r4, lr}
003a2458  02 20 8f e0                                      add r2, pc, r2
003a245c  03 30 92 e7                                      ldr r3, [r2, r3]
003a2460  00 40 a0 e1                                      mov r4, r0
003a2464  1d 0d 80 e2                                      add r0, r0, #0x740
003a2468  01 2c 83 e2                                      add r2, r3, #0x100
003a246c  08 10 83 e2                                      add r1, r3, #8
003a2470  f4 30 83 e2                                      add r3, r3, #0xf4
003a2474  0a 00 84 e8                                      stm r4, {r1, r3}
003a2478  24 20 84 e5                                      str r2, [r4, #0x24]
003a247c  d9 b9 fd eb                                      bl #0x310be8
003a2480  73 0e 84 e2                                      add r0, r4, #0x730
003a2484  04 00 80 e2                                      add r0, r0, #4
003a2488  d6 ff ff eb                                      bl #0x3a23e8
003a248c  71 3e 84 e2                                      add r3, r4, #0x710
003a2490  04 30 83 e2                                      add r3, r3, #4
003a2494  14 00 93 e5                                      ldr r0, [r3, #0x14]
003a2498  03 00 50 e1                                      cmp r0, r3
003a249c  06 00 00 0a                                      beq #0x3a24bc
003a24a0  00 00 50 e3                                      cmp r0, #0
003a24a4  04 00 00 0a                                      beq #0x3a24bc
003a24a8  14 17 94 e5                                      ldr r1, [r4, #0x714]
003a24ac  01 10 60 e0                                      rsb r1, r0, r1
003a24b0  80 00 51 e3                                      cmp r1, #0x80
003a24b4  04 00 00 8a                                      bhi #0x3a24cc
003a24b8  90 9a 0d eb                                      bl #0x708f00
003a24bc  04 00 a0 e1                                      mov r0, r4
003a24c0  e7 fd ff eb                                      bl #0x3a1c64
003a24c4  04 00 a0 e1                                      mov r0, r4
003a24c8  10 80 bd e8                                      pop {r4, pc}
003a24cc  db b7 fd eb                                      bl #0x310440
003a24d0  04 00 a0 e1                                      mov r0, r4
003a24d4  e2 fd ff eb                                      bl #0x3a1c64
003a24d8  04 00 a0 e1                                      mov r0, r4
003a24dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a24e0  38 26 5f 00 c4 49 00 00                          .byte 0x38, 0x26, 0x5f, 0x00, 0xc4, 0x49, 0x00, 0x00

; FUNCTION 0x003a24e8, declared_size=8, range_size=8, mode=arm
; class-group: SlotContainer
; alias: _ZThn36_N13SlotContainerD0Ev
; demangled: non-virtual thunk to SlotContainer::~SlotContainer()
; decoder-mode: arm
003a24e8  24 00 40 e2                                      sub r0, r0, #0x24
003a24ec  ff ff ff ea                                      b #0x3a24f0

; FUNCTION 0x003a24f0, declared_size=28, range_size=28, mode=arm
; class-group: SlotContainer
; alias: _ZN13SlotContainerD0Ev
; demangled: SlotContainer::~SlotContainer()
; decoder-mode: arm
003a24f0  10 40 2d e9                                      push {r4, lr}
003a24f4  00 40 a0 e1                                      mov r4, r0
003a24f8  d3 ff ff eb                                      bl #0x3a244c
003a24fc  04 00 a0 e1                                      mov r0, r4
003a2500  ce b7 fd eb                                      bl #0x310440
003a2504  04 00 a0 e1                                      mov r0, r4
003a2508  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003a250c, declared_size=100, range_size=100, mode=arm
; class-group: SlotContainer
; alias: _ZN13SlotContainerD2Ev
; demangled: SlotContainer::~SlotContainer()
; decoder-mode: arm
003a250c  54 20 9f e5                                      ldr r2, [pc, #0x54]
003a2510  54 30 9f e5                                      ldr r3, [pc, #0x54]
003a2514  10 40 2d e9                                      push {r4, lr}
003a2518  02 20 8f e0                                      add r2, pc, r2
003a251c  03 30 92 e7                                      ldr r3, [r2, r3]
003a2520  00 40 a0 e1                                      mov r4, r0
003a2524  1d 0d 80 e2                                      add r0, r0, #0x740
003a2528  01 2c 83 e2                                      add r2, r3, #0x100
003a252c  08 10 83 e2                                      add r1, r3, #8
003a2530  f4 30 83 e2                                      add r3, r3, #0xf4
003a2534  0a 00 84 e8                                      stm r4, {r1, r3}
003a2538  24 20 84 e5                                      str r2, [r4, #0x24]
003a253c  a9 b9 fd eb                                      bl #0x310be8
003a2540  73 0e 84 e2                                      add r0, r4, #0x730
003a2544  04 00 80 e2                                      add r0, r0, #4
003a2548  a6 ff ff eb                                      bl #0x3a23e8
003a254c  71 0e 84 e2                                      add r0, r4, #0x710
003a2550  04 00 80 e2                                      add r0, r0, #4
003a2554  14 c5 fd eb                                      bl #0x3139ac
003a2558  04 00 a0 e1                                      mov r0, r4
003a255c  c0 fd ff eb                                      bl #0x3a1c64
003a2560  04 00 a0 e1                                      mov r0, r4
003a2564  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a2568  78 25 5f 00 c4 49 00 00                          .byte 0x78, 0x25, 0x5f, 0x00, 0xc4, 0x49, 0x00, 0x00

; FUNCTION 0x003a2640, declared_size=1420, range_size=1420, mode=arm
; class-group: SlotContainer
; alias: _ZN13SlotContainer8InitPostEv
; demangled: SlotContainer::InitPost()
; decoder-mode: arm
003a2640  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003a2644  5c 55 9f e5                                      ldr r5, [pc, #0x55c]
003a2648  5c 15 9f e5                                      ldr r1, [pc, #0x55c]
003a264c  e4 d0 4d e2                                      sub sp, sp, #0xe4
003a2650  05 50 8f e0                                      add r5, pc, r5
003a2654  01 30 95 e7                                      ldr r3, [r5, r1]
003a2658  00 40 a0 e1                                      mov r4, r0
003a265c  10 10 8d e5                                      str r1, [sp, #0x10]
003a2660  00 30 93 e5                                      ldr r3, [r3]
003a2664  dc 30 8d e5                                      str r3, [sp, #0xdc]
003a2668  3d fd ff eb                                      bl #0x3a1b64
003a266c  24 27 94 e5                                      ldr r2, [r4, #0x724]
003a2670  28 37 94 e5                                      ldr r3, [r4, #0x728]
003a2674  03 00 52 e1                                      cmp r2, r3
003a2678  ba 00 00 0a                                      beq #0x3a2968
003a267c  44 60 8d e2                                      add r6, sp, #0x44
003a2680  48 00 86 e2                                      add r0, r6, #0x48
003a2684  2d 9a 0d eb                                      bl #0x708f40
003a2688  20 25 9f e5                                      ldr r2, [pc, #0x520]
003a268c  20 35 9f e5                                      ldr r3, [pc, #0x520]
003a2690  00 70 a0 e3                                      mov r7, #0
003a2694  02 80 95 e7                                      ldr r8, [r5, r2]
003a2698  03 30 95 e7                                      ldr r3, [r5, r3]
003a269c  d0 70 cd e5                                      strb r7, [sp, #0xd0]
003a26a0  08 20 98 e5                                      ldr r2, [r8, #8]
003a26a4  08 30 83 e2                                      add r3, r3, #8
003a26a8  8c 30 8d e5                                      str r3, [sp, #0x8c]
003a26ac  44 20 8d e5                                      str r2, [sp, #0x44]
003a26b0  d4 70 8d e5                                      str r7, [sp, #0xd4]
003a26b4  d8 70 8d e5                                      str r7, [sp, #0xd8]
003a26b8  0c 30 12 e5                                      ldr r3, [r2, #-0xc]
003a26bc  0c 20 98 e5                                      ldr r2, [r8, #0xc]
003a26c0  07 10 a0 e1                                      mov r1, r7
003a26c4  03 20 86 e7                                      str r2, [r6, r3]
003a26c8  44 30 9d e5                                      ldr r3, [sp, #0x44]
003a26cc  48 70 8d e5                                      str r7, [sp, #0x48]
003a26d0  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
003a26d4  00 00 86 e0                                      add r0, r6, r0
003a26d8  71 02 fe eb                                      bl #0x3230a4
003a26dc  10 20 98 e5                                      ldr r2, [r8, #0x10]
003a26e0  14 00 98 e5                                      ldr r0, [r8, #0x14]
003a26e4  08 30 86 e2                                      add r3, r6, #8
003a26e8  4c 20 8d e5                                      str r2, [sp, #0x4c]
003a26ec  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
003a26f0  07 10 a0 e1                                      mov r1, r7
003a26f4  02 00 83 e7                                      str r0, [r3, r2]
003a26f8  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
003a26fc  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
003a2700  00 00 83 e0                                      add r0, r3, r0
003a2704  66 02 fe eb                                      bl #0x3230a4
003a2708  04 20 98 e5                                      ldr r2, [r8, #4]
003a270c  18 00 98 e5                                      ldr r0, [r8, #0x18]
003a2710  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003a2714  44 20 8d e5                                      str r2, [sp, #0x44]
003a2718  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
003a271c  07 10 a0 e1                                      mov r1, r7
003a2720  02 00 86 e7                                      str r0, [r6, r2]
003a2724  4c 30 8d e5                                      str r3, [sp, #0x4c]
003a2728  44 30 9d e5                                      ldr r3, [sp, #0x44]
003a272c  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
003a2730  00 00 86 e0                                      add r0, r6, r0
003a2734  5a 02 fe eb                                      bl #0x3230a4
003a2738  78 34 9f e5                                      ldr r3, [pc, #0x478]
003a273c  78 24 9f e5                                      ldr r2, [pc, #0x478]
003a2740  28 00 86 e2                                      add r0, r6, #0x28
003a2744  03 30 95 e7                                      ldr r3, [r5, r3]
003a2748  02 20 95 e7                                      ldr r2, [r5, r2]
003a274c  68 70 8d e5                                      str r7, [sp, #0x68]
003a2750  20 10 83 e2                                      add r1, r3, #0x20
003a2754  0c c0 83 e2                                      add ip, r3, #0xc
003a2758  08 20 82 e2                                      add r2, r2, #8
003a275c  34 30 83 e2                                      add r3, r3, #0x34
003a2760  44 c0 8d e5                                      str ip, [sp, #0x44]
003a2764  8c 30 8d e5                                      str r3, [sp, #0x8c]
003a2768  4c 10 8d e5                                      str r1, [sp, #0x4c]
003a276c  50 20 8d e5                                      str r2, [sp, #0x50]
003a2770  54 70 8d e5                                      str r7, [sp, #0x54]
003a2774  58 70 8d e5                                      str r7, [sp, #0x58]
003a2778  5c 70 8d e5                                      str r7, [sp, #0x5c]
003a277c  60 70 8d e5                                      str r7, [sp, #0x60]
003a2780  64 70 8d e5                                      str r7, [sp, #0x64]
003a2784  b1 99 0d eb                                      bl #0x708e50
003a2788  30 c4 9f e5                                      ldr ip, [pc, #0x430]
003a278c  30 30 86 e2                                      add r3, r6, #0x30
003a2790  28 17 94 e5                                      ldr r1, [r4, #0x728]
003a2794  0c c0 95 e7                                      ldr ip, [r5, ip]
003a2798  24 27 94 e5                                      ldr r2, [r4, #0x724]
003a279c  03 00 a0 e1                                      mov r0, r3
003a27a0  08 c0 8c e2                                      add ip, ip, #8
003a27a4  50 c0 8d e5                                      str ip, [sp, #0x50]
003a27a8  08 c0 a0 e3                                      mov ip, #8
003a27ac  84 30 8d e5                                      str r3, [sp, #0x84]
003a27b0  88 30 8d e5                                      str r3, [sp, #0x88]
003a27b4  70 c0 8d e5                                      str ip, [sp, #0x70]
003a27b8  ca bb fd eb                                      bl #0x3116e8
003a27bc  70 30 9d e5                                      ldr r3, [sp, #0x70]
003a27c0  84 10 9d e5                                      ldr r1, [sp, #0x84]
003a27c4  88 00 9d e5                                      ldr r0, [sp, #0x88]
003a27c8  08 00 13 e3                                      tst r3, #8
003a27cc  01 20 a0 e1                                      mov r2, r1
003a27d0  05 00 00 0a                                      beq #0x3a27ec
003a27d4  02 00 13 e3                                      tst r3, #2
003a27d8  01 c0 a0 11                                      movne ip, r1
003a27dc  00 c0 a0 01                                      moveq ip, r0
003a27e0  58 c0 8d e5                                      str ip, [sp, #0x58]
003a27e4  54 00 8d e5                                      str r0, [sp, #0x54]
003a27e8  5c 10 8d e5                                      str r1, [sp, #0x5c]
003a27ec  10 00 13 e3                                      tst r3, #0x10
003a27f0  06 00 00 0a                                      beq #0x3a2810
003a27f4  03 00 13 e3                                      tst r3, #3
003a27f8  68 20 8d 15                                      strne r2, [sp, #0x68]
003a27fc  60 20 8d 15                                      strne r2, [sp, #0x60]
003a2800  64 20 8d 15                                      strne r2, [sp, #0x64]
003a2804  60 00 8d 05                                      streq r0, [sp, #0x60]
003a2808  68 20 8d 05                                      streq r2, [sp, #0x68]
003a280c  64 10 8d 05                                      streq r1, [sp, #0x64]
003a2810  0c 10 86 e2                                      add r1, r6, #0xc
003a2814  48 00 86 e2                                      add r0, r6, #0x48
003a2818  21 02 fe eb                                      bl #0x3230a4
003a281c  73 2e 84 e2                                      add r2, r4, #0x730
003a2820  14 20 8d e5                                      str r2, [sp, #0x14]
003a2824  14 10 9d e5                                      ldr r1, [sp, #0x14]
003a2828  00 20 e0 e3                                      mvn r2, #0
003a282c  cd cc 0c e3                                      movw ip, #0xcccd
003a2830  20 20 8d e5                                      str r2, [sp, #0x20]
003a2834  00 20 a0 e3                                      mov r2, #0
003a2838  00 30 a0 e3                                      mov r3, #0
003a283c  20 a0 8d e2                                      add sl, sp, #0x20
003a2840  cc bc 0c e3                                      movw fp, #0xcccc
003a2844  24 20 8d e5                                      str r2, [sp, #0x24]
003a2848  0c 10 81 e2                                      add r1, r1, #0xc
003a284c  cc cc 40 e3                                      movt ip, #0xccc
003a2850  34 20 8d e2                                      add r2, sp, #0x34
003a2854  30 30 8d e5                                      str r3, [sp, #0x30]
003a2858  28 30 8d e5                                      str r3, [sp, #0x28]
003a285c  2c 30 8d e5                                      str r3, [sp, #0x2c]
003a2860  14 10 8d e5                                      str r1, [sp, #0x14]
003a2864  0b b6 8b e1                                      orr fp, fp, fp, lsl #12
003a2868  18 c0 8d e5                                      str ip, [sp, #0x18]
003a286c  43 80 8d e2                                      add r8, sp, #0x43
003a2870  04 90 8a e2                                      add sb, sl, #4
003a2874  1c 20 8d e5                                      str r2, [sp, #0x1c]
003a2878  25 00 00 ea                                      b #0x3a2914
003a287c  20 00 9d e5                                      ldr r0, [sp, #0x20]
003a2880  95 5f 01 eb                                      bl #0x3fa6dc
003a2884  00 70 a0 e1                                      mov r7, r0
003a2888  50 08 e7 e7                                      ubfx r0, r0, #0x10, #8
003a288c  34 b0 fd eb                                      bl #0x30e964
003a2890  43 14 a0 e3                                      mov r1, #0x43000000
003a2894  7f 18 81 e2                                      add r1, r1, #0x7f0000
003a2898  fd b0 fd eb                                      bl #0x30ec94
003a289c  28 00 8d e5                                      str r0, [sp, #0x28]
003a28a0  57 04 e7 e7                                      ubfx r0, r7, #8, #8
003a28a4  2e b0 fd eb                                      bl #0x30e964
003a28a8  43 14 a0 e3                                      mov r1, #0x43000000
003a28ac  7f 18 81 e2                                      add r1, r1, #0x7f0000
003a28b0  f7 b0 fd eb                                      bl #0x30ec94
003a28b4  2c 00 8d e5                                      str r0, [sp, #0x2c]
003a28b8  77 00 ef e6                                      uxtb r0, r7
003a28bc  28 b0 fd eb                                      bl #0x30e964
003a28c0  43 14 a0 e3                                      mov r1, #0x43000000
003a28c4  7f 18 81 e2                                      add r1, r1, #0x7f0000
003a28c8  f1 b0 fd eb                                      bl #0x30ec94
003a28cc  38 37 94 e5                                      ldr r3, [r4, #0x738]
003a28d0  3c 77 94 e5                                      ldr r7, [r4, #0x73c]
003a28d4  30 00 8d e5                                      str r0, [sp, #0x30]
003a28d8  07 00 53 e1                                      cmp r3, r7
003a28dc  46 00 00 0a                                      beq #0x3a29fc
003a28e0  20 20 9d e5                                      ldr r2, [sp, #0x20]
003a28e4  00 20 83 e5                                      str r2, [r3]
003a28e8  24 20 9d e5                                      ldr r2, [sp, #0x24]
003a28ec  04 20 83 e5                                      str r2, [r3, #4]
003a28f0  28 20 9d e5                                      ldr r2, [sp, #0x28]
003a28f4  08 20 83 e5                                      str r2, [r3, #8]
003a28f8  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003a28fc  0c 20 83 e5                                      str r2, [r3, #0xc]
003a2900  30 20 9d e5                                      ldr r2, [sp, #0x30]
003a2904  10 20 83 e5                                      str r2, [r3, #0x10]
003a2908  38 37 94 e5                                      ldr r3, [r4, #0x738]
003a290c  14 30 83 e2                                      add r3, r3, #0x14
003a2910  38 37 84 e5                                      str r3, [r4, #0x738]
003a2914  94 30 9d e5                                      ldr r3, [sp, #0x94]
003a2918  02 00 13 e3                                      tst r3, #2
003a291c  0f 00 00 1a                                      bne #0x3a2960
003a2920  0a 10 a0 e1                                      mov r1, sl
003a2924  06 00 a0 e1                                      mov r0, r6
003a2928  aa b4 fd eb                                      bl #0x30fbd8
003a292c  06 00 a0 e1                                      mov r0, r6
003a2930  08 10 a0 e1                                      mov r1, r8
003a2934  20 b6 fd eb                                      bl #0x3101bc
003a2938  06 00 a0 e1                                      mov r0, r6
003a293c  09 10 a0 e1                                      mov r1, sb
003a2940  a4 b4 fd eb                                      bl #0x30fbd8
003a2944  94 30 9d e5                                      ldr r3, [sp, #0x94]
003a2948  02 00 13 e3                                      tst r3, #2
003a294c  ca ff ff 1a                                      bne #0x3a287c
003a2950  06 00 a0 e1                                      mov r0, r6
003a2954  08 10 a0 e1                                      mov r1, r8
003a2958  17 b6 fd eb                                      bl #0x3101bc
003a295c  c6 ff ff ea                                      b #0x3a287c
003a2960  06 00 a0 e1                                      mov r0, r6
003a2964  76 9a ff eb                                      bl #0x389344
003a2968  d8 32 94 e5                                      ldr r3, [r4, #0x2d8]
003a296c  00 00 53 e3                                      cmp r3, #0
003a2970  19 00 00 0a                                      beq #0x3a29dc
003a2974  08 20 93 e5                                      ldr r2, [r3, #8]
003a2978  44 32 9f e5                                      ldr r3, [pc, #0x244]
003a297c  3c 60 8d e2                                      add r6, sp, #0x3c
003a2980  01 c0 a0 e3                                      mov ip, #1
003a2984  03 30 95 e7                                      ldr r3, [r5, r3]
003a2988  06 00 a0 e1                                      mov r0, r6
003a298c  10 10 93 e5                                      ldr r1, [r3, #0x10]
003a2990  30 32 9f e5                                      ldr r3, [pc, #0x230]
003a2994  1c 10 91 e5                                      ldr r1, [r1, #0x1c]
003a2998  03 30 8f e0                                      add r3, pc, r3
003a299c  00 c0 8d e5                                      str ip, [sp]
003a29a0  ae dc fe eb                                      bl #0x359c60
003a29a4  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
003a29a8  e0 00 8d e2                                      add r0, sp, #0xe0
003a29ac  38 30 8d e5                                      str r3, [sp, #0x38]
003a29b0  00 00 53 e3                                      cmp r3, #0
003a29b4  00 20 93 15                                      ldrne r2, [r3]
003a29b8  01 20 82 12                                      addne r2, r2, #1
003a29bc  00 20 83 15                                      strne r2, [r3]
003a29c0  38 30 9d 15                                      ldrne r3, [sp, #0x38]
003a29c4  40 27 94 e5                                      ldr r2, [r4, #0x740]
003a29c8  40 37 84 e5                                      str r3, [r4, #0x740]
003a29cc  a8 20 20 e5                                      str r2, [r0, #-0xa8]!
003a29d0  84 b8 fd eb                                      bl #0x310be8
003a29d4  06 00 a0 e1                                      mov r0, r6
003a29d8  82 b8 fd eb                                      bl #0x310be8
003a29dc  10 10 9d e5                                      ldr r1, [sp, #0x10]
003a29e0  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
003a29e4  01 30 95 e7                                      ldr r3, [r5, r1]
003a29e8  00 30 93 e5                                      ldr r3, [r3]
003a29ec  03 00 52 e1                                      cmp r2, r3
003a29f0  6b 00 00 1a                                      bne #0x3a2ba4
003a29f4  e4 d0 8d e2                                      add sp, sp, #0xe4
003a29f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003a29fc  34 37 94 e5                                      ldr r3, [r4, #0x734]
003a2a00  07 30 63 e0                                      rsb r3, r3, r7
003a2a04  43 31 a0 e1                                      asr r3, r3, #2
003a2a08  83 20 83 e0                                      add r2, r3, r3, lsl #1
003a2a0c  02 22 82 e0                                      add r2, r2, r2, lsl #4
003a2a10  02 24 82 e0                                      add r2, r2, r2, lsl #8
003a2a14  02 28 82 e0                                      add r2, r2, r2, lsl #16
003a2a18  02 21 83 e0                                      add r2, r3, r2, lsl #2
003a2a1c  01 00 52 e3                                      cmp r2, #1
003a2a20  02 30 82 20                                      addhs r3, r2, r2
003a2a24  01 30 82 32                                      addlo r3, r2, #1
003a2a28  0b 00 53 e1                                      cmp r3, fp
003a2a2c  55 00 00 8a                                      bhi #0x3a2b88
003a2a30  03 00 52 e1                                      cmp r2, r3
003a2a34  53 00 00 8a                                      bhi #0x3a2b88
003a2a38  03 10 a0 e1                                      mov r1, r3
003a2a3c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003a2a40  14 00 9d e5                                      ldr r0, [sp, #0x14]
003a2a44  34 30 8d e5                                      str r3, [sp, #0x34]
003a2a48  c8 fe ff eb                                      bl #0x3a2570
003a2a4c  34 27 94 e5                                      ldr r2, [r4, #0x734]
003a2a50  00 30 a0 e1                                      mov r3, r0
003a2a54  07 70 62 e0                                      rsb r7, r2, r7
003a2a58  47 71 a0 e1                                      asr r7, r7, #2
003a2a5c  87 e0 87 e0                                      add lr, r7, r7, lsl #1
003a2a60  0e e2 8e e0                                      add lr, lr, lr, lsl #4
003a2a64  0e e4 8e e0                                      add lr, lr, lr, lsl #8
003a2a68  0e e8 8e e0                                      add lr, lr, lr, lsl #16
003a2a6c  0e e1 87 e0                                      add lr, r7, lr, lsl #2
003a2a70  00 00 5e e3                                      cmp lr, #0
003a2a74  00 e0 a0 d1                                      movle lr, r0
003a2a78  11 00 00 da                                      ble #0x3a2ac4
003a2a7c  0e 00 a0 e1                                      mov r0, lr
003a2a80  03 10 a0 e1                                      mov r1, r3
003a2a84  00 c0 92 e5                                      ldr ip, [r2]
003a2a88  01 00 50 e2                                      subs r0, r0, #1
003a2a8c  00 c0 81 e5                                      str ip, [r1]
003a2a90  04 c0 92 e5                                      ldr ip, [r2, #4]
003a2a94  04 c0 81 e5                                      str ip, [r1, #4]
003a2a98  08 c0 92 e5                                      ldr ip, [r2, #8]
003a2a9c  08 c0 81 e5                                      str ip, [r1, #8]
003a2aa0  0c c0 92 e5                                      ldr ip, [r2, #0xc]
003a2aa4  0c c0 81 e5                                      str ip, [r1, #0xc]
003a2aa8  10 c0 92 e5                                      ldr ip, [r2, #0x10]
003a2aac  14 20 82 e2                                      add r2, r2, #0x14
003a2ab0  10 c0 81 e5                                      str ip, [r1, #0x10]
003a2ab4  14 10 81 e2                                      add r1, r1, #0x14
003a2ab8  f1 ff ff 1a                                      bne #0x3a2a84
003a2abc  14 c0 a0 e3                                      mov ip, #0x14
003a2ac0  9c 3e 2e e0                                      mla lr, ip, lr, r3
003a2ac4  20 20 9d e5                                      ldr r2, [sp, #0x20]
003a2ac8  14 70 8e e2                                      add r7, lr, #0x14
003a2acc  00 20 8e e5                                      str r2, [lr]
003a2ad0  24 20 9d e5                                      ldr r2, [sp, #0x24]
003a2ad4  04 20 8e e5                                      str r2, [lr, #4]
003a2ad8  28 20 9d e5                                      ldr r2, [sp, #0x28]
003a2adc  08 20 8e e5                                      str r2, [lr, #8]
003a2ae0  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003a2ae4  0c 20 8e e5                                      str r2, [lr, #0xc]
003a2ae8  30 20 9d e5                                      ldr r2, [sp, #0x30]
003a2aec  10 20 8e e5                                      str r2, [lr, #0x10]
003a2af0  38 27 94 e5                                      ldr r2, [r4, #0x738]
003a2af4  34 07 94 e5                                      ldr r0, [r4, #0x734]
003a2af8  00 00 52 e1                                      cmp r2, r0
003a2afc  09 00 00 0a                                      beq #0x3a2b28
003a2b00  14 10 42 e2                                      sub r1, r2, #0x14
003a2b04  18 c0 9d e5                                      ldr ip, [sp, #0x18]
003a2b08  01 10 60 e0                                      rsb r1, r0, r1
003a2b0c  21 11 a0 e1                                      lsr r1, r1, #2
003a2b10  9c 01 01 e0                                      mul r1, ip, r1
003a2b14  13 c0 e0 e3                                      mvn ip, #0x13
003a2b18  03 11 c1 e3                                      bic r1, r1, #0xc0000000
003a2b1c  9c 01 01 e0                                      mul r1, ip, r1
003a2b20  0c 10 81 e0                                      add r1, r1, ip
003a2b24  01 20 82 e0                                      add r2, r2, r1
003a2b28  00 00 52 e3                                      cmp r2, #0
003a2b2c  3c 17 94 e5                                      ldr r1, [r4, #0x73c]
003a2b30  0d 00 00 0a                                      beq #0x3a2b6c
003a2b34  01 20 62 e0                                      rsb r2, r2, r1
003a2b38  42 21 a0 e1                                      asr r2, r2, #2
003a2b3c  82 10 82 e0                                      add r1, r2, r2, lsl #1
003a2b40  01 12 81 e0                                      add r1, r1, r1, lsl #4
003a2b44  01 14 81 e0                                      add r1, r1, r1, lsl #8
003a2b48  01 18 81 e0                                      add r1, r1, r1, lsl #16
003a2b4c  01 11 82 e0                                      add r1, r2, r1, lsl #2
003a2b50  14 20 a0 e3                                      mov r2, #0x14
003a2b54  92 01 01 e0                                      mul r1, r2, r1
003a2b58  80 00 51 e3                                      cmp r1, #0x80
003a2b5c  0c 00 00 8a                                      bhi #0x3a2b94
003a2b60  0c 30 8d e5                                      str r3, [sp, #0xc]
003a2b64  e5 98 0d eb                                      bl #0x708f00
003a2b68  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003a2b6c  34 20 9d e5                                      ldr r2, [sp, #0x34]
003a2b70  14 c0 a0 e3                                      mov ip, #0x14
003a2b74  34 37 84 e5                                      str r3, [r4, #0x734]
003a2b78  9c 32 23 e0                                      mla r3, ip, r2, r3
003a2b7c  38 77 84 e5                                      str r7, [r4, #0x738]
003a2b80  3c 37 84 e5                                      str r3, [r4, #0x73c]
003a2b84  62 ff ff ea                                      b #0x3a2914
003a2b88  cc 3c 0c e3                                      movw r3, #0xcccc
003a2b8c  03 36 83 e1                                      orr r3, r3, r3, lsl #12
003a2b90  a8 ff ff ea                                      b #0x3a2a38
003a2b94  0c 30 8d e5                                      str r3, [sp, #0xc]
003a2b98  28 b6 fd eb                                      bl #0x310440
003a2b9c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003a2ba0  f1 ff ff ea                                      b #0x3a2b6c
003a2ba4  d9 ad fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003a2ba8  40 24 5f 00 ac 40 00 00 cc 38 00 00 30 37 00 00  .byte 0x40, 0x24, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xcc, 0x38, 0x00, 0x00, 0x30, 0x37, 0x00, 0x00
003a2bb8  40 0e 00 00 b4 07 00 00 50 4a 00 00 f4 37 00 00  .byte 0x40, 0x0e, 0x00, 0x00, 0xb4, 0x07, 0x00, 0x00, 0x50, 0x4a, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003a2bc8  c8 de 51 00                                      .byte 0xc8, 0xde, 0x51, 0x00

; FUNCTION 0x003a2bcc, declared_size=136, range_size=136, mode=arm
; class-group: SlotContainer
; alias: _ZN13SlotContainerC1EN10ObjectBase6GO_IDSE
; demangled: SlotContainer::SlotContainer(ObjectBase::GO_IDS)
; decoder-mode: arm
003a2bcc  70 40 2d e9                                      push {r4, r5, r6, lr}
003a2bd0  74 50 9f e5                                      ldr r5, [pc, #0x74]
003a2bd4  00 40 a0 e1                                      mov r4, r0
003a2bd8  53 fc ff eb                                      bl #0x3a1d2c
003a2bdc  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003a2be0  05 50 8f e0                                      add r5, pc, r5
003a2be4  71 3e 84 e2                                      add r3, r4, #0x710
003a2be8  02 20 95 e7                                      ldr r2, [r5, r2]
003a2bec  04 30 83 e2                                      add r3, r3, #4
003a2bf0  03 00 a0 e1                                      mov r0, r3
003a2bf4  08 c0 82 e2                                      add ip, r2, #8
003a2bf8  01 1c 82 e2                                      add r1, r2, #0x100
003a2bfc  f4 20 82 e2                                      add r2, r2, #0xf4
003a2c00  04 20 84 e5                                      str r2, [r4, #4]
003a2c04  24 10 84 e5                                      str r1, [r4, #0x24]
003a2c08  24 37 84 e5                                      str r3, [r4, #0x724]
003a2c0c  28 37 84 e5                                      str r3, [r4, #0x728]
003a2c10  00 c0 84 e5                                      str ip, [r4]
003a2c14  10 10 a0 e3                                      mov r1, #0x10
003a2c18  97 ba fd eb                                      bl #0x31167c
003a2c1c  24 17 94 e5                                      ldr r1, [r4, #0x724]
003a2c20  00 30 a0 e3                                      mov r3, #0
003a2c24  00 20 e0 e3                                      mvn r2, #0
003a2c28  00 30 c1 e5                                      strb r3, [r1]
003a2c2c  04 00 a0 e1                                      mov r0, r4
003a2c30  30 27 84 e5                                      str r2, [r4, #0x730]
003a2c34  40 37 84 e5                                      str r3, [r4, #0x740]
003a2c38  2c 27 84 e5                                      str r2, [r4, #0x72c]
003a2c3c  34 37 84 e5                                      str r3, [r4, #0x734]
003a2c40  38 37 84 e5                                      str r3, [r4, #0x738]
003a2c44  3c 37 84 e5                                      str r3, [r4, #0x73c]
003a2c48  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003a2c4c  b0 1e 5f 00 c4 49 00 00                          .byte 0xb0, 0x1e, 0x5f, 0x00, 0xc4, 0x49, 0x00, 0x00

; FUNCTION 0x003a2c54, declared_size=136, range_size=136, mode=arm
; class-group: SlotContainer
; alias: _ZN13SlotContainerC2EN10ObjectBase6GO_IDSE
; demangled: SlotContainer::SlotContainer(ObjectBase::GO_IDS)
; decoder-mode: arm
003a2c54  70 40 2d e9                                      push {r4, r5, r6, lr}
003a2c58  74 50 9f e5                                      ldr r5, [pc, #0x74]
003a2c5c  00 40 a0 e1                                      mov r4, r0
003a2c60  31 fc ff eb                                      bl #0x3a1d2c
003a2c64  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003a2c68  05 50 8f e0                                      add r5, pc, r5
003a2c6c  71 3e 84 e2                                      add r3, r4, #0x710
003a2c70  02 20 95 e7                                      ldr r2, [r5, r2]
003a2c74  04 30 83 e2                                      add r3, r3, #4
003a2c78  03 00 a0 e1                                      mov r0, r3
003a2c7c  08 c0 82 e2                                      add ip, r2, #8
003a2c80  01 1c 82 e2                                      add r1, r2, #0x100
003a2c84  f4 20 82 e2                                      add r2, r2, #0xf4
003a2c88  04 20 84 e5                                      str r2, [r4, #4]
003a2c8c  24 10 84 e5                                      str r1, [r4, #0x24]
003a2c90  24 37 84 e5                                      str r3, [r4, #0x724]
003a2c94  28 37 84 e5                                      str r3, [r4, #0x728]
003a2c98  00 c0 84 e5                                      str ip, [r4]
003a2c9c  10 10 a0 e3                                      mov r1, #0x10
003a2ca0  75 ba fd eb                                      bl #0x31167c
003a2ca4  24 17 94 e5                                      ldr r1, [r4, #0x724]
003a2ca8  00 30 a0 e3                                      mov r3, #0
003a2cac  00 20 e0 e3                                      mvn r2, #0
003a2cb0  00 30 c1 e5                                      strb r3, [r1]
003a2cb4  04 00 a0 e1                                      mov r0, r4
003a2cb8  30 27 84 e5                                      str r2, [r4, #0x730]
003a2cbc  40 37 84 e5                                      str r3, [r4, #0x740]
003a2cc0  2c 27 84 e5                                      str r2, [r4, #0x72c]
003a2cc4  34 37 84 e5                                      str r3, [r4, #0x734]
003a2cc8  38 37 84 e5                                      str r3, [r4, #0x738]
003a2ccc  3c 37 84 e5                                      str r3, [r4, #0x73c]
003a2cd0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003a2cd4  28 1e 5f 00 c4 49 00 00                          .byte 0x28, 0x1e, 0x5f, 0x00, 0xc4, 0x49, 0x00, 0x00

; FUNCTION 0x003a2cdc, declared_size=8, range_size=8, mode=arm
; class-group: SlotContainer
; alias: _ZThn4_N13SlotContainer17DeclarePropertiesEv
; demangled: non-virtual thunk to SlotContainer::DeclareProperties()
; decoder-mode: arm
003a2cdc  04 00 40 e2                                      sub r0, r0, #4
003a2ce0  ff ff ff ea                                      b #0x3a2ce4

; FUNCTION 0x003a2ce4, declared_size=312, range_size=312, mode=arm
; class-group: SlotContainer
; alias: _ZN13SlotContainer17DeclarePropertiesEv
; demangled: SlotContainer::DeclareProperties()
; decoder-mode: arm
003a2ce4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003a2ce8  18 51 9f e5                                      ldr r5, [pc, #0x118]
003a2cec  18 31 9f e5                                      ldr r3, [pc, #0x118]
003a2cf0  3c d0 4d e2                                      sub sp, sp, #0x3c
003a2cf4  05 50 8f e0                                      add r5, pc, r5
003a2cf8  03 b0 95 e7                                      ldr fp, [r5, r3]
003a2cfc  1c 70 8d e2                                      add r7, sp, #0x1c
003a2d00  00 90 a0 e1                                      mov sb, r0
003a2d04  00 30 9b e5                                      ldr r3, [fp]
003a2d08  00 40 a0 e3                                      mov r4, #0
003a2d0c  04 80 8d e2                                      add r8, sp, #4
003a2d10  34 30 8d e5                                      str r3, [sp, #0x34]
003a2d14  5c fc ff eb                                      bl #0x3a1e8c
003a2d18  07 00 a0 e1                                      mov r0, r7
003a2d1c  10 10 a0 e3                                      mov r1, #0x10
003a2d20  2c 70 8d e5                                      str r7, [sp, #0x2c]
003a2d24  30 70 8d e5                                      str r7, [sp, #0x30]
003a2d28  53 ba fd eb                                      bl #0x31167c
003a2d2c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
003a2d30  08 00 a0 e1                                      mov r0, r8
003a2d34  d4 60 9f e5                                      ldr r6, [pc, #0xd4]
003a2d38  00 40 c3 e5                                      strb r4, [r3]
003a2d3c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003a2d40  30 10 9d e5                                      ldr r1, [sp, #0x30]
003a2d44  14 80 8d e5                                      str r8, [sp, #0x14]
003a2d48  18 80 8d e5                                      str r8, [sp, #0x18]
003a2d4c  65 ba fd eb                                      bl #0x3116e8
003a2d50  04 10 a0 e1                                      mov r1, r4
003a2d54  38 00 a0 e3                                      mov r0, #0x38
003a2d58  04 b6 fd eb                                      bl #0x310570
003a2d5c  00 40 a0 e1                                      mov r4, r0
003a2d60  ac 00 9f e5                                      ldr r0, [pc, #0xac]
003a2d64  04 30 a0 e1                                      mov r3, r4
003a2d68  06 60 8f e0                                      add r6, pc, r6
003a2d6c  00 00 95 e7                                      ldr r0, [r5, r0]
003a2d70  06 10 a0 e1                                      mov r1, r6
003a2d74  05 20 86 e2                                      add r2, r6, #5
003a2d78  08 00 80 e2                                      add r0, r0, #8
003a2d7c  08 00 83 e4                                      str r0, [r3], #8
003a2d80  03 00 a0 e1                                      mov r0, r3
003a2d84  18 30 84 e5                                      str r3, [r4, #0x18]
003a2d88  1c 30 84 e5                                      str r3, [r4, #0x1c]
003a2d8c  55 ba fd eb                                      bl #0x3116e8
003a2d90  80 30 9f e5                                      ldr r3, [pc, #0x80]
003a2d94  71 ae 89 e2                                      add sl, sb, #0x710
003a2d98  04 a0 8a e2                                      add sl, sl, #4
003a2d9c  03 30 95 e7                                      ldr r3, [r5, r3]
003a2da0  04 90 89 e2                                      add sb, sb, #4
003a2da4  04 00 a0 e1                                      mov r0, r4
003a2da8  08 30 83 e2                                      add r3, r3, #8
003a2dac  0a a0 69 e0                                      rsb sl, sb, sl
003a2db0  04 a0 84 e5                                      str sl, [r4, #4]
003a2db4  20 30 80 e4                                      str r3, [r0], #0x20
003a2db8  30 00 84 e5                                      str r0, [r4, #0x30]
003a2dbc  34 00 84 e5                                      str r0, [r4, #0x34]
003a2dc0  18 10 9d e5                                      ldr r1, [sp, #0x18]
003a2dc4  14 20 9d e5                                      ldr r2, [sp, #0x14]
003a2dc8  46 ba fd eb                                      bl #0x3116e8
003a2dcc  04 20 a0 e1                                      mov r2, r4
003a2dd0  06 10 a0 e1                                      mov r1, r6
003a2dd4  09 00 a0 e1                                      mov r0, sb
003a2dd8  c1 c3 05 eb                                      bl #0x513ce4
003a2ddc  08 00 a0 e1                                      mov r0, r8
003a2de0  f1 c2 fd eb                                      bl #0x3139ac
003a2de4  07 00 a0 e1                                      mov r0, r7
003a2de8  ef c2 fd eb                                      bl #0x3139ac
003a2dec  34 20 9d e5                                      ldr r2, [sp, #0x34]
003a2df0  00 30 9b e5                                      ldr r3, [fp]
003a2df4  03 00 52 e1                                      cmp r2, r3
003a2df8  01 00 00 1a                                      bne #0x3a2e04
003a2dfc  3c d0 8d e2                                      add sp, sp, #0x3c
003a2e00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003a2e04  41 ad fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003a2e08  9c 1d 5f 00 ac 40 00 00 58 03 52 00 30 23 00 00  .byte 0x9c, 0x1d, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x58, 0x03, 0x52, 0x00, 0x30, 0x23, 0x00, 0x00
003a2e18  94 34 00 00                                      .byte 0x94, 0x34, 0x00, 0x00
