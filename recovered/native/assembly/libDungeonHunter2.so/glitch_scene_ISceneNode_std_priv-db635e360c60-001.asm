; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003302bc, declared_size=304, range_size=304, mode=arm
; class-group: glitch::scene::ISceneNode** std::priv
; alias: _ZNSt4priv6__findIPPN6glitch5scene10ISceneNodeES4_EET_S6_S6_RKT0_RKSt26random_access_iterator_tag
; demangled: glitch::scene::ISceneNode** std::priv::__find<glitch::scene::ISceneNode**, glitch::scene::ISceneNode*>(glitch::scene::ISceneNode**, glitch::scene::ISceneNode**, glitch::scene::ISceneNode* const&, std::random_access_iterator_tag const&)
; decoder-mode: arm
003302bc  00 30 a0 e1                                      mov r3, r0
003302c0  01 00 60 e0                                      rsb r0, r0, r1
003302c4  40 c2 a0 e1                                      asr ip, r0, #4
003302c8  00 00 5c e3                                      cmp ip, #0
003302cc  30 00 2d e9                                      push {r4, r5}
003302d0  40 41 a0 e1                                      asr r4, r0, #2
003302d4  03 00 a0 d1                                      movle r0, r3
003302d8  21 00 00 da                                      ble #0x330364
003302dc  00 00 93 e5                                      ldr r0, [r3]
003302e0  00 40 92 e5                                      ldr r4, [r2]
003302e4  04 00 50 e1                                      cmp r0, r4
003302e8  03 00 a0 01                                      moveq r0, r3
003302ec  23 00 00 0a                                      beq #0x330380
003302f0  04 50 93 e5                                      ldr r5, [r3, #4]
003302f4  04 00 83 e2                                      add r0, r3, #4
003302f8  05 00 54 e1                                      cmp r4, r5
003302fc  1f 00 00 0a                                      beq #0x330380
00330300  04 50 b0 e5                                      ldr r5, [r0, #4]!
00330304  05 00 54 e1                                      cmp r4, r5
00330308  1c 00 00 0a                                      beq #0x330380
0033030c  04 50 b0 e5                                      ldr r5, [r0, #4]!
00330310  05 00 54 e1                                      cmp r4, r5
00330314  0d 00 00 1a                                      bne #0x330350
00330318  18 00 00 ea                                      b #0x330380
0033031c  10 00 93 e5                                      ldr r0, [r3, #0x10]
00330320  04 00 50 e1                                      cmp r0, r4
00330324  22 00 00 0a                                      beq #0x3303b4
00330328  14 00 93 e5                                      ldr r0, [r3, #0x14]
0033032c  04 00 50 e1                                      cmp r0, r4
00330330  21 00 00 0a                                      beq #0x3303bc
00330334  18 00 93 e5                                      ldr r0, [r3, #0x18]
00330338  00 00 54 e1                                      cmp r4, r0
0033033c  20 00 00 0a                                      beq #0x3303c4
00330340  10 30 83 e2                                      add r3, r3, #0x10
00330344  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00330348  00 00 54 e1                                      cmp r4, r0
0033034c  1e 00 00 0a                                      beq #0x3303cc
00330350  01 c0 5c e2                                      subs ip, ip, #1
00330354  f0 ff ff 1a                                      bne #0x33031c
00330358  10 00 83 e2                                      add r0, r3, #0x10
0033035c  01 40 60 e0                                      rsb r4, r0, r1
00330360  44 41 a0 e1                                      asr r4, r4, #2
00330364  02 00 54 e3                                      cmp r4, #2
00330368  06 00 00 0a                                      beq #0x330388
0033036c  03 00 54 e3                                      cmp r4, #3
00330370  17 00 00 0a                                      beq #0x3303d4
00330374  01 00 54 e3                                      cmp r4, #1
00330378  0b 00 00 0a                                      beq #0x3303ac
0033037c  01 00 a0 e1                                      mov r0, r1
00330380  30 00 bd e8                                      pop {r4, r5}
00330384  1e ff 2f e1                                      bx lr
00330388  00 30 92 e5                                      ldr r3, [r2]
0033038c  00 20 90 e5                                      ldr r2, [r0]
00330390  03 00 52 e1                                      cmp r2, r3
00330394  f9 ff ff 0a                                      beq #0x330380
00330398  04 00 80 e2                                      add r0, r0, #4
0033039c  00 20 90 e5                                      ldr r2, [r0]
003303a0  03 00 52 e1                                      cmp r2, r3
003303a4  01 00 a0 11                                      movne r0, r1
003303a8  f4 ff ff ea                                      b #0x330380
003303ac  00 30 92 e5                                      ldr r3, [r2]
003303b0  f9 ff ff ea                                      b #0x33039c
003303b4  10 00 83 e2                                      add r0, r3, #0x10
003303b8  f0 ff ff ea                                      b #0x330380
003303bc  14 00 83 e2                                      add r0, r3, #0x14
003303c0  ee ff ff ea                                      b #0x330380
003303c4  18 00 83 e2                                      add r0, r3, #0x18
003303c8  ec ff ff ea                                      b #0x330380
003303cc  0c 00 83 e2                                      add r0, r3, #0xc
003303d0  ea ff ff ea                                      b #0x330380
003303d4  00 30 92 e5                                      ldr r3, [r2]
003303d8  00 20 90 e5                                      ldr r2, [r0]
003303dc  03 00 52 e1                                      cmp r2, r3
003303e0  e6 ff ff 0a                                      beq #0x330380
003303e4  04 00 80 e2                                      add r0, r0, #4
003303e8  e7 ff ff ea                                      b #0x33038c
