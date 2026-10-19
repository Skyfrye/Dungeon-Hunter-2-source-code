; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006e21c0, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplateC2EPKc
; demangled: glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(char const*)
; decoder-mode: arm
006e21c0  24 20 9f e5                                      ldr r2, [pc, #0x24]
006e21c4  24 c0 9f e5                                      ldr ip, [pc, #0x24]
006e21c8  00 10 a0 e3                                      mov r1, #0
006e21cc  02 20 8f e0                                      add r2, pc, r2
006e21d0  0c c0 92 e7                                      ldr ip, [r2, ip]
006e21d4  0c 10 80 e5                                      str r1, [r0, #0xc]
006e21d8  04 10 80 e5                                      str r1, [r0, #4]
006e21dc  08 c0 8c e2                                      add ip, ip, #8
006e21e0  00 c0 80 e5                                      str ip, [r0]
006e21e4  08 10 80 e5                                      str r1, [r0, #8]
006e21e8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006e21ec  c4 28 2b 00 7c 15 00 00                          .byte 0xc4, 0x28, 0x2b, 0x00, 0x7c, 0x15, 0x00, 0x00

; FUNCTION 0x006e21f4, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplateC1EPKc
; demangled: glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(char const*)
; decoder-mode: arm
006e21f4  24 20 9f e5                                      ldr r2, [pc, #0x24]
006e21f8  24 c0 9f e5                                      ldr ip, [pc, #0x24]
006e21fc  00 10 a0 e3                                      mov r1, #0
006e2200  02 20 8f e0                                      add r2, pc, r2
006e2204  0c c0 92 e7                                      ldr ip, [r2, ip]
006e2208  0c 10 80 e5                                      str r1, [r0, #0xc]
006e220c  04 10 80 e5                                      str r1, [r0, #4]
006e2210  08 c0 8c e2                                      add ip, ip, #8
006e2214  00 c0 80 e5                                      str ip, [r0]
006e2218  08 10 80 e5                                      str r1, [r0, #8]
006e221c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
006e2220  90 28 2b 00 7c 15 00 00                          .byte 0x90, 0x28, 0x2b, 0x00, 0x7c, 0x15, 0x00, 0x00

; FUNCTION 0x006e2248, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplateD1Ev
; demangled: glitch::collada::CAnimationSetTransformationTemplate::~CAnimationSetTransformationTemplate()
; decoder-mode: arm
006e2248  24 30 9f e5                                      ldr r3, [pc, #0x24]
006e224c  24 20 9f e5                                      ldr r2, [pc, #0x24]
006e2250  10 40 2d e9                                      push {r4, lr}
006e2254  03 30 8f e0                                      add r3, pc, r3
006e2258  02 20 93 e7                                      ldr r2, [r3, r2]
006e225c  00 40 a0 e1                                      mov r4, r0
006e2260  08 20 82 e2                                      add r2, r2, #8
006e2264  00 20 80 e5                                      str r2, [r0]
006e2268  ef 14 fe eb                                      bl #0x66762c
006e226c  04 00 a0 e1                                      mov r0, r4
006e2270  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006e2274  3c 28 2b 00 7c 15 00 00                          .byte 0x3c, 0x28, 0x2b, 0x00, 0x7c, 0x15, 0x00, 0x00

; FUNCTION 0x006e227c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplateD0Ev
; demangled: glitch::collada::CAnimationSetTransformationTemplate::~CAnimationSetTransformationTemplate()
; decoder-mode: arm
006e227c  10 40 2d e9                                      push {r4, lr}
006e2280  00 40 a0 e1                                      mov r4, r0
006e2284  ef ff ff eb                                      bl #0x6e2248
006e2288  04 00 a0 e1                                      mov r0, r4
006e228c  07 b0 f0 eb                                      bl #0x30e2b0
006e2290  04 00 a0 e1                                      mov r0, r4
006e2294  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006e2298, declared_size=52, range_size=52, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplateD2Ev
; demangled: glitch::collada::CAnimationSetTransformationTemplate::~CAnimationSetTransformationTemplate()
; decoder-mode: arm
006e2298  24 30 9f e5                                      ldr r3, [pc, #0x24]
006e229c  24 20 9f e5                                      ldr r2, [pc, #0x24]
006e22a0  10 40 2d e9                                      push {r4, lr}
006e22a4  03 30 8f e0                                      add r3, pc, r3
006e22a8  02 20 93 e7                                      ldr r2, [r3, r2]
006e22ac  00 40 a0 e1                                      mov r4, r0
006e22b0  08 20 82 e2                                      add r2, r2, #8
006e22b4  00 20 80 e5                                      str r2, [r0]
006e22b8  db 14 fe eb                                      bl #0x66762c
006e22bc  04 00 a0 e1                                      mov r0, r4
006e22c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006e22c4  ec 27 2b 00 7c 15 00 00                          .byte 0xec, 0x27, 0x2b, 0x00, 0x7c, 0x15, 0x00, 0x00

; FUNCTION 0x006e22cc, declared_size=260, range_size=260, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplate16isAnimationExistEPKNS0_8SChannelE
; demangled: glitch::collada::CAnimationSetTransformationTemplate::isAnimationExist(glitch::collada::SChannel const*)
; decoder-mode: arm
006e22cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e22d0  04 30 90 e5                                      ldr r3, [r0, #4]
006e22d4  08 20 90 e5                                      ldr r2, [r0, #8]
006e22d8  00 50 a0 e1                                      mov r5, r0
006e22dc  01 60 a0 e1                                      mov r6, r1
006e22e0  02 20 63 e0                                      rsb r2, r3, r2
006e22e4  22 21 b0 e1                                      lsrs r2, r2, #2
006e22e8  29 00 00 0a                                      beq #0x6e2394
006e22ec  00 40 a0 e3                                      mov r4, #0
006e22f0  01 80 a0 e3                                      mov r8, #1
006e22f4  14 00 00 ea                                      b #0x6e234c
006e22f8  08 30 96 e5                                      ldr r3, [r6, #8]
006e22fc  0d 00 53 e3                                      cmp r3, #0xd
006e2300  1d 00 00 8a                                      bhi #0x6e237c
006e2304  18 33 a0 e1                                      lsl r3, r8, r3
006e2308  0f 0b 13 e3                                      tst r3, #0x3c00
006e230c  01 00 a0 e3                                      mov r0, #1
006e2310  28 00 00 1a                                      bne #0x6e23b8
006e2314  3e 0e 13 e3                                      tst r3, #0x3e0
006e2318  1f 00 00 1a                                      bne #0x6e239c
006e231c  1e 00 13 e3                                      tst r3, #0x1e
006e2320  15 00 00 0a                                      beq #0x6e237c
006e2324  04 30 95 e5                                      ldr r3, [r5, #4]
006e2328  07 20 93 e7                                      ldr r2, [r3, r7]
006e232c  04 00 92 e5                                      ldr r0, [r2, #4]
006e2330  01 00 50 e3                                      cmp r0, #1
006e2334  1d 00 00 0a                                      beq #0x6e23b0
006e2338  08 20 95 e5                                      ldr r2, [r5, #8]
006e233c  01 40 84 e2                                      add r4, r4, #1
006e2340  02 20 63 e0                                      rsb r2, r3, r2
006e2344  42 01 54 e1                                      cmp r4, r2, asr #2
006e2348  11 00 00 2a                                      bhs #0x6e2394
006e234c  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
006e2350  04 71 a0 e1                                      lsl r7, r4, #2
006e2354  08 30 93 e5                                      ldr r3, [r3, #8]
006e2358  03 00 a0 e1                                      mov r0, r3
006e235c  00 30 93 e5                                      ldr r3, [r3]
006e2360  0f e0 a0 e1                                      mov lr, pc
006e2364  54 f0 93 e5                                      ldr pc, [r3, #0x54]
006e2368  00 10 a0 e1                                      mov r1, r0
006e236c  04 00 96 e5                                      ldr r0, [r6, #4]
006e2370  e9 af f0 eb                                      bl #0x30e31c
006e2374  00 00 50 e3                                      cmp r0, #0
006e2378  de ff ff 0a                                      beq #0x6e22f8
006e237c  04 30 95 e5                                      ldr r3, [r5, #4]
006e2380  08 20 95 e5                                      ldr r2, [r5, #8]
006e2384  01 40 84 e2                                      add r4, r4, #1
006e2388  02 20 63 e0                                      rsb r2, r3, r2
006e238c  42 01 54 e1                                      cmp r4, r2, asr #2
006e2390  ed ff ff 3a                                      blo #0x6e234c
006e2394  00 00 a0 e3                                      mov r0, #0
006e2398  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e239c  04 30 95 e5                                      ldr r3, [r5, #4]
006e23a0  07 20 93 e7                                      ldr r2, [r3, r7]
006e23a4  04 10 92 e5                                      ldr r1, [r2, #4]
006e23a8  05 00 51 e3                                      cmp r1, #5
006e23ac  e1 ff ff 1a                                      bne #0x6e2338
006e23b0  00 00 c2 e5                                      strb r0, [r2]
006e23b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e23b8  04 30 95 e5                                      ldr r3, [r5, #4]
006e23bc  07 20 93 e7                                      ldr r2, [r3, r7]
006e23c0  04 10 92 e5                                      ldr r1, [r2, #4]
006e23c4  0a 00 51 e3                                      cmp r1, #0xa
006e23c8  da ff ff 1a                                      bne #0x6e2338
006e23cc  f7 ff ff ea                                      b #0x6e23b0

; FUNCTION 0x006e23d0, declared_size=100, range_size=100, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZNK6glitch7collada35CAnimationSetTransformationTemplate15getDefaultValueEPKNS0_8SChannelEPPv
; demangled: glitch::collada::CAnimationSetTransformationTemplate::getDefaultValue(glitch::collada::SChannel const*, void**) const
; decoder-mode: arm
006e23d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006e23d4  04 40 90 e5                                      ldr r4, [r0, #4]
006e23d8  08 30 90 e5                                      ldr r3, [r0, #8]
006e23dc  00 50 a0 e1                                      mov r5, r0
006e23e0  01 70 a0 e1                                      mov r7, r1
006e23e4  03 00 54 e1                                      cmp r4, r3
006e23e8  02 60 a0 e1                                      mov r6, r2
006e23ec  03 00 00 1a                                      bne #0x6e2400
006e23f0  0d 00 00 ea                                      b #0x6e242c
006e23f4  08 30 95 e5                                      ldr r3, [r5, #8]
006e23f8  03 00 54 e1                                      cmp r4, r3
006e23fc  0a 00 00 0a                                      beq #0x6e242c
006e2400  00 30 94 e5                                      ldr r3, [r4]
006e2404  07 10 a0 e1                                      mov r1, r7
006e2408  06 20 a0 e1                                      mov r2, r6
006e240c  08 00 93 e5                                      ldr r0, [r3, #8]
006e2410  04 40 84 e2                                      add r4, r4, #4
006e2414  53 0f 80 e2                                      add r0, r0, #0x14c
006e2418  a7 e8 fc eb                                      bl #0x61c6bc
006e241c  00 00 50 e3                                      cmp r0, #0
006e2420  f3 ff ff 0a                                      beq #0x6e23f4
006e2424  01 00 a0 e3                                      mov r0, #1
006e2428  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
006e242c  00 00 a0 e3                                      mov r0, #0
006e2430  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006e24e8, declared_size=356, range_size=356, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplate24addTransformationTargetsEPNS0_10CSceneNodeE
; demangled: glitch::collada::CAnimationSetTransformationTemplate::addTransformationTargets(glitch::collada::CSceneNode*)
; decoder-mode: arm
006e24e8  70 40 2d e9                                      push {r4, r5, r6, lr}
006e24ec  00 40 a0 e1                                      mov r4, r0
006e24f0  08 d0 4d e2                                      sub sp, sp, #8
006e24f4  01 50 a0 e1                                      mov r5, r1
006e24f8  10 00 a0 e3                                      mov r0, #0x10
006e24fc  00 10 a0 e3                                      mov r1, #0
006e2500  29 47 f9 eb                                      bl #0x5341ac
006e2504  00 30 a0 e3                                      mov r3, #0
006e2508  04 00 8d e5                                      str r0, [sp, #4]
006e250c  00 30 c0 e5                                      strb r3, [r0]
006e2510  04 30 9d e5                                      ldr r3, [sp, #4]
006e2514  01 20 a0 e3                                      mov r2, #1
006e2518  04 60 84 e2                                      add r6, r4, #4
006e251c  04 20 83 e5                                      str r2, [r3, #4]
006e2520  04 30 9d e5                                      ldr r3, [sp, #4]
006e2524  08 50 83 e5                                      str r5, [r3, #8]
006e2528  08 10 94 e5                                      ldr r1, [r4, #8]
006e252c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006e2530  03 00 51 e1                                      cmp r1, r3
006e2534  38 00 00 0a                                      beq #0x6e261c
006e2538  04 30 9d e5                                      ldr r3, [sp, #4]
006e253c  00 30 81 e5                                      str r3, [r1]
006e2540  08 30 94 e5                                      ldr r3, [r4, #8]
006e2544  04 30 83 e2                                      add r3, r3, #4
006e2548  08 30 84 e5                                      str r3, [r4, #8]
006e254c  00 10 a0 e3                                      mov r1, #0
006e2550  10 00 a0 e3                                      mov r0, #0x10
006e2554  14 47 f9 eb                                      bl #0x5341ac
006e2558  00 30 a0 e3                                      mov r3, #0
006e255c  04 00 8d e5                                      str r0, [sp, #4]
006e2560  00 30 c0 e5                                      strb r3, [r0]
006e2564  04 30 9d e5                                      ldr r3, [sp, #4]
006e2568  05 20 a0 e3                                      mov r2, #5
006e256c  04 20 83 e5                                      str r2, [r3, #4]
006e2570  04 30 9d e5                                      ldr r3, [sp, #4]
006e2574  08 50 83 e5                                      str r5, [r3, #8]
006e2578  08 10 94 e5                                      ldr r1, [r4, #8]
006e257c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006e2580  03 00 51 e1                                      cmp r1, r3
006e2584  28 00 00 0a                                      beq #0x6e262c
006e2588  04 30 9d e5                                      ldr r3, [sp, #4]
006e258c  00 30 81 e5                                      str r3, [r1]
006e2590  08 30 94 e5                                      ldr r3, [r4, #8]
006e2594  04 30 83 e2                                      add r3, r3, #4
006e2598  08 30 84 e5                                      str r3, [r4, #8]
006e259c  00 10 a0 e3                                      mov r1, #0
006e25a0  10 00 a0 e3                                      mov r0, #0x10
006e25a4  00 47 f9 eb                                      bl #0x5341ac
006e25a8  00 30 a0 e3                                      mov r3, #0
006e25ac  04 00 8d e5                                      str r0, [sp, #4]
006e25b0  00 30 c0 e5                                      strb r3, [r0]
006e25b4  04 30 9d e5                                      ldr r3, [sp, #4]
006e25b8  0a 20 a0 e3                                      mov r2, #0xa
006e25bc  04 20 83 e5                                      str r2, [r3, #4]
006e25c0  04 30 9d e5                                      ldr r3, [sp, #4]
006e25c4  08 50 83 e5                                      str r5, [r3, #8]
006e25c8  08 10 94 e5                                      ldr r1, [r4, #8]
006e25cc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006e25d0  03 00 51 e1                                      cmp r1, r3
006e25d4  18 00 00 0a                                      beq #0x6e263c
006e25d8  04 30 9d e5                                      ldr r3, [sp, #4]
006e25dc  00 30 81 e5                                      str r3, [r1]
006e25e0  08 30 94 e5                                      ldr r3, [r4, #8]
006e25e4  04 30 83 e2                                      add r3, r3, #4
006e25e8  08 30 84 e5                                      str r3, [r4, #8]
006e25ec  f4 60 b5 e5                                      ldr r6, [r5, #0xf4]!
006e25f0  05 00 00 ea                                      b #0x6e260c
006e25f4  00 00 56 e3                                      cmp r6, #0
006e25f8  06 10 a0 01                                      moveq r1, r6
006e25fc  04 10 46 12                                      subne r1, r6, #4
006e2600  04 00 a0 e1                                      mov r0, r4
006e2604  b7 ff ff eb                                      bl #0x6e24e8
006e2608  00 60 96 e5                                      ldr r6, [r6]
006e260c  06 00 55 e1                                      cmp r5, r6
006e2610  f7 ff ff 1a                                      bne #0x6e25f4
006e2614  08 d0 8d e2                                      add sp, sp, #8
006e2618  70 80 bd e8                                      pop {r4, r5, r6, pc}
006e261c  06 00 a0 e1                                      mov r0, r6
006e2620  04 20 8d e2                                      add r2, sp, #4
006e2624  82 ff ff eb                                      bl #0x6e2434
006e2628  c7 ff ff ea                                      b #0x6e254c
006e262c  06 00 a0 e1                                      mov r0, r6
006e2630  04 20 8d e2                                      add r2, sp, #4
006e2634  7e ff ff eb                                      bl #0x6e2434
006e2638  d7 ff ff ea                                      b #0x6e259c
006e263c  06 00 a0 e1                                      mov r0, r6
006e2640  04 20 8d e2                                      add r2, sp, #4
006e2644  7a ff ff eb                                      bl #0x6e2434
006e2648  e7 ff ff ea                                      b #0x6e25ec

; FUNCTION 0x006e264c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplateC1EPNS0_10CSceneNodeE
; demangled: glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(glitch::collada::CSceneNode*)
; decoder-mode: arm
006e264c  34 30 9f e5                                      ldr r3, [pc, #0x34]
006e2650  34 c0 9f e5                                      ldr ip, [pc, #0x34]
006e2654  00 20 a0 e3                                      mov r2, #0
006e2658  03 30 8f e0                                      add r3, pc, r3
006e265c  0c c0 93 e7                                      ldr ip, [r3, ip]
006e2660  10 40 2d e9                                      push {r4, lr}
006e2664  08 c0 8c e2                                      add ip, ip, #8
006e2668  00 40 a0 e1                                      mov r4, r0
006e266c  0c 20 80 e5                                      str r2, [r0, #0xc]
006e2670  00 c0 80 e5                                      str ip, [r0]
006e2674  04 20 80 e5                                      str r2, [r0, #4]
006e2678  08 20 80 e5                                      str r2, [r0, #8]
006e267c  99 ff ff eb                                      bl #0x6e24e8
006e2680  04 00 a0 e1                                      mov r0, r4
006e2684  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006e2688  38 24 2b 00 7c 15 00 00                          .byte 0x38, 0x24, 0x2b, 0x00, 0x7c, 0x15, 0x00, 0x00

; FUNCTION 0x006e2690, declared_size=68, range_size=68, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplateC2EPNS0_10CSceneNodeE
; demangled: glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(glitch::collada::CSceneNode*)
; decoder-mode: arm
006e2690  34 30 9f e5                                      ldr r3, [pc, #0x34]
006e2694  34 c0 9f e5                                      ldr ip, [pc, #0x34]
006e2698  00 20 a0 e3                                      mov r2, #0
006e269c  03 30 8f e0                                      add r3, pc, r3
006e26a0  0c c0 93 e7                                      ldr ip, [r3, ip]
006e26a4  10 40 2d e9                                      push {r4, lr}
006e26a8  08 c0 8c e2                                      add ip, ip, #8
006e26ac  00 40 a0 e1                                      mov r4, r0
006e26b0  0c 20 80 e5                                      str r2, [r0, #0xc]
006e26b4  00 c0 80 e5                                      str ip, [r0]
006e26b8  04 20 80 e5                                      str r2, [r0, #4]
006e26bc  08 20 80 e5                                      str r2, [r0, #8]
006e26c0  88 ff ff eb                                      bl #0x6e24e8
006e26c4  04 00 a0 e1                                      mov r0, r4
006e26c8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
006e26cc  f4 23 2b 00 7c 15 00 00                          .byte 0xf4, 0x23, 0x2b, 0x00, 0x7c, 0x15, 0x00, 0x00

; FUNCTION 0x006e26d4, declared_size=348, range_size=348, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplate24addTransformationTargetsERNS0_5SNodeE
; demangled: glitch::collada::CAnimationSetTransformationTemplate::addTransformationTargets(glitch::collada::SNode&)
; decoder-mode: arm
006e26d4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006e26d8  00 40 a0 e1                                      mov r4, r0
006e26dc  0c d0 4d e2                                      sub sp, sp, #0xc
006e26e0  01 50 a0 e1                                      mov r5, r1
006e26e4  10 00 a0 e3                                      mov r0, #0x10
006e26e8  00 10 a0 e3                                      mov r1, #0
006e26ec  ae 46 f9 eb                                      bl #0x5341ac
006e26f0  00 30 a0 e3                                      mov r3, #0
006e26f4  04 00 8d e5                                      str r0, [sp, #4]
006e26f8  00 30 c0 e5                                      strb r3, [r0]
006e26fc  04 30 9d e5                                      ldr r3, [sp, #4]
006e2700  01 20 a0 e3                                      mov r2, #1
006e2704  04 60 84 e2                                      add r6, r4, #4
006e2708  04 20 83 e5                                      str r2, [r3, #4]
006e270c  08 10 94 e5                                      ldr r1, [r4, #8]
006e2710  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006e2714  03 00 51 e1                                      cmp r1, r3
006e2718  38 00 00 0a                                      beq #0x6e2800
006e271c  04 30 9d e5                                      ldr r3, [sp, #4]
006e2720  00 30 81 e5                                      str r3, [r1]
006e2724  08 30 94 e5                                      ldr r3, [r4, #8]
006e2728  04 30 83 e2                                      add r3, r3, #4
006e272c  08 30 84 e5                                      str r3, [r4, #8]
006e2730  00 10 a0 e3                                      mov r1, #0
006e2734  10 00 a0 e3                                      mov r0, #0x10
006e2738  9b 46 f9 eb                                      bl #0x5341ac
006e273c  00 30 a0 e3                                      mov r3, #0
006e2740  04 00 8d e5                                      str r0, [sp, #4]
006e2744  00 30 c0 e5                                      strb r3, [r0]
006e2748  04 30 9d e5                                      ldr r3, [sp, #4]
006e274c  05 20 a0 e3                                      mov r2, #5
006e2750  04 20 83 e5                                      str r2, [r3, #4]
006e2754  08 10 94 e5                                      ldr r1, [r4, #8]
006e2758  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006e275c  03 00 51 e1                                      cmp r1, r3
006e2760  2a 00 00 0a                                      beq #0x6e2810
006e2764  04 30 9d e5                                      ldr r3, [sp, #4]
006e2768  00 30 81 e5                                      str r3, [r1]
006e276c  08 30 94 e5                                      ldr r3, [r4, #8]
006e2770  04 30 83 e2                                      add r3, r3, #4
006e2774  08 30 84 e5                                      str r3, [r4, #8]
006e2778  00 10 a0 e3                                      mov r1, #0
006e277c  10 00 a0 e3                                      mov r0, #0x10
006e2780  89 46 f9 eb                                      bl #0x5341ac
006e2784  00 30 a0 e3                                      mov r3, #0
006e2788  04 00 8d e5                                      str r0, [sp, #4]
006e278c  00 30 c0 e5                                      strb r3, [r0]
006e2790  04 30 9d e5                                      ldr r3, [sp, #4]
006e2794  0a 20 a0 e3                                      mov r2, #0xa
006e2798  04 20 83 e5                                      str r2, [r3, #4]
006e279c  08 10 94 e5                                      ldr r1, [r4, #8]
006e27a0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
006e27a4  03 00 51 e1                                      cmp r1, r3
006e27a8  1c 00 00 0a                                      beq #0x6e2820
006e27ac  04 30 9d e5                                      ldr r3, [sp, #4]
006e27b0  00 30 81 e5                                      str r3, [r1]
006e27b4  08 30 94 e5                                      ldr r3, [r4, #8]
006e27b8  04 30 83 e2                                      add r3, r3, #4
006e27bc  08 30 84 e5                                      str r3, [r4, #8]
006e27c0  38 30 95 e5                                      ldr r3, [r5, #0x38]
006e27c4  00 00 53 e3                                      cmp r3, #0
006e27c8  00 60 a0 c3                                      movgt r6, #0
006e27cc  06 70 a0 c1                                      movgt r7, r6
006e27d0  08 00 00 da                                      ble #0x6e27f8
006e27d4  3c 10 95 e5                                      ldr r1, [r5, #0x3c]
006e27d8  04 00 a0 e1                                      mov r0, r4
006e27dc  01 70 87 e2                                      add r7, r7, #1
006e27e0  06 10 81 e0                                      add r1, r1, r6
006e27e4  ba ff ff eb                                      bl #0x6e26d4
006e27e8  38 30 95 e5                                      ldr r3, [r5, #0x38]
006e27ec  50 60 86 e2                                      add r6, r6, #0x50
006e27f0  03 00 57 e1                                      cmp r7, r3
006e27f4  f6 ff ff ba                                      blt #0x6e27d4
006e27f8  0c d0 8d e2                                      add sp, sp, #0xc
006e27fc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006e2800  06 00 a0 e1                                      mov r0, r6
006e2804  04 20 8d e2                                      add r2, sp, #4
006e2808  09 ff ff eb                                      bl #0x6e2434
006e280c  c7 ff ff ea                                      b #0x6e2730
006e2810  06 00 a0 e1                                      mov r0, r6
006e2814  04 20 8d e2                                      add r2, sp, #4
006e2818  05 ff ff eb                                      bl #0x6e2434
006e281c  d5 ff ff ea                                      b #0x6e2778
006e2820  06 00 a0 e1                                      mov r0, r6
006e2824  04 20 8d e2                                      add r2, sp, #4
006e2828  01 ff ff eb                                      bl #0x6e2434
006e282c  e3 ff ff ea                                      b #0x6e27c0

; FUNCTION 0x006e2830, declared_size=192, range_size=192, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplateC1EPNS0_16CColladaDatabaseE
; demangled: glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(glitch::collada::CColladaDatabase*)
; decoder-mode: arm
006e2830  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
006e2834  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
006e2838  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e283c  03 30 8f e0                                      add r3, pc, r3
006e2840  02 20 93 e7                                      ldr r2, [r3, r2]
006e2844  00 80 a0 e3                                      mov r8, #0
006e2848  04 80 80 e5                                      str r8, [r0, #4]
006e284c  08 20 82 e2                                      add r2, r2, #8
006e2850  00 20 80 e5                                      str r2, [r0]
006e2854  08 80 80 e5                                      str r8, [r0, #8]
006e2858  0c 80 80 e5                                      str r8, [r0, #0xc]
006e285c  00 20 91 e5                                      ldr r2, [r1]
006e2860  00 70 a0 e1                                      mov r7, r0
006e2864  01 a0 a0 e1                                      mov sl, r1
006e2868  24 30 92 e5                                      ldr r3, [r2, #0x24]
006e286c  20 30 93 e5                                      ldr r3, [r3, #0x20]
006e2870  98 30 93 e5                                      ldr r3, [r3, #0x98]
006e2874  08 00 53 e1                                      cmp r3, r8
006e2878  18 00 00 da                                      ble #0x6e28e0
006e287c  0a 00 a0 e1                                      mov r0, sl
006e2880  08 10 a0 e1                                      mov r1, r8
006e2884  30 af fc eb                                      bl #0x60e54c
006e2888  08 30 90 e5                                      ldr r3, [r0, #8]
006e288c  00 60 a0 e1                                      mov r6, r0
006e2890  00 00 53 e3                                      cmp r3, #0
006e2894  0a 00 00 da                                      ble #0x6e28c4
006e2898  00 40 a0 e3                                      mov r4, #0
006e289c  04 50 a0 e1                                      mov r5, r4
006e28a0  0c 10 96 e5                                      ldr r1, [r6, #0xc]
006e28a4  07 00 a0 e1                                      mov r0, r7
006e28a8  01 50 85 e2                                      add r5, r5, #1
006e28ac  04 10 81 e0                                      add r1, r1, r4
006e28b0  87 ff ff eb                                      bl #0x6e26d4
006e28b4  08 30 96 e5                                      ldr r3, [r6, #8]
006e28b8  50 40 84 e2                                      add r4, r4, #0x50
006e28bc  03 00 55 e1                                      cmp r5, r3
006e28c0  f6 ff ff ba                                      blt #0x6e28a0
006e28c4  00 30 9a e5                                      ldr r3, [sl]
006e28c8  01 80 88 e2                                      add r8, r8, #1
006e28cc  24 30 93 e5                                      ldr r3, [r3, #0x24]
006e28d0  20 30 93 e5                                      ldr r3, [r3, #0x20]
006e28d4  98 30 93 e5                                      ldr r3, [r3, #0x98]
006e28d8  03 00 58 e1                                      cmp r8, r3
006e28dc  e6 ff ff ba                                      blt #0x6e287c
006e28e0  07 00 a0 e1                                      mov r0, r7
006e28e4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006e28e8  54 22 2b 00 7c 15 00 00                          .byte 0x54, 0x22, 0x2b, 0x00, 0x7c, 0x15, 0x00, 0x00

; FUNCTION 0x006e28f0, declared_size=192, range_size=192, mode=arm
; class-group: glitch::collada::CAnimationSetTransformationTemplate
; alias: _ZN6glitch7collada35CAnimationSetTransformationTemplateC2EPNS0_16CColladaDatabaseE
; demangled: glitch::collada::CAnimationSetTransformationTemplate::CAnimationSetTransformationTemplate(glitch::collada::CColladaDatabase*)
; decoder-mode: arm
006e28f0  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
006e28f4  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
006e28f8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006e28fc  03 30 8f e0                                      add r3, pc, r3
006e2900  02 20 93 e7                                      ldr r2, [r3, r2]
006e2904  00 80 a0 e3                                      mov r8, #0
006e2908  04 80 80 e5                                      str r8, [r0, #4]
006e290c  08 20 82 e2                                      add r2, r2, #8
006e2910  00 20 80 e5                                      str r2, [r0]
006e2914  08 80 80 e5                                      str r8, [r0, #8]
006e2918  0c 80 80 e5                                      str r8, [r0, #0xc]
006e291c  00 20 91 e5                                      ldr r2, [r1]
006e2920  00 70 a0 e1                                      mov r7, r0
006e2924  01 a0 a0 e1                                      mov sl, r1
006e2928  24 30 92 e5                                      ldr r3, [r2, #0x24]
006e292c  20 30 93 e5                                      ldr r3, [r3, #0x20]
006e2930  98 30 93 e5                                      ldr r3, [r3, #0x98]
006e2934  08 00 53 e1                                      cmp r3, r8
006e2938  18 00 00 da                                      ble #0x6e29a0
006e293c  0a 00 a0 e1                                      mov r0, sl
006e2940  08 10 a0 e1                                      mov r1, r8
006e2944  00 af fc eb                                      bl #0x60e54c
006e2948  08 30 90 e5                                      ldr r3, [r0, #8]
006e294c  00 60 a0 e1                                      mov r6, r0
006e2950  00 00 53 e3                                      cmp r3, #0
006e2954  0a 00 00 da                                      ble #0x6e2984
006e2958  00 40 a0 e3                                      mov r4, #0
006e295c  04 50 a0 e1                                      mov r5, r4
006e2960  0c 10 96 e5                                      ldr r1, [r6, #0xc]
006e2964  07 00 a0 e1                                      mov r0, r7
006e2968  01 50 85 e2                                      add r5, r5, #1
006e296c  04 10 81 e0                                      add r1, r1, r4
006e2970  57 ff ff eb                                      bl #0x6e26d4
006e2974  08 30 96 e5                                      ldr r3, [r6, #8]
006e2978  50 40 84 e2                                      add r4, r4, #0x50
006e297c  03 00 55 e1                                      cmp r5, r3
006e2980  f6 ff ff ba                                      blt #0x6e2960
006e2984  00 30 9a e5                                      ldr r3, [sl]
006e2988  01 80 88 e2                                      add r8, r8, #1
006e298c  24 30 93 e5                                      ldr r3, [r3, #0x24]
006e2990  20 30 93 e5                                      ldr r3, [r3, #0x20]
006e2994  98 30 93 e5                                      ldr r3, [r3, #0x98]
006e2998  03 00 58 e1                                      cmp r8, r3
006e299c  e6 ff ff ba                                      blt #0x6e293c
006e29a0  07 00 a0 e1                                      mov r0, r7
006e29a4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
006e29a8  94 21 2b 00 7c 15 00 00                          .byte 0x94, 0x21, 0x2b, 0x00, 0x7c, 0x15, 0x00, 0x00
