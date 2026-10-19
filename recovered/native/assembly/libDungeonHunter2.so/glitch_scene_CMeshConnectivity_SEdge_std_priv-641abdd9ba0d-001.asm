; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00703240, declared_size=268, range_size=268, mode=arm
; class-group: glitch::scene::CMeshConnectivity::SEdge* std::priv
; alias: _ZNSt4priv6__findIPN6glitch5scene17CMeshConnectivity5SEdgeES4_EET_S6_S6_RKT0_RKSt26random_access_iterator_tag
; demangled: glitch::scene::CMeshConnectivity::SEdge* std::priv::__find<glitch::scene::CMeshConnectivity::SEdge*, glitch::scene::CMeshConnectivity::SEdge>(glitch::scene::CMeshConnectivity::SEdge*, glitch::scene::CMeshConnectivity::SEdge*, glitch::scene::CMeshConnectivity::SEdge const&, std::random_access_iterator_tag const&)
; decoder-mode: arm
00703240  01 c0 60 e0                                      rsb ip, r0, r1
00703244  4c 33 a0 e1                                      asr r3, ip, #6
00703248  00 00 53 e3                                      cmp r3, #0
0070324c  30 00 2d e9                                      push {r4, r5}
00703250  4c c2 a0 e1                                      asr ip, ip, #4
00703254  22 00 00 da                                      ble #0x7032e4
00703258  00 40 92 e5                                      ldr r4, [r2]
0070325c  00 c0 90 e5                                      ldr ip, [r0]
00703260  04 00 5c e1                                      cmp ip, r4
00703264  25 00 00 0a                                      beq #0x703300
00703268  10 c0 b0 e5                                      ldr ip, [r0, #0x10]!
0070326c  0c 00 54 e1                                      cmp r4, ip
00703270  22 00 00 0a                                      beq #0x703300
00703274  10 c0 b0 e5                                      ldr ip, [r0, #0x10]!
00703278  0c 00 54 e1                                      cmp r4, ip
0070327c  1f 00 00 0a                                      beq #0x703300
00703280  10 c0 b0 e5                                      ldr ip, [r0, #0x10]!
00703284  0c 00 54 e1                                      cmp r4, ip
00703288  0f 00 00 1a                                      bne #0x7032cc
0070328c  1b 00 00 ea                                      b #0x703300
00703290  00 50 90 e5                                      ldr r5, [r0]
00703294  04 00 55 e1                                      cmp r5, r4
00703298  18 00 00 0a                                      beq #0x703300
0070329c  20 50 9c e5                                      ldr r5, [ip, #0x20]
007032a0  20 00 8c e2                                      add r0, ip, #0x20
007032a4  04 00 55 e1                                      cmp r5, r4
007032a8  14 00 00 0a                                      beq #0x703300
007032ac  30 50 9c e5                                      ldr r5, [ip, #0x30]
007032b0  30 00 8c e2                                      add r0, ip, #0x30
007032b4  04 00 55 e1                                      cmp r5, r4
007032b8  10 00 00 0a                                      beq #0x703300
007032bc  40 50 9c e5                                      ldr r5, [ip, #0x40]
007032c0  40 00 8c e2                                      add r0, ip, #0x40
007032c4  05 00 54 e1                                      cmp r4, r5
007032c8  0c 00 00 0a                                      beq #0x703300
007032cc  01 30 53 e2                                      subs r3, r3, #1
007032d0  00 c0 a0 e1                                      mov ip, r0
007032d4  10 00 80 e2                                      add r0, r0, #0x10
007032d8  ec ff ff 1a                                      bne #0x703290
007032dc  01 c0 60 e0                                      rsb ip, r0, r1
007032e0  4c c2 a0 e1                                      asr ip, ip, #4
007032e4  02 00 5c e3                                      cmp ip, #2
007032e8  06 00 00 0a                                      beq #0x703308
007032ec  03 00 5c e3                                      cmp ip, #3
007032f0  0f 00 00 0a                                      beq #0x703334
007032f4  01 00 5c e3                                      cmp ip, #1
007032f8  0b 00 00 0a                                      beq #0x70332c
007032fc  01 00 a0 e1                                      mov r0, r1
00703300  30 00 bd e8                                      pop {r4, r5}
00703304  1e ff 2f e1                                      bx lr
00703308  00 30 92 e5                                      ldr r3, [r2]
0070330c  00 20 90 e5                                      ldr r2, [r0]
00703310  03 00 52 e1                                      cmp r2, r3
00703314  f9 ff ff 0a                                      beq #0x703300
00703318  10 00 80 e2                                      add r0, r0, #0x10
0070331c  00 20 90 e5                                      ldr r2, [r0]
00703320  03 00 52 e1                                      cmp r2, r3
00703324  01 00 a0 11                                      movne r0, r1
00703328  f4 ff ff ea                                      b #0x703300
0070332c  00 30 92 e5                                      ldr r3, [r2]
00703330  f9 ff ff ea                                      b #0x70331c
00703334  00 30 92 e5                                      ldr r3, [r2]
00703338  00 20 90 e5                                      ldr r2, [r0]
0070333c  03 00 52 e1                                      cmp r2, r3
00703340  ee ff ff 0a                                      beq #0x703300
00703344  10 00 80 e2                                      add r0, r0, #0x10
00703348  ef ff ff ea                                      b #0x70330c

; FUNCTION 0x00703508, declared_size=84, range_size=84, mode=arm
; class-group: glitch::scene::CMeshConnectivity::SEdge* std::priv
; alias: _ZNSt4priv6__copyIPN6glitch5scene17CMeshConnectivity5SEdgeES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::scene::CMeshConnectivity::SEdge* std::priv::__copy<glitch::scene::CMeshConnectivity::SEdge*, glitch::scene::CMeshConnectivity::SEdge*, int>(glitch::scene::CMeshConnectivity::SEdge*, glitch::scene::CMeshConnectivity::SEdge*, glitch::scene::CMeshConnectivity::SEdge*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00703508  01 10 60 e0                                      rsb r1, r0, r1
0070350c  f0 01 2d e9                                      push {r4, r5, r6, r7, r8}
00703510  41 82 a0 e1                                      asr r8, r1, #4
00703514  00 00 58 e3                                      cmp r8, #0
00703518  00 70 a0 e1                                      mov r7, r0
0070351c  02 60 a0 e1                                      mov r6, r2
00703520  0a 00 00 da                                      ble #0x703550
00703524  08 50 a0 e1                                      mov r5, r8
00703528  00 40 a0 e3                                      mov r4, #0
0070352c  04 30 87 e0                                      add r3, r7, r4
00703530  04 c0 86 e0                                      add ip, r6, r4
00703534  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
00703538  07 00 ac e8                                      stm ip!, {r0, r1, r2}
0070353c  01 50 55 e2                                      subs r5, r5, #1
00703540  b0 30 cc e1                                      strh r3, [ip]
00703544  10 40 84 e2                                      add r4, r4, #0x10
00703548  f7 ff ff 1a                                      bne #0x70352c
0070354c  08 62 86 e0                                      add r6, r6, r8, lsl #4
00703550  06 00 a0 e1                                      mov r0, r6
00703554  f0 01 bd e8                                      pop {r4, r5, r6, r7, r8}
00703558  1e ff 2f e1                                      bx lr
